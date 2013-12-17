
<%@ page import="com.charlesread.RobotDemo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'robotDemo.label', default: 'RobotDemo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
        <style>
            input[type=text] {
                width: 30px;
                margin: 0px;
                background-color: #888;
            }
            tbody tr {
                height: 45px;
            }
        </style>
	</head>
	<body>
        <g:render template="nav"/>
		<div id="show-robotDemo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:form method="post" >
			<table class="list">
			    <thead>
                    <th><a href="">Criterion</a></th>
                    <th><a href="">Score</a></th>
			    </thead>
				<tr>
                    <td><g:message code="robotDemo.agg.label" default="Agg" /></td>
                    <td><g:fieldValue bean="${robotDemoInstance}" field="agg"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.contestant.label" default="Contestant" /></td>
                    <td><g:link controller="contestant" action="show" id="${robotDemoInstance?.contestant?.id}">${robotDemoInstance?.contestant?.encodeAsHTML()}</g:link></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.judge.label" default="Judge" /></td>
                    <td><g:link controller="appUser" action="show" id="${robotDemoInstance?.judge?.id}">${robotDemoInstance?.judge?.encodeAsHTML()}</g:link></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s1.label" default="S1" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s1"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s2b.label" default="S2" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s2"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s3b.label" default="S3" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s3"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s4.label" default="S4" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s4"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s5b.label" default="S5" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s5"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s6.label" default="S6" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s6"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s7.label" default="S7" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s7"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s8c.label" default="S8" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s8"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s9.label" default="S9" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s9"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s10b.label" default="S10" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s10"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s11.label" default="S11" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s11"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s12.label" default="S12" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s12"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s13.label" default="S13" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s13"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s14.label" default="S14" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s14"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s15.label" default="S15" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s15"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s16.label" default="S16" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s16"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s17.label" default="S17" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s17"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s18.label" default="S18" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s18"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s19.label" default="S19" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s19"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s20.label" default="S20" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s20"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s21.label" default="S21" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s21"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s22.label" default="S22" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s22"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s23.label" default="S23" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s23"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s24.label" default="S24" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s24"/></td>
                </tr>

                <tr>
                    <td><g:message code="robotDemo.s25.label" default="S25" /></td>
                    <td><g:editable bean="${robotDemoInstance}" field="s25"/></td>
                </tr>


			
			</table>
			%{--<g:form>--}%
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${robotDemoInstance?.id}" />
					%{--<g:link class="update" action="edit" id="${robotDemoInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
                    <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
