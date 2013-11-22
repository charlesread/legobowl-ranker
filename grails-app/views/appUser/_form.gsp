<%@ page import="com.charlesread.AppUser" %>
<table class="show">
    <tr>
        <td>
            <g:message code="appUser.username.label" default="Username" />	<span class="required-indicator">*</span>

        </td>
        <td>
            <g:textField name="username" required="" value="${appUserInstance?.username}" />
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="appUser.username.label" default="First Name" /> <span class="required-indicator">*</span>

        </td>
        <td>
            <g:textField name="firstName" required="" value="${appUserInstance?.firstName}" />
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="appUser.username.label" default="Last Name" /> <span class="required-indicator">*</span>

        </td>
        <td>
            <g:textField name="lastName" required="" value="${appUserInstance?.lastName}" />
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="appUser.password.label" default="Password" />	<span class="required-indicator">*</span>

        </td>
        <td>
            <g:passwordField name="password" id="password" required="" value="${appUserInstance?.password}" />
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="appUser.password.label" default="Password, again" /> <span class="required-indicator">*</span>

        </td>
        <td>
            <g:passwordField name="password2" id="password2" required="" value="${appUserInstance?.password}" />
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="appUser.authority.label" default="Roles" /></td>
        <td>
            <select multiple name="roles">
                <g:each in="${com.charlesread.AppRole.list()}" var="appRoleInstance">
                    <option <g:if test="${params.action.equals('create')}">
                    </g:if>
                            <g:elseif test="${com.charlesread.AppUserAppRole.findByAppUserAndAppRole(appUserInstance,appRoleInstance)}">selected </g:elseif>value="${appRoleInstance.id}">   ${appRoleInstance}</option>
                </g:each>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="appUser.accountExpired.label" default="Account Expired" />
        </td>
        <td>
            <g:checkBox name="accountExpired" value="${appUserInstance?.accountExpired}" />
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="appUser.accountLocked.label" default="Account Locked" />
        </td>
        <td>
            <g:checkBox name="accountLocked" value="${appUserInstance?.accountLocked}" />
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="appUser.enabled.label" default="Enabled" />
        </td>
        <td>
            <g:checkBox name="enabled" value="${appUserInstance?.enabled}" />
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="appUser.passwordExpired.label" default="Password Expired" />
        </td>
        <td>
            <g:checkBox name="passwordExpired" value="${appUserInstance?.passwordExpired}" />
        </td>
    </tr>
</table>