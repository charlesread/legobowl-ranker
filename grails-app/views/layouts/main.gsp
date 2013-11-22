<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
%{--<g:set var="entityName" value="${message(code: 'linkerLink.label', default: 'link')}" />--}%
<title><g:layoutTitle default="Grails"/></title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <g:javascript src="lib.js"/>
<g:layoutHead/>
<r:layoutResources />
</head>

<body>
<div id="container">
    <div id="header">
    	<span class="title">LEGO BOWL</span>
        <span class="comment">making ranking easy</span>
    </div>

    <div class="nav" role="navigation">
        <ul>
            <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_USER">
            <li><a class="home" href="${createLink(uri: '/')}">home</a></li>
            <li><g:link controller="score" action="list">scores</g:link></li>
            <sec:ifAnyGranted roles="ROLE_ADMIN">
                %{--<li><g:link controller="criterion" action="list">criteria</g:link></li>--}%
                <li><g:link controller="contestant" action="list">contestants</g:link></li>
                <li><g:link controller="appUser" action="list">users (and judges)</g:link></li>
            </sec:ifAnyGranted>
            </sec:ifAnyGranted>
        </ul>
    </div>

    <g:layoutBody/>
    
    <div id="footer">
    <!--&reg; twenty thirteen, charlesread dot com-->
    </div>
</div>
<!--<g:javascript library="application"/>-->
<r:layoutResources />
</body>
</html>
