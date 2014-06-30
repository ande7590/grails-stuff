<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Index</title>
      <meta name="layout" content="main" />
      <r:require module="dashboard"/>  
   </head>
   <body>
   	<div id="createEntitySuccessMessage" style="display: none;">
    	<div class="alert alert-success"><span class="glyphicon glyphicon-ok-circle"></span> <strong>Classroom Created</strong></div>
    </div>                                    
   	<h1>Facilities</h1>
   	<h4 class="invert">New Classroom</h4>
   	<div class="row filters">
  		<span class="field-hint"><span class="glyphicon glyphicon-flash"></span> action </span>   		   		
  		<div class="col-md-offset-2 col-md-2">  			
  			<button 
  				id="addEntityButton" type="submit" class="btn btn-default pull-left"
  				data-toggle="modal" data-target="#createEntityModal">
  					<span class="glyphicon glyphicon-plus"></span> Add Classroom
  			</button>
  		</div>
 	</div>
 	<h4 class="invert">Existing Classrooms</h4>
 	<div class="filters row">
 		<span class="field-hint"><span class="glyphicon glyphicon-search"></span> search </span>
   		<div class="col-md-2">
   			<label class="optional">Name:</label>
   		</div>
   		<div class="col-md-2">
   			<input name="name" disabled="disabled"/>
   		</div>
 	</div> 	
	<div id="entityList" class="results">
		<g:render template="/admin/facility/list"/>	
 	</div> 	
 	<!-- Modal Window --> 	
   	<my:entityModal
   		id="createEntityModal" 
   	    type="create"   	    
   	    entityListId = "facilitiesList"
   	    title="Create Classroom"
   	    url="[controller: 'facility', action: 'create', namespace: 'admin']"
   	    formName="createFacilities"   	    
   	    formTemplate="/admin/facility/create"/>
   </body>
</html>