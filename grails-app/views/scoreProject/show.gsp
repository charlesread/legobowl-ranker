
<%@ page import="com.charlesread.ScoreProject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scoreProject.label', default: 'ScoreProject')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="nav" />
		<div id="show-scoreProject" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table class="list">
                <thead>
                    <th><a href="">Criterion</a></th>
                    <th><a href="">Value</a></th>
                </thead>
                <tr>
                    <td>
                        <g:message code="score.b11.label" default="b11" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s11" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b12.label" default="b12" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s12" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b13.label" default="b13" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s13" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b14.label" default="b13" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s14" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_b1.label" default="Aggb1" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="agg_s1" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <g:message code="score.b21.label" default="b21" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s21" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b22.label" default="b22" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s22" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b23.label" default="b23" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s23" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_b2.label" default="Aggb2" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="agg_s2" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b31.label" default="b31" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s31" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b32.label" default="b32" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s32" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b33.label" default="b33" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="s33" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_b3.label" default="Aggb3" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="agg_s3" />
                    </td>
                </tr>
                <tr class="partagg">
                    <td>
                        <g:message code="score.agg_b.label" default="Agga" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreProjectInstance}" field="agg" />
                    </td>
                </tr>
            </table>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${scoreProjectInstance?.id}" />
					<g:link class="edit" action="edit" id="${scoreProjectInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
                    <g:actionSubmitLink class="blueButton" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="deleteConfirm()" />
                </fieldset>
			</g:form>
        %{--<g:pdfLink url="/scoreProject/show/${scoreProjectInstance?.id}">PDF View</g:pdfLink>--}%
		</div>
	</body>
</html>
