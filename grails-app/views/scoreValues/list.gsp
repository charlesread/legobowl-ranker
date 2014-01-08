
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
			<table style="width: 100%;">
                <tr>
                    <td><h1><g:message code="default.list.label" args="[entityName]" /></h1></td>
                    <td style="text-align: right; color: #666;  ">
                    <sec:ifAnyGranted roles="ROLE_ADMIN">
                        <g:form action="list" method="post" name="main">
                            (optional) filter by <g:select name="contestant" optionKey="id" from="${com.charlesread.Contestant.list(sort: "code", order: 'asc')}" onchange="document.main.submit();"  noSelection="${['':'-- select a contestant --']}" value="${params.contestant}" />
                        </g:form>
                    </sec:ifAnyGranted>
                    </td>
                </tr>
			</table>

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

                    <g:sortableColumn property="indicative" title="Indicative" />

                </tr>
                </thead>
                <tbody>
                <g:each in="${scoreValuesInstanceList}" status="i" var="scoreValuesInstance">
                    <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td width="100"><g:link action="show"
                                    id="${scoreValuesInstance.id}">${fieldValue(bean: scoreValuesInstance, field: "contestant")}</g:link></td>

                        <td>${scoreValuesInstance.judge.userFullName}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg_s1")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg_s2")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg_s3")}</td>

                        <td>${fieldValue(bean: scoreValuesInstance, field: "agg")}</td>

                        <td><g:formatBoolean boolean="${scoreValuesInstance.indicative}" /></td>
                    </tr>
                    <g:if test="${scoreValuesInstance.scoreComment}">
                        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                            <td></td>
                            <td colspan="6">${scoreValuesInstance.scoreComment}</td>
                        </tr>
                    </g:if>
                </g:each>
                </tbody>
            </table>
		</div>
	</body>
</html>
