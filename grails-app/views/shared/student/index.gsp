<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Student Management</title>
      <meta name="layout" content="main" />
      <r:require module="dashboard"/>
   </head>
   <body>               	   
   	<h1>Students</h1>
   	<h4 class="invert">New Students</h4>    
   	<div class="row filters">
   		<span class="field-hint"><span class="glyphicon glyphicon-flash"></span> action </span>   		   		
   		<div class="col-md-offset-2 col-md-2">
   			<g:form url="[action:'enroll', controller:'student', namespace:'shared']">
   				<button type="submit" class="btn btn-default pull-left">Enroll new student</button>
   			</g:form>   
   		</div>   		
   	</div>
   	<h4 class="invert">Existing Students</h4> 
   	<div class="row filters">
   		<span class="field-hint"><span class="glyphicon glyphicon-search"></span> search </span>
   		<div class="col-md-2">
   			<label class="optional">Name:</label>
   		</div>
   		<div class="col-md-2">
   			<input name="name"/>
   		</div>   
   		<div class="col-md-2">
   			<label class="optional">Birthday:</label>
   		</div>
   		<div class="col-md-2">
   			<input name="birthdate"/>
   		</div>		
   		<div class="col-md-2">
   			<label class="optional">Program:</label>
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
   	<div class="row filters">   		   		
   		<div class="col-md-2">
   			<label class="optional">Grade Year:</label>
   		</div>
   		<div class="col-md-2">
   			<select>
   				<option>any</option>
   				<option>K</option>
   				<option>1</option>
   				<option>2</option>
   				<option>3</option>
   			</select>
   		</div>
   	</div>   	
   	<div class="results">
   		<table class="table table-condensed table-hover">
   			<thead>
   				<tr>   					
   					<th>Name</th>
   					<th>Birthdate</th>
   					<th>Grade Year</th>   					
   				</tr>
   			</thead>
   			<tbody>
   				<tr >   					
   					<td><a href="#">Who Kid</a></td>
   					<td>3/5/90</td>
   					<td>
   						Kindergarten
   					</td>   					
   				</tr>
   			</tbody>
   		</table>
   	</div>
   </body>
</html>