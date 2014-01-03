
<%@ page import="com.charlesread.AppRole; com.charlesread.AppUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'appUser.label', default: 'AppUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
    <g:render template="nav" />
		<div id="list-appUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="list">
				<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'appUser.username.label', default: 'Username')}" />

                        <th><a href="">Judge</a></th>

                        <th><a href="">Referee</a></th>

                        <g:sortableColumn property="criteriaGroup" title="Group" />

                        <g:sortableColumn property="room.name" title="Room" />


					
						<g:sortableColumn property="accountExpired" title="${message(code: 'appUser.accountExpired.label', default: 'Account Expired')}" />
					
						<g:sortableColumn property="accountLocked" title="${message(code: 'appUser.accountLocked.label', default: 'Account Locked')}" />
					
						<g:sortableColumn property="enabled" title="${message(code: 'appUser.enabled.label', default: 'Enabled')}" />
					
						<g:sortableColumn property="passwordExpired" title="${message(code: 'appUser.passwordExpired.label', default: 'Password Expired')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${appUserInstanceList}" status="i" var="appUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${appUserInstance.id}">${fieldValue(bean: appUserInstance, field: "username")}</g:link></td>

                        <td>${com.charlesread.AppUserAppRole.findByAppUserAndAppRole(appUserInstance,AppRole.findByAuthority('ROLE_JUDGE')) || com.charlesread.AppUserAppRole.findByAppUserAndAppRole(appUserInstance,AppRole.findByAuthority('ROLE_USER')) || com.charlesread.AppUserAppRole.findByAppUserAndAppRole(appUserInstance,AppRole.findByAuthority('ROLE_ADMIN')) ? '&#10003;' : ''}</td>

                        <td>${com.charlesread.AppUserAppRole.findByAppUserAndAppRole(appUserInstance,AppRole.findByAuthority('ROLE_REFEREE')) || com.charlesread.AppUserAppRole.findByAppUserAndAppRole(appUserInstance,AppRole.findByAuthority('ROLE_USER')) || com.charlesread.AppUserAppRole.findByAppUserAndAppRole(appUserInstance,AppRole.findByAuthority('ROLE_ADMIN')) ? '&#10003;' : ''}</td>

                        <td>${appUserInstance?.criteriaGroup}</td>

                        <td>${appUserInstance?.room?.name}</td>

                        <td><g:formatBoolean boolean="${appUserInstance.accountExpired}" /></td>
					
						<td><g:formatBoolean boolean="${appUserInstance.accountLocked}" /></td>
					
						<td><g:formatBoolean boolean="${appUserInstance.enabled}" /></td>
					
						<td><g:formatBoolean boolean="${appUserInstance.passwordExpired}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${appUserInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
