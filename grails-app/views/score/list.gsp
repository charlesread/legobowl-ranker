<%@ page import="com.charlesread.Score" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'score.label', default: 'Score')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>

<g:render template="nav" />

<div id="list-score" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="list">
        <thead>
        <tr>

            <g:sortableColumn property="contestant" title="Contestant"/>

            <g:sortableColumn property="judge" title="Judge"/>

            <g:sortableColumn property="agg_total" title="Scorecard Average"/>

            %{--<g:sortableColumn property="a13" title="${message(code: 'score.a13.label', default: 'A13')}"/>--}%

            %{--<g:sortableColumn property="a21" title="${message(code: 'score.a21.label', default: 'A21')}"/>--}%

            %{--<g:sortableColumn property="a22" title="${message(code: 'score.a22.label', default: 'A22')}"/>--}%

            %{--<g:sortableColumn property="a23" title="${message(code: 'score.a23.label', default: 'A23')}"/>--}%

        </tr>
        </thead>
        <tbody>
        <g:each in="${scoreInstanceList}" status="i" var="scoreInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${scoreInstance.id}">${fieldValue(bean: scoreInstance, field: "contestant")}</g:link></td>

                <td>${fieldValue(bean: scoreInstance, field: "judge")}</td>

                <td>${fieldValue(bean: scoreInstance, field: "agg_total")}</td>

                %{--<td>${fieldValue(bean: scoreInstance, field: "a13")}</td>--}%

                %{--<td>${fieldValue(bean: scoreInstance, field: "a21")}</td>--}%

                %{--<td>${fieldValue(bean: scoreInstance, field: "a22")}</td>--}%

                %{--<td>${fieldValue(bean: scoreInstance, field: "a23")}</td>--}%

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${scoreInstanceTotal}"/>
    </div>
</div>
</body>
</html>
