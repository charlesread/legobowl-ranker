<html>
<head>
	<meta name='layout' content='main'/>
	<title><g:message code="springSecurity.login.title"/></title>
	<style type='text/css' media='screen'>
        #login {
            width: 100px;
            padding: 10px;
            margin-left: auto;
            margin-right: auto;
            background-color: #555;
            border-radius: 5px;
            text-align: center;
        }
        input[type=text],input[type=password] {
            width: 90px;
        }
        .login_message {
            width: 200px;
            font-size: 10px;
            color: #F2ACAC;
            text-align: center;
            margin:10px auto 10px auto;
        }


	</style>
</head>

<body>

<div id='login'>
    <form action='${postUrl}' method='POST' id='loginForm' class='cssform' autocomplete='off'>

			<input type='text' class='nonpad' name='j_username' id='username' placeholder="username" autocomplete="off" autocorrect="off"/>
            <input type='password' class='nonpad' name='j_password' id='password' placeholder="password"/>
            <input style="margin-top: 10px;margin-left: auto;margin-right: auto;" type='submit' id="submit" value='let me in!'/>
            %{--<a style="margin-top: 10px;" onclick="submitForm()" class="blueButton">let me in!</a>--}%
            %{--<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>--}%
            %{--<label style="font-size: 10px; color: #999" for='remember_me'>don't forget me</label>--}%

		</form>
</div>
<g:if test='${flash.message}'>
    <div class='login_message'>${flash.message}</div>
</g:if>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
