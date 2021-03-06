
<%@ page import="com.charlesread.RobotDemo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'robotDemo.label', default: 'RobotDemo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="nav"/>
		<div id="list-robotDemo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="showList">
				<thead>
					<tr>

                        <g:sortableColumn property="contestant" title="${message(code: 'robotDemo.contestant.label')}" />

                        <g:sortableColumn property="judge.userFullName" title="${message(code: 'robotDemo.judge.label')}" />

                        <g:sortableColumn property="agg" title="${message(code: 'robotDemo.agg.label')}" />

                        <g:sortableColumn property="seqNo" title="Run" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${robotDemoInstanceList}" status="i" var="robotDemoInstance">
					<tr>

						<td><g:link action="show" id="${robotDemoInstance.id}">${fieldValue(bean: robotDemoInstance, field: "contestant")}</g:link></td>
					
						<td>${robotDemoInstance.judge.userFullName}</td>

                        <td>${fieldValue(bean: robotDemoInstance, field: "agg")}</td>

                        <td>${fieldValue(bean: robotDemoInstance, field: "seqNo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>

			<div class="pagination">
				<g:paginate total="${robotDemoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
