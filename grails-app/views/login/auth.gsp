<html>
<head>
    <meta name='layout' content='main'/>
    <title><g:message code="springSecurity.login.title"/></title>
    <r:require modules="bootstrap, signin"/>
</head>

<body>

 <div class="container">
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
