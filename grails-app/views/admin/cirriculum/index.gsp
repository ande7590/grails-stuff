<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Index</title>
      <meta name="layout" content="main" />
      <r:require module="dashboard"/>
   </head>
   <body>                   
   	<div id="createEntitySuccessMessage"></div>
   	<h1>Cirriculum</h1>
   	<h4 class="invert">New Cirriculum</h4>
   	<div class="row filters">
  		<span class="field-hint"><span class="glyphicon glyphicon-flash"></span> action </span>   		   		
  		<div class="col-md-offset-2 col-md-2">  			
  			<my:entityCreateAction
  				type="button" 
  				label="Add Cirriculum" 
  				modalId="modalCirriculumEditor"
  				/>

  			<button id="addEntityButton" type="submit" class="btn btn-default pull-left"
  				data-toggle="modal" data-target="#createEntityModal">
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
   			<input name="name"/>
   		</div>
   		<div class="col-md-2">
   			<label class="optional">Department:</label>
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
 	
 	<div id="entityList" class="results"> 
	
	 <!-- Entity List -->
	 <my:entityList id="facilitiesList" class="results" rows="${ classDefinitions }">
	   <my:entityListField label="Name" value="name"/>
	   <my:entityListField label="Department" value="department"/>
	   <my:entityListAccessory type="edit"
	   	url="[controller: 'cirriculum', action: 'edit', namespace: 'admin']" 
	   	urlIdValue="id"
	   	modalId=""
	   	/>	   
	   <my:entityListAccessory type="delete" 
	   	url="[controller: 'facilities', action: 'delete', namespace: 'admin']" 
	   	urlIdValue="id"/>
	 </my:entityList>
 	</div> 	 	
   	
   	<!-- Modal Windows -->
   	<my:entityModal 
   		id="modalCirriculumEditor"
   		title="Add Cirriculum"   		
   	    formName="addCirriculum" 
   	    formURL="[controller: 'cirriculum', action: 'create', namespace: 'admin']" 
   	    formTemplate="/admin/cirriculum/create" />
   	    
   	    
   </body>
</html> 