<%@ page import="com.charlesread.ScoreProject" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>

</head>
<body>
<g:each in="${scoreProjectInstanceList}" status="i" var="scoreProjectInstance">
    ${scoreProjectInstance.contestant}<br />
</g:each>
</body>
</html>
