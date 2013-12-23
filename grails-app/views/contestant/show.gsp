<%@ page import="com.charlesread.Contestant" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contestant.label', default: 'Contestant')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<g:render template="nav" />

<div id="show-contestant" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="show">
        <tr>
            <td>Code</td>
            <td>${contestantInstance.code}</td>
        </tr>
                <tr><td><g:message code="contestant.name.label" default="Name"/></td>

                <td><g:fieldValue bean="${contestantInstance}" field="name"/></td>

          </tr>
        </table>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${contestantInstance?.id}"/>
            <g:link class="edit" action="edit" id="${contestantInstance?.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
