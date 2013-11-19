<%@ page import="com.charlesread.Contestant" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contestant.label', default: 'Contestant')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<g:render template="nav" />

<div id="list-contestant" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="list">
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'contestant.name.label', default: 'Name')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${contestantInstanceList}" status="i" var="contestantInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${contestantInstance.id}">${fieldValue(bean: contestantInstance, field: "name")}</g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${contestantInstanceTotal}"/>
    </div>
</div>
</body>
</html>
