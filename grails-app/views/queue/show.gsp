
<%@ page import="com.charlesread.Queue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'queue.label', default: 'Queue')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="nav"/>
		<div id="show-queue" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
        <table class="show">
            <tr>
                <td><g:message code="queue.sequence.label" default="Sequence" /></td>
                <td><g:fieldValue bean="${queueInstance}" field="sequence"/></td>
            </tr>
            <tr>
                <td><g:message code="queue.completed.label" default="Completed" /></td>
                <td><g:formatBoolean boolean="${queueInstance?.completed}" /></td>
            </tr>
            <tr>
                <td><g:message code="queue.contestant.label" default="Contestant 1" /></span></td>
                <td>${queueInstance?.contestant1?.encodeAsHTML()}</td>
            </tr>
            <tr>
                <td><g:message code="queue.contestant.label" default="Contestant 2" /></span></td>
                <td>${queueInstance?.contestant2?.encodeAsHTML()}</td>
            </tr>
            <tr>
                <td><g:message code="queue.contestant.label" default="Table" /></span></td>
                <td>${queueInstance?.table}</td>
            </tr>
        </table>

			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${queueInstance?.id}" />
					<g:link class="edit" action="edit" id="${queueInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
