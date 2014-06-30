package grailschool.stuff

import grails.stuff.taglib.RowEvaluator
import grails.stuff.taglib.RowEvaluatorFactory;
import org.codehaus.groovy.grails.web.mapping.LinkGenerator

class GrailsSchoolTagLib {
	
	static namespace = 'my'	
	static final CONTEXT = this.class.name
	
	private def entityModalTypes = ['create', 'edit'] as Set
	private final static ROW_URL_ATTRIBUTE_RE = /^url(.+?)Value$/
	
	// autowired
	RowEvaluatorFactory rowEvaluatorFactory
	LinkGenerator grailsLinkGenerator
	
	def entityModal = { attrs, body ->
		// determine if this is a create or edit entityModal
		def type = attrs.type?.toLowerCase()
		if (!(type in entityModalTypes)) {
			throw new RuntimeException("Invalid type for entity modal, must be either create or edit, got " + type);
		}
		
		def model = [
			// required:
			title: attrs.title,
			formName: attrs.formName,
			formURL: attrs.url,
			type: type,
			entityListId: attrs.get('entityListId', 'entityList'),
			formData: attrs.get('formData', null),
			formSubmitLabel: attrs.get('formSubmitLabel', 'Save'),
			formCancelLabel: attrs.get('formCancelLabel', 'Close'),
			formAutofocus: attrs.get('formAutofocus', true),
			modalId: attrs.get('id', "${type}EntityModal"),
			modalSuccessMessageId: attrs.get('modalSuccessMessageId', "${type}EntitySuccessMessage"),
			modalErrorMessageId: attrs.get('modalErrorMessageId', "${type}EntityErrorMessage")]
		
		if (model.type == 'create') {			
			model['formTemplate'] = attrs.formTemplate			
		} else if (model.type == 'edit') {
			model['formShowURL'] = attrs.formShowURL
		}
		
		out << render(template: '/lib/modal', model: model)
	}
	
	def entityList = { attrs, body ->		
		def entityListModel = [
			entityListId: attrs.id,
			entityListClass: attrs.get("class", ""),
			entityListRows: attrs.get('rows', []),
			containerListId: attrs.get('containerId', 'entityList'),
			accessories: []]
		
		request.setAttribute(CONTEXT, entityListModel)
		try {
			body.call()
		} finally {
			request.removeAttribute(CONTEXT)
		}
		
		out << render(template: '/lib/list', model: entityListModel)			
	}
	
	def entityListField = { attrs, body ->
		def entityListModel = request.getAttribute(CONTEXT)
		if (!entityListModel.fields) entityListModel.fields = []
	
		RowEvaluator evaluator = rowEvaluatorFactory.getRowEvaluator(attrs.value)
		def evaluatorFunc = { row ->
			evaluator.evaluateRow(row)
		}
		
		def fieldModel = [
			label: attrs.label,
			rowEvaluator: evaluatorFunc]
		
		entityListModel.fields << fieldModel
	}
	
	def entityListAccessory = { attrs, body ->
		def entityListModel = request.getAttribute(CONTEXT)
		if (!entityListModel.accessories) entityListModel.accessories = []
		
		def accessoryModel = [
			type: attrs.type,
			label: attrs.get('label', attrs.type)]
		
		if (accessoryModel.type == 'delete') {
			accessoryModel['update'] = entityListModel.containerListId
		} else if (accessoryModel.type == 'edit') {
			accessoryModel['update'] = attrs.modalId + ' .modal-body'
			entityListModel['editModalId'] = attrs.modalId
		}

		// list accessories can be created with URLs that are dependent
		// on a value for each row.  In a standard URL parameter map (arguments to createLink),
		// any property on the accessory tag that is of the form "url(*)Value", E.g., "urlIdValue",
		// can be used to create a row specific "id" value or any other valid url map parameter. 
		
		// get the non-dynamic URL properties
		def urlParams = attrs.get('url', [:])
		
		if (urlParams.size() > 0) {
			def urlPropertyEvaluators = [:]			

			// find dynamic URL properties of the form "url(*)Value"
			attrs.each { k, v ->
				def urlPropertyMatch = (k =~ ROW_URL_ATTRIBUTE_RE)
				if (urlPropertyMatch) {
					def propertyName = toCamelCase(urlPropertyMatch[0][1])
					// parse the URL value from the row using a evaluator
					urlPropertyEvaluators[propertyName] = 
						rowEvaluatorFactory.getRowEvaluator(v)
				}
			}						
						
			if (urlPropertyEvaluators.size() > 0) {
				// construct a function that will return a dynamic link for each row
				accessoryModel['urlEvaluator'] = { row ->
					def rowUrlParams = urlParams.clone()
					urlPropertyEvaluators.each { k, rowEvaluator ->
						// call property evaluator on each row
						rowUrlParams[k] = rowEvaluator.evaluateRow(row)
					}
					// return map
					return rowUrlParams
				}
			} else {
				// just use the map since nothing is dynamic
				accessoryModel['urlParams'] = urlParams
			}			
		}
		
		entityListModel.accessories << accessoryModel
	}
	
	private static String toCamelCase(def pascalCaseString) {
		return pascalCaseString.size() == 0 ? ""
			: pascalCaseString.size() == 1 ? pascalCaseString[0].toLowerCase()
				: pascalCaseString[0].toLowerCase() + pascalCaseString[1..pascalCaseString.size() - 1] 
	}
}
