package grailschool.stuff.admin

import grailschool.stuff.school.ClassDefinition
import grailschool.stuff.school.Department;

class CirriculumController extends AbstractAdminController {
	
	protected final viewDirectory = '/admin/cirriculum/'
	
	def index() {
		render(view: '.index', model: [
			classDefinitions: ClassDefinition.list(),
			departments: Department.values()])
	}
	
	def create() {
		def classDefinition = new ClassDefinition(params);
		if (classDefinition.hasErrors() || !classDefinition.validate()) {
			response.status = ERROR_RESPONSE
			render(template: viewDirectory + 'error',
				model: [classDefinition: classDefinition])
		} else {
			ClassDefinition.withTransaction {status ->
				classDefinition.save(flush: true)
			}
			renderUpdatedClassDefinitionList()
		}
	}
	
	def delete() {
		ClassDefinition.withTransaction {status ->
			ClassDefinition.get(params.id).delete(flush: true)
		}
		renderUpdatedClassDefinitionList()
	}
	
	protected renderUpdatedClassDefinitionList() {
		render(template: viewDirectory + 'list', model: [
			classDefinitions: ClassDefinition.list()])
	}
}
