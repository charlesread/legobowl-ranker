<%@ page import="com.charlesread.Contestant" %>
<!DOCTYPE html>
<html>
<head>
    <style>
    table.list thead th {
        color: #fff;
    }
    .partagg, .areaagg {
        background-color: #666;
        font-weight: bold;
    }
    .scoreWrapper {
        margin-top: 20px;
    }
    td {
        vertical-align: top;
        padding: 20px;
    }
    .criteria {
        color: #fff;
        font-size: 18px;
        font-weight: bold;
    }
    .overall {
        margin:20px;
    }
    </style>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contestant.label', default: 'Contestant')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>

</head>

<body>

<g:render template="nav" />

<div id="list-contestant" class="content scaffold-list" role="main">
    <h1>${totals.contestant} scores</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:render template="teamScores" contextPath="/common" />
</div>
</body>
</html>
