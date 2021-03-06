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
            <g:sortableColumn property="code" title="Code" />
            <g:sortableColumn property="name" title="${message(code: 'contestant.name.label', default: 'Name')}"/>

            <th></th>
            <th></th>
            <th></th>
            <th></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${contestantInstanceList}" status="i" var="contestantInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${contestantInstance.id}">${fieldValue(bean: contestantInstance, field: "code")}</g:link></td>

                <td><g:link action="show"
                            id="${contestantInstance.id}">${contestantInstance}</g:link></td>

                %{--<td><a href="/legoleague/contestant/scores/${fieldValue(bean: contestantInstance, field: "id")}">Scores</a></td>--}%

                <td><g:if test="${com.charlesread.ScoreValues.findByContestantAndIndicative(contestantInstance,true)}">
                        <g:link controller="scoreValues" action="report" id="${contestantInstance.id}">Core Values Scores</g:link>
                    </g:if>
                </td>

                <td><g:if test="${com.charlesread.ScoreProject.findByContestantAndIndicative(contestantInstance,true)}">
                        <g:link controller="scoreProject" action="report" id="${contestantInstance.id}">Project Scores</g:link>
                    </g:if>
                </td>

                <td><g:if test="${com.charlesread.ScoreTechnical.findByContestantAndIndicative(contestantInstance,true)}">
                        <g:link controller="scoreTechnical" action="report" id="${contestantInstance.id}">Technical Scores</g:link>
                    </g:if>
                </td>


                <td><a href="/legoleague/aggregation/contestantReport/${fieldValue(bean: contestantInstance, field: "id")}">Score Report (PDF)</a> </td>

            </tr>
        </g:each>
        </tbody>
    </table>

    %{--<div class="pagination">--}%
        %{--<g:paginate total="${contestantInstanceTotal}"/>--}%
    %{--</div>--}%
</div>
</body>
</html>
