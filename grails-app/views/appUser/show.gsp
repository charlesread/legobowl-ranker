<%@ page import="com.charlesread.AppUser" %>
<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'appUser.label', default: 'AppUser')}" />
    <title>
        <g:message code="default.show.label" args="[entityName]" />
    </title>
</head>

<body>

<g:render template="nav" />
<div id="show-appUser" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]" /></h1>

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="show">
        <tr>
            <td>
                <g:message code="appUser.username.label" default="Username" />
            </td>
            <td>
                <g:fieldValue bean="${appUserInstance}" field="username" />
            </td>
        </tr>
        <tr>
            <td>
                <g:message code="appUser.roles.label" default="Roles" />
            </td>
            <td>
                <g:each in="${com.charlesread.AppUserAppRole.findAllByAppUser(appUserInstance)}" var="appRoleInstance">${appRoleInstance.appRole.authority}
                    <br>
                </g:each>
            </td>
        </tr>
        <tr>
            <td>
                <g:message code="appUser.username.label" default="Criteria Group" />
            </td>
            <td>
                <g:fieldValue bean="${appUserInstance}" field="criteriaGroup" />
            </td>
        </tr>
        <tr>
            <td>
                <g:message code="appUser.accountExpired.label" default="Account Expired" />
            </td>
            <td>
                <g:formatBoolean boolean="${appUserInstance?.accountExpired}" />
            </td>
        </tr>
        <tr>
            <td>
                <g:message code="appUser.accountLocked.label" default="Account Locked" />
            </td>
            <td>
                <g:formatBoolean boolean="${appUserInstance?.accountLocked}" />
            </td>
        </tr>
        <tr>
            <td>
                <g:message code="appUser.enabled.label" default="Enabled" />
            </td>
            <td>
                <g:formatBoolean boolean="${appUserInstance?.enabled}" />
            </td>
        </tr>
        <tr>
            <td>
                <g:message code="appUser.passwordExpired.label" default="Password Expired" />
            </td>
            <td>
                <g:formatBoolean boolean="${appUserInstance?.passwordExpired}" />
            </td>
        </tr>
    </table>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${appUserInstance?.id}" />
            <g:link class="edit" action="edit" id="${appUserInstance?.id}">
                <g:message code="default.button.edit.label" default="Edit" /></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>

</html>