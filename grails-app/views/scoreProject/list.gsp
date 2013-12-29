
<%@ page import="com.charlesread.ScoreProject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scoreProject.label', default: 'ScoreProject')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="nav" />
		<div id="list-scoreProject" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="list">
                <thead>
                <tr>

                    <g:sortableColumn property="contestant" title="Contestant"/>

                    <g:sortableColumn property="judge.userFullName" title="Judge"/>

                    <g:sortableColumn property="agg_s1" title="${message(code: 'score.agg_b1.label')}"/>

                    <g:sortableColumn property="agg_s2" title="${message(code: 'score.agg_b2.label')}"/>

                    <g:sortableColumn property="agg_s3" title="${message(code: 'score.agg_b3.label')}"/>

                    <g:sortableColumn property="agg" title="${message(code: 'score.agg_b.label')}"/>

                    <g:sortableColumn property="indicative" title="Indicative" />

                </tr>
                </thead>
                <tbody>
                <g:each in="${scoreProjectInstanceList}" status="i" var="scoreProjectInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:link action="show"
                                    id="${scoreProjectInstance.id}">${fieldValue(bean: scoreProjectInstance, field: "contestant")}</g:link></td>

                        <td>${scoreProjectInstance.judge.userFullName}</td>

                        <td>${fieldValue(bean: scoreProjectInstance, field: "agg_s1")}</td>

                        <td>${fieldValue(bean: scoreProjectInstance, field: "agg_s2")}</td>

                        <td>${fieldValue(bean: scoreProjectInstance, field: "agg_s3")}</td>

                        <td>${fieldValue(bean: scoreProjectInstance, field: "agg")}</td>

                        <td><g:formatBoolean boolean="${scoreProjectInstance.indicative}" /></td>

                    </tr>
                </g:each>
                </tbody>
            </table>
			
		</div>
	</body>
</html>
