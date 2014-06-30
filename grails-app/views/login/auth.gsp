<html>
<head>
    <meta name='layout' content='main'/>
    <title><g:message code="springSecurity.login.title"/></title>
    <r:require modules="bootstrap, signin"/>
</head>
<body>
 <div class="container">
  <div class="alert alert-info" role="alert"><strong>Heads Up!</strong>
   <ul>
   	<li>This is still under construction, but you can use username 'admin' and password 'admin' to check it out.</li>
   	<li>Some stuff is just mocked-up, some stuff is working, and there are probably a few bugs.</li>
   	<li> When this is complete, there will be multiple accounts (teacher, admin, parent) with different perspectives on the same data.</li>
   </ul>    
  </div>
  <form class="form-signin" role="form" action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>
    <h2 class="form-signin-heading">
        <g:message code="springSecurity.login.header"/>
    </h2>
    <input type='text' id='username' class='text_ form-control' name='j_username'  placeholder="Username" required autofocus>
    <input type='password' id='password' class='text_ form-control' name='j_password' placeholder="Password" required>
    <label class="checkbox">
      <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/> Remember me
    </label>    
    <button class="btn btn-lg btn-primary btn-block" type="submit">${message(code: "springSecurity.login.button")}</button>
  </form>
  <g:if test='${flash.message}'>
    <div id='badPassword' class="alert alert-warning" style='text-align: center;'>${flash.message}</div>
    <script>
     setTimeout(function(){ $('#badPassword').hide(); }, 7500);
    </script>
  </g:if>
</div> <!-- /container -->

<script type='text/javascript'>
    <!--
    (function() {
       $("#username").focus()
    })();
    // -->
</script>
</body>
</html>
