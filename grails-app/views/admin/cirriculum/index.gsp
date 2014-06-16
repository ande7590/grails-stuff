<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Index</title>
      <meta name="layout" content="main" />
      <r:require module="dashboard"/>
   </head>
   <body>                   
   	<div id="modalSuccess" style="display: none;">
    	<div class="alert alert-success"><span class="glyphicon glyphicon-ok-circle"></span> <strong>Class created</strong></div>
    </div>
    <div id="modalError" style="display: none;">
    	<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign"></span> <strong>Error creating class</strong></div>
    </div> 
   	<h1>Cirriculum</h1>
   	<h4 class="invert">New Class</h4>
   	<div class="row filters">
  		<span class="field-hint"><span class="glyphicon glyphicon-flash"></span> action </span>   		   		
  		<div class="col-md-offset-2 col-md-2">  			
  			<button id="addEntityButton" type="submit" class="btn btn-default pull-left"
  				data-toggle="modal" data-target="#createEntityModal">
  					<span class="glyphicon glyphicon-plus"></span> Add class
  			</button>
  		</div>
 	</div>
 	<h4 class="invert">Existing Classes</h4>
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
 		<!-- Result List -->
   		<g:render contextPath="${viewDirectory}" template="list" model="model"/>
   	</div>
   	<!-- Modal Window -->
   	<g:render contextPath="${viewDirectory}" template="modal" model="model"/>   	
   </body>
</html>