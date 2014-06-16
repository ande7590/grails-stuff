<div id="createEntityModal" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
   <div class="modal-content">
     <div class="modal-header">
       <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
       <h4 class="modal-title" id="myModalLabel">Create Classroom</h4>	        
     </div>
     <g:formRemote name="addClassroom" update="[success: 'entityList', failure: 'entityErrorList']" 
     	onSuccess="showAlert('#modalSuccess'); resetCreateEntityModal();"
     	onError="hideAlert('#modalError'); resetcreateEntityModal();"
     	url="[controller: 'facilities', action: 'create', namespace: 'admin']">
      <div class="modal-body">		   		
      		<div id="entityErrorList"></div>
      		<div class="row">
      			<span class="field-hint"><span class="glyphicon glyphicon-asterisk"></span> required </span> 
      		</div>
      		<div class="row filters">
      			<div class="col-md-4">
      				<label class="required"><span class="required-decorator">*</span>  Room number: </label>	
      			</div>
      			<div class="col-md-4">
      				<input placeholder="A-000" name="roomNumber" maxlength="5" data-field-type="room-number"/>	
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