<%--
  Created by IntelliJ IDEA.
  User: charles
  Date: 12/22/13
  Time: 11:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.charlesread.Queue" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
</head>
<body>
<g:render template="nav"/>
<g:form action="processOutstanding" method="post">
<table class="showList">
    <thead>
        <g:sortableColumn property="completed" title="Completed?" />
        <g:sortableColumn property="sequence" title="Sequence" />
        <g:sortableColumn property="contestant1.code" title="Contestant 1 Code" />
        <g:sortableColumn property="contestant2.code" title="Contestant 2 Code" />
        <g:sortableColumn property="table" title="Table" />
    </thead>
<g:each in="${queueList}" var="queueInstance">
        <tr>
            <td width="100"><input type="checkbox" name="checkedQueues" value="${queueInstance.id}" /></td>
            <td>${queueInstance.sequence}</td>
            <td>${queueInstance.contestant1.code}</td>
            <td>${queueInstance.contestant2.code}</td>
            <td>${queueInstance.table}</td>
        </tr>
</g:each>
</table>
    <br />
<g:submitButton name="submit" value="mark checked as completed" />
</g:form>
</body>
</html>