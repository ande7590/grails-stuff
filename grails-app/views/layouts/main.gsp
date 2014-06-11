<% 

%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">    
    <title><g:layoutTitle/></title>
    <r:require module="bootstrap"/>
    <r:require module="application"/>
    <r:layoutResources/>
  </head>

  <body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">GrailSchool</a>
        </div>
        <div class="collapse navbar-collapse">
          <sec:ifLoggedIn>
              <ul class="nav navbar-nav">
                <li><a href="javascript:void(0);">Student Management</a></li>
                <li><a href="javascript:void(0);">Teacher Management</a></li>
                <li><a href="javascript:void(0);">Cirriculum Management</a></li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="${grailsApplication.config.grails.plugin.springsecurity.logoutURL}">Logout</a></li> 
              </ul>
          </sec:ifLoggedIn>        
        </div>
      </div>
    </div>
    <div id="container-main" class="container">
        <g:layoutBody/>
    </div>
    <r:layoutResources/>
  </body>
</html>
