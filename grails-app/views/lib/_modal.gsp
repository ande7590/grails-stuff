<%-- Set first focused item  --%>
<g:if test="${ formAutofocus }">
	<r:script disposition="defer">
	$("#${modalId}").on('shown.bs.modal', function(e) {
	  var $this = $(this)
	  setTimeout(function() {
	    $this.find("input, select").first().focus();
	  }, 0);
	})
	</r:script>
</g:if>
<%-- Return focus to element that opened modal --%>
<r:script disposition="defer">
$('#${modalId}').on('show.bs.modal', function (e) {
  var $invoker = $(e.relatedTarget);
  $('#${modalId}').on('hidden.bs.modal', function(e) {
    // reset focus back to whatever button opened the modal when the modal closes
    setTimeout(function() { $invoker.focus(); }, 0);
  });
});
</r:script>
<div id="${modalId}" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">${title}</h4>            
      </div>      
      <%-- Create modals are just static forms --%>
      <g:if test="${ type == 'create' }">
	      <g:formRemote name="${formName})" 
	        update="${[success: entityListId, failure: modalErrorMessageId]}" 
	        onSuccess="showAlert('${modalSuccessMessageId}'); resetEntityModal('${modalId}', '${modalErrorMessageId}');"
	        onError="hideAlert('${modalSuccessMessageId}'); resetEntityModal('${modalId}', '${modalErrorMessageId}');"
	        url="${formURL}">
	          <div class="modal-body">	      
	          	<g:render template="${formTemplate}"/>
	          </div>              
	          <div class="modal-footer">
	            <button type="submit" class="btn btn-primary">${formSubmitLabel}</button>
	            <button type="button" class="btn btn-default" data-dismiss="modal">${formCancelLabel}</button>         
	          </div>
	      </g:formRemote>
      </g:if>      
      <%--Edit modals fetch their template via AJAX --%>
      <g:if test="${ type == 'edit' }">
      	  <script>
      	  	$('#${modalId}').on('hidden.bs.modal', function (e) {

      	  	})
      	  </script>
	      <g:formRemote name="${formName})" 
		        update="${[success: entityListId, failure: modalErrorMessageId]}" 
		        onSuccess="showAlert('${modalSuccessMessageId}'); resetEntityModal('${modalId}', '${modalErrorMessageId}');"
		        onError="hideAlert('${modalSuccessMessageId}'); resetEntityModal('${modalId}', '${modalErrorMessageId}');"
		        url="${formURL}">
	      	<div class="modal-body"></div>              
	        <div class="modal-footer">
	        	<button type="submit" class="btn btn-primary">${formSubmitLabel}</button>
	          	<button type="button" class="btn btn-default" data-dismiss="modal">${formCancelLabel}</button>         
	        </div>
	 	</g:formRemote>
      </g:if>
    </div>
  </div>
</div>