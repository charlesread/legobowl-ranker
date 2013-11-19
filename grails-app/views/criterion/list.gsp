
<%@ page import="com.charlesread.Criterion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'criterion.label', default: 'Criterion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-criterion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="list">
				<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'criterion.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'criterion.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'criterion.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="s1" title="${message(code: 'criterion.s1.label', default: 'S1')}" />
					
						<g:sortableColumn property="s2" title="${message(code: 'criterion.s2.label', default: 'S2')}" />
					
						<g:sortableColumn property="s3" title="${message(code: 'criterion.s3.label', default: 'S3')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${criterionInstanceList}" status="i" var="criterionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${criterionInstance.id}">${fieldValue(bean: criterionInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: criterionInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: criterionInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: criterionInstance, field: "s1")}</td>
					
						<td>${fieldValue(bean: criterionInstance, field: "s2")}</td>
					
						<td>${fieldValue(bean: criterionInstance, field: "s3")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${criterionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
