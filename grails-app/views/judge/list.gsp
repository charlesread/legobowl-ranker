<%@ page import="com.charlesread.Judge" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'judge.label', default: 'Judge')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-judge" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="list">
        <thead>
        <tr>

            <g:sortableColumn property="name" title="${message(code: 'judge.name.label', default: 'Name')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${judgeInstanceList}" status="i" var="judgeInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${judgeInstance.id}">${fieldValue(bean: judgeInstance, field: "name")}</g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${judgeInstanceTotal}"/>
    </div>
</div>
</body>
</html>
