<div id="createEntityModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Add Class</h4>	        
      </div>
      <g:formRemote name="addClassroom" update="[success: 'entityList', failure: 'entityErrorList']" 
      	onSuccess="showAlert('#modalSuccess'); resetCreateEntityModal();"
      	onError="hideAlert('#modalError'); resetCreateEntityModal();"
      	url="[controller: 'cirriculum', action: 'create', namespace: 'admin']">
	      <div class="modal-body">		   		
	      		<div id="classroomErrorList"></div>
	      		<div class="row">
	      			<span class="field-hint"><span class="glyphicon glyphicon-asterisk"></span> required </span> 
	      		</div>
	      		<div class="row filters">
	      			<div class="col-md-4">
	      				<label class="required"><span class="required-decorator">*</span>  Name: </label>	
	      			</div>
	      			<div class="col-md-8">
	      				<input name="name"/>	
	      			</div>
	      		</div>
	      		<div class="row filters">
	      			<div class="col-md-4">
	      				<label class="required"><span class="required-decorator">*</span>  Department: </label>	
	      			</div>
	      			<div class="col-md-4">
	      				<g:select name="department" from="${departments}"/>	
	      			</div>
	      		</div>
	      </div>		      
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-primary">Create</button>
	        <button id="closeModalButton" type="button" class="btn btn-default" data-dismiss="modal">Close</button>	        
	      </div>
      </g:formRemote>
    </div>
  </div>
</div>