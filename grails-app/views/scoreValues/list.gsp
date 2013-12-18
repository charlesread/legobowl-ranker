
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

                    <g:sortableColumn property="judge.userFullName" title="Judge"/>

                    <g:sortableColumn property="agg_s1" title="${message(code: 'score.agg_a1.label')}"/>

                    <g:sortableColumn property="agg_s2" title="${message(code: 'score.agg_a2.label')}"/>

                    <g:sortableColumn property="agg_s3" title="${message(code: 'score.agg_a3.label')}"/>

                    <g:sortableColumn property="agg" title="${message(code: 'score.agg_a.label')}"/>

                </tr>
                </thead>
                <tbody>
                <g:each in="${scoreValuesInstanceList}" status="i" var="scoreValuesInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${scoreValuesInstance.id}">${fieldValue(bean: scoreValuesInstance, field: "contestant")}</g:link></td>

                        <td>${scoreValuesInstance.judge.userFullName}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg_s1")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg_s2")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg_s3")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg")}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
		</div>
	</body>
</html>
