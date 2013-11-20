<%@ page import="com.charlesread.Score" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'score.label', default: 'Score')}"/>
    <title>score aggregation</title>
</head>

<body>

<g:render template="nav" />

<div id="list-score" class="content scaffold-list" role="main">
    <h1>score aggregation (by contestant)</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="list">
        <thead>
        <tr>

            <g:sortableColumn property="contestant" title="${message(code: 'score.c1.label', default: 'Contestant')}"/>

            <g:sortableColumn property="aggA" title="Core Values Average"/>

            <g:sortableColumn property="aggB" title="Project Average"/>

            <g:sortableColumn property="aggC" title="Robot Design Average"/>

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

                <td>${fieldValue(bean: scoreInstance, field: "aggA")} (${((fieldValue(bean: scoreInstance, field: "aggA").toFloat() / 4.toFloat())*100).toString()[0..3]}%)</td>

                <td>${fieldValue(bean: scoreInstance, field: "aggB")} (${((fieldValue(bean: scoreInstance, field: "aggB").toFloat() / 4.toFloat())*100).toString()[0..3]}%)</td>

                <td>${fieldValue(bean: scoreInstance, field: "aggC")} (${((fieldValue(bean: scoreInstance, field: "aggC").toFloat() / 4.toFloat())*100).toString()[0..3]}%)</td>

                <td>${fieldValue(bean: scoreInstance, field: "aggTotal")} (${((fieldValue(bean: scoreInstance, field: "aggTotal").toFloat() / 4.toFloat())*100).toString()[0..3]}%)</td>

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
