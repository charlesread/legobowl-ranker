
<%@ page import="com.charlesread.Queue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'queue.label', default: 'Queue')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="nav"/>
		<div id="list-queue" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="list">
				<thead>
					<tr>
					
						<g:sortableColumn property="sequence" title="${message(code: 'queue.sequence.label', default: 'Sequence')}" />
					
						<g:sortableColumn property="completed" title="${message(code: 'queue.completed.label', default: 'Completed')}" />

                        <g:sortableColumn property="contestant.name" title="${message(code: 'queue.contestant.label', default: 'Contestant')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${queueInstanceList}" status="i" var="queueInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${queueInstance.id}">${fieldValue(bean: queueInstance, field: "sequence")}</g:link></td>
					
						<td><g:formatBoolean boolean="${queueInstance.completed}" /></td>
					
						<td>${fieldValue(bean: queueInstance, field: "contestant")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${queueInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
