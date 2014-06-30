<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Dashboard</title>
      <meta name="layout" content="main" />
      <r:require module="dashboard"/>
   </head>
   <body>
   		<div class="alert alert-warning" role="alert"><strong>This is just a mockup.</strong> But it will be working soon!</div>
        <h1>Dashboard</h1>         
        <div class="dashboard-report">
            <h4 class="invert">Student Grades</h4>          
            <div class="row filters">
                <span class="field-hint"><span class="glyphicon glyphicon-filter"></span> filters </span>
                <div class="col-md-2">
                    <label class="optional">Year:</label>
                </div>
                <div class="col-md-2">
                    <select>                        
                        <option>All</option>
                        <option>2010</option>
                        <option>2010</option>
                        <option>2010</option>
                        <option>2010</option>
                    </select>
                </div>
                <div class="col-md-2">                 
                   <label class="optional">Teacher:</label>
                </div>
                <div class="col-md-2">
                    <select>
                        <option>Combine all</option>
                        <option>All</option>
                        <option>Mrs. G</option>
                        <option>Mrs. A</option>
                        <option>Mrs. B</option>
                        <option>Mr. C</option>
                        <option>Mr. Q</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <label class="optional">Class:</label>         
                </div>
                <div class="col-md-2">
                    <select>
                        <option>Combine all</option>
                        <option>All</option>
                        <option>Mrs. G</option>
                        <option>Mrs. A</option>
                        <option>Mrs. B</option>
                        <option>Mr. C</option>
                        <option>Mr. Q</option>
                    </select>
                </div>
            </div>  
                    
            <div class="row filters">
                <span class="field-hint"><span class="glyphicon glyphicon-sort"></span> sort by</span>
                <div class="col-md-3 col-md-offset-1">
                    <select>                        
                        <option>Avg Performance</option>
                        <option>% Passing</option>
                        <option>% Not Passing</option>
                        <option>Department</option>
                        <option>Teacher</option>                        
                        <option>Year</option>
                    </select>
                </div>
                <div class="col-md-3 col-md-offset-1">
                    <select>
                        <option>None</option>
                        <option>Avg Performance</option>
                        <option>% Passing</option>
                        <option>% Not Passing</option>
                        <option>Teacher</option>                        
                        <option>Year</option>
                    </select>
                </div>
                <div class="col-md-3 col-md-offset-1">
                    <select>
                        <option>None</option>
                        <option>Avg Performance</option>
                        <option>% Passing</option>
                        <option>% Not Passing</option>
                        <option>Teacher</option>                        
                        <option>Year</option>
                    </select>
                </div>
            </div>        
            <div class="results">
                <h4 class="section">2014</h4>               
                <div class="progress">
                  <div class="progress-bar progress-bar-success" style="width: 65%">
                    120 passing
                    <span class="sr-only">35% Complete (success)</span>
                  </div>
                  <div class="progress-bar progress-bar-warning" style="width: 20%">
                    10 struggling
                    <span class="sr-only">20% Complete (warning)</span>
                  </div>
                  <div class="progress-bar progress-bar-danger" style="width: 15%">
                    13 failing
                    <span class="sr-only">10% Complete (danger)</span>
                  </div>
                </div>
                <h4 class="section">2013</h4>
                <div class="progress">
                  <div class="progress-bar progress-bar-success" style="width: 50%">
                    100 passing
                    <span class="sr-only">35% Complete (success)</span>
                  </div>
                  <div class="progress-bar progress-bar-warning" style="width: 30%">
                    33 struggling
                    <span class="sr-only">20% Complete (warning)</span>
                  </div>
                  <div class="progress-bar progress-bar-danger" style="width: 20%">
                    23 failing
                    <span class="sr-only">10% Complete (danger)</span>
                  </div>
                </div>
                <h4 class="section">2012</h4>
                <div class="progress">
                  <div class="progress-bar progress-bar-success" style="width: 65%">
                    120 passing
                    <span class="sr-only">35% Complete (success)</span>
                  </div>
                  <div class="progress-bar progress-bar-warning" style="width: 20%">
                    10 struggling
                    <span class="sr-only">20% Complete (warning)</span>
                  </div>
                  <div class="progress-bar progress-bar-danger" style="width: 15%">
                    13 failing
                    <span class="sr-only">10% Complete (danger)</span>
                  </div>
                </div>
            </div>
            
        </div>       
                      
   </body>
</html>