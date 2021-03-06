<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Index</title>
      <meta name="layout" content="main" />
      <r:require module="dashboard"/>
   </head>
   <body>                   
   	<div id="createEntitySuccessMessage" style="display: none;">
    	<div class="alert alert-success"><span class="glyphicon glyphicon-ok-circle"></span> <strong>Cirriculum Saved</strong></div>
    </div>
    	<div id="editEntitySuccessMessage" style="display: none;">
    	<div class="alert alert-success"><span class="glyphicon glyphicon-ok-circle"></span> <strong>Cirriculum Updated</strong></div>
    </div>    
   	<h1>Cirriculum</h1>
   	<h4 class="invert">New Cirriculum</h4>
   	<div class="row filters">
  		<span class="field-hint"><span class="glyphicon glyphicon-flash"></span> action </span>   		   		
  		<div class="col-md-offset-2 col-md-2">
  			<button id="addEntityButton" type="submit" class="btn btn-default pull-left"
  				data-toggle="modal" data-target="#modalAddCirriculum">
  					<span class="glyphicon glyphicon-plus"></span> Add Cirriculum
  			</button>
  		</div>
 	</div>
 	<h4 class="invert">Existing Cirricula</h4>
 	<div class="filters row">
 		<span class="field-hint"><span class="glyphicon glyphicon-search"></span> search </span>
   		<div class="col-md-2">
   			<label class="optional">Name:</label>
   		</div>
   		<div class="col-md-2">
   			<input name="name" disabled="disabled"/>
   		</div>
   		<div class="col-md-2">
   			<label class="optional">Department:</label>
   		</div>
   		<div class="col-md-2">
   			<select disabled="disabled">
   				<option>any</option>
   				<option>none</option>
   				<option>gifted</option>
   				<option>special needs</option>
   			</select>
   		</div>
 	</div> 	
 	<div id="entityList" class="results"> 
		<g:render template='/admin/cirriculum/list'/>
 	</div> 	 	   	
   	<!-- Modal Windows -->
   	<my:entityModal type="create"
   		id="modalAddCirriculum"
   		title="Add Cirriculum"
   		url="[controller: 'cirriculum', action: 'create', namespace: 'admin']"   		
   	    formName="addCirriculum"   	     
   	    formTemplate="/admin/cirriculum/create" />   	
   	<my:entityModal type="edit"
   		id="modalUpdateCirriculum"
   		title="Update Cirriculum"
   		url="[controller: 'cirriculum', action: 'update', namespace: 'admin']"   		
   	    formName="updateCirriculum"/>   	    
   </body>
</html> 