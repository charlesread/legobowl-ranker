
<%@ page import="com.charlesread.RobotDemo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'robotDemo.label', default: 'RobotDemo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-robotDemo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-robotDemo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="agg" title="${message(code: 'robotDemo.agg.label', default: 'Agg')}" />
					
						<th><g:message code="robotDemo.contestant.label" default="Contestant" /></th>
					
						<th><g:message code="robotDemo.judge.label" default="Judge" /></th>
					
						<g:sortableColumn property="s1" title="${message(code: 'robotDemo.s1.label', default: 'S1')}" />
					
						<g:sortableColumn property="s10" title="${message(code: 'robotDemo.s10.label', default: 'S10')}" />
					
						<g:sortableColumn property="s11" title="${message(code: 'robotDemo.s11.label', default: 'S11')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${robotDemoInstanceList}" status="i" var="robotDemoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${robotDemoInstance.id}">${fieldValue(bean: robotDemoInstance, field: "agg")}</g:link></td>
					
						<td>${fieldValue(bean: robotDemoInstance, field: "contestant")}</td>
					
						<td>${fieldValue(bean: robotDemoInstance, field: "judge")}</td>
					
						<td>${fieldValue(bean: robotDemoInstance, field: "s1")}</td>
					
						<td>${fieldValue(bean: robotDemoInstance, field: "s10")}</td>
					
						<td>${fieldValue(bean: robotDemoInstance, field: "s11")}</td>
					
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
