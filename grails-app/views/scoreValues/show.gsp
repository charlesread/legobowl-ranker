
<%@ page import="com.charlesread.ScoreValues" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scoreValues.label', default: 'ScoreValues')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="nav" />
		<div id="show-scoreValues" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table>
                <tr>
                    <td>
                        <g:message code="score.a11.label" default="A11" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="s11" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a12.label" default="A12" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="s12" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a13.label" default="A13" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="s13" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_a1.label" default="Agga1" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="agg_s1" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <g:message code="score.a21.label" default="A21" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="s21" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a22.label" default="A22" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="s22" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a23.label" default="A23" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="s23" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_a2.label" default="Agga2" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="agg_s2" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a31.label" default="A31" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="s31" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a32.label" default="A32" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="s32" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a33.label" default="A33" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="s33" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_a3.label" default="Agga3" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="agg_s3" />
                    </td>
                </tr>
                <tr class="partagg">
                    <td>
                        <g:message code="score.agg_a.label" default="Agga" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreValuesInstance}" field="agg" />
                    </td>
                </tr>
            </table>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${scoreValuesInstance?.id}" />
					<g:link class="edit" action="edit" id="${scoreValuesInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
