<%--
  Created by IntelliJ IDEA.
  User: charles
  Date: 12/12/13
  Time: 5:56 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <title></title>
    <g:set var="entityName" value="${message(code: 'robotDemo.label', default: 'RobotDemo')}" />
</head>
<body>
<g:render template="nav" contextPath="../robotDemo" />
<h1><g:message code="robotDemo.label" args="[entityName]" /> maximums</h1>
    <table class="list">
        <thead>
            <tr>
                <g:sortableColumn property="rank" title="Rank" />
                <g:sortableColumn property="contestant" title="Contestant" />
                <g:sortableColumn property="agg" title="Top Robot Demonstration Score" />
                <g:sortableColumn property="run1" title="Run 1" />
                <g:sortableColumn property="run2" title="Run 2" />
                <g:sortableColumn property="run3" title="Run 3" />
                %{--<th><a href="">Contestant</a></th>--}%
                %{--<th><a href="">Top Robot Demonstration Score</a></th>--}%
                %{--<th><a href="">Run 1</a></th>--}%
                %{--<th><a href="">Run 2</a></th>--}%
                %{--<th><a href="">Run 3</a></th>--}%
            </tr>
        </thead>
        <g:render template="data" />
    </table>

</body>
</html>