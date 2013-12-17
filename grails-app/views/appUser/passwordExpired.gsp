<%--
  Created by IntelliJ IDEA.
  User: charles
  Date: 12/13/13
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name='layout' content='main'/>
    <style>
        input[type=password] {
            width: 160px;
        }
        #login {
            width: 170px;
            padding: 10px;
            margin-left: auto;
            margin-right: auto;
            background-color: #555;
            border-radius: 5px;
            text-align: center;
        }
        .login_message {
            width: 200px;
            font-size: 10px;
            color: #F2ACAC;
            text-align: center;
            margin:10px auto 10px auto;
        }
        .fheader {
            font-size: 12px;
            color: #333;
            font-style: italic;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
<div id='login'>

        <div class='fheader'>please update your password..</div>
        <g:form action='updatePassword' id='passwordResetForm' class='cssform' autocomplete='off'>

                <g:passwordField name='password' class='text_' placeholder="current password" />

                <g:passwordField name='password_new' class='text_' placeholder="new password" />

                <g:passwordField name='password_new_2' class='text_' placeholder="new password, again" />

                <input style="margin-top: 10px;" type='submit' value='reset' />

        </g:form>

</div>
<g:if test='${flash.message}'>
    <div class='login_message'>${flash.message}</div>
</g:if>
</body>
</html>