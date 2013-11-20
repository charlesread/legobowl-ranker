<%@ page import="com.charlesread.AppUserAppRole" %>



<div class="fieldcontain ${hasErrors(bean: appUserAppRoleInstance, field: 'appRole', 'error')} required">
	<label for="appRole">
		<g:message code="appUserAppRole.appRole.label" default="App Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="appRole" name="appRole.id" from="${com.charlesread.AppRole.list()}" optionKey="id" required="" value="${appUserAppRoleInstance?.appRole?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: appUserAppRoleInstance, field: 'appUser', 'error')} required">
	<label for="appUser">
		<g:message code="appUserAppRole.appUser.label" default="App User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="appUser" name="appUser.id" from="${com.charlesread.AppUser.list()}" optionKey="id" required="" value="${appUserAppRoleInstance?.appUser?.id}" class="many-to-one"/>
</div>

