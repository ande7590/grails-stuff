<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Index</title>
      <meta name="layout" content="main" />
      <r:require module="dashboard"/>  
   </head>
   <body>
   	<div id="modalSuccess" style="display: none;">
    	<div class="alert alert-success"><span class="glyphicon glyphicon-ok-circle"></span> <strong>Classroom Created</strong></div>
    </div>
    <div id="modalError" style="display: none;">
    	<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign"></span> <strong>Error creating classroom</strong></div>
    </div>                                      
   	<h1>Facilities</h1>
   	<h4 class="invert">New Classroom</h4>
   	<div class="row filters">
  		<span class="field-hint"><span class="glyphicon glyphicon-flash"></span> action </span>   		   		
  		<div class="col-md-offset-2 col-md-2">  			
  			<button 
  				id="addEntityButton" type="submit" class="btn btn-default pull-left"
  				data-toggle="modal" data-target="#createEntityModal">
  					<span class="glyphicon glyphicon-plus"></span> Add classroom
  			</button>
  		</div>
 	</div>
 	<h4 class="invert">Existing Classrooms</h4>
	<div id="entityList" class="results">   			   		
	 <g:render contextPath="${viewDirectory}" template="list" model="${ model }"/>
 	</div>
 	<!-- Modal Window -->
   	<g:render contextPath="${viewDirectory}" template="modal" model="model"/>   
   </body>
</html>