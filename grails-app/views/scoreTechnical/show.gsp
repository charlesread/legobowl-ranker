
<%@ page import="com.charlesread.ScoreTechnical" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'scoreTechnical.label', default: 'ScoreTechnical')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
        <g:render template="nav" />
		<div id="show-scoreTechnical" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
            <table>
                <tr>
                    <td>
                        <g:message code="score.c11.label" default="c11" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="s11" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c12.label" default="c12" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="s12" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c13.label" default="c13" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="s13" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_c1.label" default="Aggc1" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="agg_s1" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <g:message code="score.c21.label" default="c21" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="s21" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c22.label" default="c22" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="s22" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c23.label" default="c23" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="s23" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_c2.label" default="Aggc2" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="agg_s2" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c31.label" default="c31" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="s31" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c32.label" default="c32" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="s32" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c33.label" default="c33" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="s33" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_c3.label" default="Aggc3" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="agg_s3" />
                    </td>
                </tr>
                <tr class="partagg">
                    <td>
                        <g:message code="score.agg_c.label" default="Agga" />
                    </td>
                    <td>
                        <g:fieldValue bean="${scoreTechnicalInstance}" field="agg" />
                    </td>
                </tr>
            </table>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${scoreTechnicalInstance?.id}" />
					<g:link class="edit" action="edit" id="${scoreTechnicalInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
