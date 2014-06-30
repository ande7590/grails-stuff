<!DOCTYPE html>
<html lang="en">
   <head>
      <title></title>
      <meta name="layout" content="main" />
      <r:require module="dashboard"/>
   </head>
   <body> 
   		<div class="alert alert-warning" role="alert"><strong>This is just a mockup.</strong> But it will be working soon!</div>  		
   		<g:if test="${actionName == 'enroll'}">
   			<h1>Enroll Student</h1>                
   		</g:if>
   		<h4 class="invert">New Student Information</h4>	   		
   		<div class="row filters">
   			<span class="field-hint"><span class="glyphicon glyphicon-asterisk"></span> required </span>
   			<div class="col-md-2">
   			<label class="required"><span class="required-decorator">*</span> Name:</label>
   		</div>
   		<div class="col-md-2">
   			<input name="name"/>
   		</div>   
   		<div class="col-md-2">
   			<label class="required"><span class="required-decorator">*</span> Birthday:</label>
   		</div>
   		<div class="col-md-2">
   			<input name="birthdate"/>
   		</div>		
   		<div class="col-md-2">
   			<label class="required"><span class="required-decorator">*</span> Program:</label>
   		</div>
   		<div class="col-md-2">
   			<select>
   				<option>any</option>
   				<option>none</option>
   				<option>gifted</option>
   				<option>special needs</option>
   			</select>
   		</div>   		   		
   		</div>
   		<h4 class="invert">New Class Enrollment</h4> 			
   		<div class="row filters">
	   		<span class="field-hint"><span class="glyphicon glyphicon-flash"></span> action </span>   		   		
	   		<div class="col-md-offset-2 col-md-2">
	   			<g:form url="[action:'enroll', controller:'student', namespace:'shared']">
	   				<button type="submit" class="btn btn-default pull-left"><span class="glyphicon glyphicon-plus"></span> Add enrollment</button>
	   			</g:form>   
	   		</div>
   		</div>
   		<h4 class="invert">Existing Class Enrollments</h4>
   		<div class="results">   			   		
   			<table class="table table-condensed">
	   			<thead>
	   				<tr>  		
	   					<th>Class Name</th>
	   					<th>Department</th>
	   					<th>Grade Year</th>   					
	   					<th>Teacher</th>
	   					<th style="width:100px;"></th> 			
	   				</tr>
	   			</thead>
	   			<tbody>
	   				<tr >   	   							
	   					<td>The Earth And Ocean</td>
	   					<td>Science</td>
	   					<td>5th grade</td>
	   					<td>
	   						Mrs. Goodyear
	   					</td>
	   					<td>
	   						<a class="labeled-action" href="#">
	   							<span class="glyphicon glyphicon-remove"></span> <span class="subtle-hint">remove</span>
	   						</a>
	   					</td>   					
	   				</tr>
	   			</tbody>
	   		</table>
   		</div>
   		<div class="row filters">
   			<div class="col-md-offset-8 col-md-2">
   				<button class="btn btn-default"><span class="glyphicon glyphicon-remove"></span> Cancel</button>   				
   			</div>
   			<div class="col-md-2">
   				<button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Save</button>   				   				
   			</div>   			   			
   		</div>
   		
   		<div class="modal fade">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		        <h4 class="modal-title">Find Classroom</h4>
		      </div>
		      <div class="modal-body">
		        <p>One fine body&hellip;</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>		        		        
		      </div>
		    </div>
		  </div>
		</div>
   </body>
</html>