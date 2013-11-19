<%@ page import="com.charlesread.Score" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'score.label', default: 'Score')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-score" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-score" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="contestant" title="${message(code: 'score.c1.label', default: 'Contestant')}"/>

            <g:sortableColumn property="aggTotal" title="${message(code: 'score.c1.label', default: 'Overall Average')}"/>

            %{--<g:sortableColumn property="agc2" title="${message(code: 'score.c2.label', default: 'C2')}"/>--}%

            %{--<g:sortableColumn property="agc3" title="${message(code: 'score.c3.label', default: 'C3')}"/>--}%

            %{--<g:sortableColumn property="agsum" title="${message(code: 'score.sum.label', default: 'Sum')}"/>--}%

        </tr>
        </thead>
        <tbody>
        <g:each in="${aggregates}" status="i" var="scoreInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td>${fieldValue(bean: scoreInstance, field: "contestant")}</td>

                <td>${fieldValue(bean: scoreInstance, field: "aggTotal")}</td>

                %{--<td>${fieldValue(bean: scoreInstance, field: "agc2")}</td>--}%

                %{--<td>${fieldValue(bean: scoreInstance, field: "agc3")}</td>--}%

                %{--<td>${fieldValue(bean: scoreInstance, field: "agsum")}</td>--}%

            </tr>
        </g:each>
        </tbody>
    </table>

    %{--<div class="pagination">--}%
        %{--<g:paginate total="${scoreInstanceTotal}"/>--}%
    %{--</div>--}%
</div>
</body>
</html>
