<%@ page import="com.charlesread.ScoreTechnical; com.charlesread.ScoreProject; com.charlesread.RoomAverages; com.charlesread.Room; com.charlesread.ScoreValues" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'score.label', default: 'Score')}"/>
    <title>score aggregation</title>
</head>

<body>

<div id="list-score" class="content scaffold-list" role="main">
    <h1>score aggregation (by contestant)</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="list">
        <thead>
        <tr>

            <g:sortableColumn property="contestant" title="${message(code: 'contestant.label').capitalize()}"/>

            <g:sortableColumn property="aggA" title="${message(code: 'score.agg_a.label')}"/>

            <g:sortableColumn property="aggB" title="${message(code: 'score.agg_b.label')}"/>

            <g:sortableColumn property="aggC" title="${message(code: 'score.agg_c.label')}"/>

            <g:sortableColumn property="aggTotal" title="Overall Average"/>

            %{--<g:sortableColumn property="agc2" title="${message(code: 'score.c2.label', default: 'C2')}"/>--}%

            %{--<g:sortableColumn property="agc3" title="${message(code: 'score.c3.label', default: 'C3')}"/>--}%

            %{--<g:sortableColumn property="agsum" title="${message(code: 'score.sum.label', default: 'Sum')}"/>--}%

        </tr>
        </thead>
        <tbody>
        <g:each in="${aggregates}" status="i" var="aggregateInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td>${fieldValue(bean: aggregateInstance, field: "contestant")}</td>

                <td>${fieldValue(bean: aggregateInstance, field: "aggA")} (${((fieldValue(bean: aggregateInstance, field: "aggA").toFloat() / 4.toFloat())*100).round(3).toString()}%) ${RoomAverages.get(ScoreValues.findByContestant(aggregateInstance.contestant)?.judge?.roomId)}</td>

                <td>${fieldValue(bean: aggregateInstance, field: "aggB")} (${((fieldValue(bean: aggregateInstance, field: "aggB").toFloat() / 4.toFloat())*100).round(3).toString()}%) ${RoomAverages.get(ScoreProject.findByContestant(aggregateInstance.contestant)?.judge?.roomId)}</td>

                <td>${fieldValue(bean: aggregateInstance, field: "aggC")} (${((fieldValue(bean: aggregateInstance, field: "aggC").toFloat() / 4.toFloat())*100).round(3).toString()}%) ${RoomAverages.get(ScoreTechnical.findByContestant(aggregateInstance.contestant)?.judge?.roomId)}</td>

                <td>${fieldValue(bean: aggregateInstance, field: "aggTotal")} (${((fieldValue(bean: aggregateInstance, field: "aggTotal").toFloat() / 4.toFloat())*100).round(3).toString()}%)</td>

                %{--<td>${fieldValue(bean: aggregateInstance, field: "agc2")}</td>--}%

                %{--<td>${fieldValue(bean: aggregateInstance, field: "agc3")}</td>--}%

                %{--<td>${fieldValue(bean: aggregateInstance, field: "agsum")}</td>--}%

            </tr>
        </g:each>
        </tbody>
    </table>

    %{--<div class="pagination">--}%
    %{--<g:paginate total="${aggregateInstanceTotal}"/>--}%
    %{--</div>--}%
</div>
</body>
</html>
