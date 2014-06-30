<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Index</title>
      <meta name="layout" content="main" />
      <r:require module="dashboard"/>
   </head>
   <body>                   
   	<div id="createEntitySuccessMessage" style="display: none;">
    	<div class="alert alert-success"><span class="glyphicon glyphicon-ok-circle"></span> <strong>Teacher Saved</strong></div>
    </div>
    	<div id="editEntitySuccessMessage" style="display: none;">
    	<div class="alert alert-success"><span class="glyphicon glyphicon-ok-circle"></span> <strong>Teacher Updated</strong></div>
    </div>    
   	<h1>Teachers</h1>
   	<h4 class="invert">New Teacher</h4>
   	<div class="row filters">
  		<span class="field-hint"><span class="glyphicon glyphicon-flash"></span> action </span>   		   		
  		<div class="col-md-offset-2 col-md-2">
  			<button id="addEntityButton" type="submit" class="btn btn-default pull-left"
  				data-toggle="modal" data-target="#modalAddTeacher">
  					<span class="glyphicon glyphicon-plus"></span> Add Teacher
  			</button>
  		</div>
 	</div>
 	<h4 class="invert">Existing Teachers</h4>
 	<div class="filters row">
 		<span class="field-hint"><span class="glyphicon glyphicon-search"></span> search </span>
   		<div class="col-md-2">
   			<label class="optional">Name:</label>
   		</div>
   		<div class="col-md-2">
   			<input name="name" disabled="disabled"/>
   		</div>
   		<div class="col-md-2">
   			<label class="optional">Role:</label>
   		</div>
   		<div class="col-md-2">
   			<select disabled="disabled">
   				<option>any</option>
   				<option>tenured</option>
   				<option>special education</option>
   				<option>student</option>
   				<option>substitute</option>
   			</select>
   		</div>
 	</div> 	
 	<div id="entityList" class="results"> 
		<g:render template='/admin/teacher/list'/>
 	</div> 	 	   	
   	<!-- Modal Windows -->
   	<my:entityModal type="create"
   		id="modalAddTeacher"
   		title="Add Teacher"
   		url="[controller: 'teacher', action: 'create', namespace: 'admin']"   		
   	    formName="addTeacher"   	     
   	    formTemplate="/admin/teacher/create" />   	
   	<my:entityModal type="edit"
   		id="modalUpdateTeacher"
   		title="Update Teacher"
   		url="[controller: 'teacher', action: 'update', namespace: 'admin']"   		
   	    formName="updateTeacher"/>   	    
   </body>
</html> 