
<%@ page import="com.charlesread.ScoreValues" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scoreValues.label', default: 'ScoreValues')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="nav" />
		<div id="list-scoreValues" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="list">
                <thead>
                <tr>

                    <g:sortableColumn property="contestant" title="Contestant"/>

                    <g:sortableColumn property="judge.username" title="Judge"/>

                    <g:sortableColumn property="agg_s1" title="${message(code: 'score.agg_a1.label')}"/>

                    <g:sortableColumn property="agg_s2" title="${message(code: 'score.agg_a2.label')}"/>

                    <g:sortableColumn property="agg_s3" title="${message(code: 'score.agg_a3.label')}"/>

                    <g:sortableColumn property="agg" title="${message(code: 'score.agg_a.label')}"/>

                    %{--<g:sortableColumn property="a13" title="${message(code: 'score.a13.label', default: 'A13')}"/>--}%

                    %{--<g:sortableColumn property="a21" title="${message(code: 'score.a21.label', default: 'A21')}"/>--}%

                    %{--<g:sortableColumn property="a22" title="${message(code: 'score.a22.label', default: 'A22')}"/>--}%

                    %{--<g:sortableColumn property="a23" title="${message(code: 'score.a23.label', default: 'A23')}"/>--}%

                </tr>
                </thead>
                <tbody>
                <g:each in="${scoreValuesInstanceList}" status="i" var="scoreValuesInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${scoreValuesInstance.id}">${fieldValue(bean: scoreValuesInstance, field: "contestant")}</g:link></td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "judge")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg_s1")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg_s2")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg_s3")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg")}</td>

                        %{--<td>${fieldValue(bean: scoreValuesInstance, field: "a13")}</td>--}%

                        %{--<td>${fieldValue(bean: scoreValuesInstance, field: "a21")}</td>--}%

                        %{--<td>${fieldValue(bean: scoreValuesInstance, field: "a22")}</td>--}%

                        %{--<td>${fieldValue(bean: scoreValuesInstance, field: "a23")}</td>--}%

                    </tr>
                </g:each>
                </tbody>
            </table>
		</div>
	</body>
</html>
