<%--
  Created by IntelliJ IDEA.
  User: charles
  Date: 12/22/13
  Time: 11:31 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
  <title></title>
</head>
<body>
<g:form action="processOutstanding" method="post">
<table class="list">
<g:each in="${queueList}" var="queueInstance">

        <tr>
            <td><input type="checkbox" name="checkedQueues" value="${queueInstance.id}" /></td>
            <td>${queueInstance.sequence}</td>
            <td>${queueInstance.contestant.name}</td>
        </tr>
</g:each>
</table>
<g:submitButton name="submit" value="mark checked as completed" />
</g:form>
</body>
</html>