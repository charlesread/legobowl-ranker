<%@ page import="com.charlesread.ScoreValues" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'scoreValues.label', default: 'Score')}"/>
    <title>score aggregation</title>
</head>

<body>

<g:render template="nav" />

<div id="list-score" class="content scaffold-list" role="main">
    <h1>core values score aggregation (by contestant)</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="list">
        <thead>
        <tr>

            <g:sortableColumn property="contestant" title="Contestant"/>

            <g:sortableColumn property="agg1" title="${message(code: 'score.a1.label')} Avg."/>

            <g:sortableColumn property="agg2" title="${message(code: 'score.a2.label')} Avg."/>

            <g:sortableColumn property="agg3" title="${message(code: 'score.a3.label')} Avg."/>

            <g:sortableColumn property="aggTotal" title="${message(code: 'score.agg_a.label')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${aggregates}" status="i" var="scoreInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td>${fieldValue(bean: scoreInstance, field: "contestant")}</td>

                <td>${fieldValue(bean: scoreInstance, field: "aggA")} (${((fieldValue(bean: scoreInstance, field: "aggA").toFloat() / 4.toFloat())*100).round(3).toString()}%)</td>

                <td>${fieldValue(bean: scoreInstance, field: "aggB")} (${((fieldValue(bean: scoreInstance, field: "aggB").toFloat() / 4.toFloat())*100).round(3).toString()}%)</td>

                <td>${fieldValue(bean: scoreInstance, field: "aggC")} (${((fieldValue(bean: scoreInstance, field: "aggC").toFloat() / 4.toFloat())*100).round(3).toString()}%)</td>

                <td>${fieldValue(bean: scoreInstance, field: "aggTotal")} (${((fieldValue(bean: scoreInstance, field: "aggTotal").toFloat() / 4.toFloat())*100).round(3).toString()}%) ${com.charlesread.RoomAverages.get(ScoreValues.findByContestant(scoreInstance.contestant)?.judge?.roomId)}</td>

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
