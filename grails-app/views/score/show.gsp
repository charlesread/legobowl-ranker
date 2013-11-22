<%@ page import="com.charlesread.Score" %>
<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'score.label', default: 'Score')}" />
    <title>
        <g:message code="default.show.label" args="[entityName]" />
    </title>
    <style>
        .areaagg {
            background-color: #ddd;
        }
        .partagg {
            background-color: #bbb;
        }
        .totalaverage {
            background-color: #aaa;
        }
        .areaagg,.partagg,.totalaverage{
            font-weight: bold;
        }
    </style>
</head>

<body>
<g:render template="nav" />
<div id="show-score" class="content scaffold-show" role="main">

<h1><g:message code="default.show.label" args="[entityName]"/></h1>

<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<table>
    <tr>
        <td>
            <g:message code="score.contestant.label" default="Contestant" />
        </td>
        <td>
            ${scoreInstance?.contestant?.encodeAsHTML()}
        </td>
    </tr>
    <tr>
        <td>
            <g:message code="score.judge.label" default="Judge" />
        </td>
        <td>
           ${scoreInstance?.judge?.encodeAsHTML()}
        </td>
    </tr>
</table>
<table>
<tr>
    <td>
        <g:message code="score.a11.label" default="A11" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="a11" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.a12.label" default="A12" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="a12" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.a13.label" default="A13" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="a13" />
    </td>
</tr>
<tr class="areaagg">
    <td>
        <g:message code="score.agg_a1.label" default="Agga1" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_a1" />
    </td>
</tr>

<tr>
    <td>
        <g:message code="score.a21.label" default="A21" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="a21" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.a22.label" default="A22" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="a22" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.a23.label" default="A23" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="a23" />
    </td>
</tr>
<tr class="areaagg">
    <td>
        <g:message code="score.agg_a2.label" default="Agga2" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_a2" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.a31.label" default="A31" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="a31" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.a32.label" default="A32" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="a32" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.a33.label" default="A33" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="a33" />
    </td>
</tr>
<tr class="areaagg">
    <td>
        <g:message code="score.agg_a3.label" default="Agga3" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_a3" />
    </td>
</tr>
<tr class="partagg">
    <td>
        <g:message code="score.agg_a.label" default="Agga" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_a" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b11.label" default="B11" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b11" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b12.label" default="B12" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b12" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b13.label" default="B13" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b13" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b14.label" default="B14" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b14" />
    </td>
</tr>
<tr class="areaagg">
    <td>
        <g:message code="score.agg_b1.label" default="Aggb1" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_b1" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b21.label" default="B21" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b21" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b22.label" default="B22" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b22" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b23.label" default="B23" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b23" />
    </td>
</tr>
<tr class="areaagg">
    <td>
        <g:message code="score.agg_b2.label" default="Aggb2" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_b2" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b31.label" default="B31" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b31" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b32.label" default="B32" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b32" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.b33.label" default="B33" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="b33" />
    </td>
</tr>
<tr class="areaagg">
    <td>
        <g:message code="score.agg_b3.label" default="Aggb3" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_b3" />
    </td>
</tr>
<tr class="partagg">
    <td>
        <g:message code="score.agg_b.label" default="Aggb" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_b" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.c11.label" default="C11" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="c11" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.c12.label" default="C12" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="c12" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.c13.label" default="C13" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="c13" />
    </td>
</tr>
<tr class="areaagg">
    <td>
        <g:message code="score.agg_c1.label" default="Aggc1" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_c1" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.c21.label" default="C21" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="c21" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.c22.label" default="C22" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="c22" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.c23.label" default="C23" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="c23" />
    </td>
</tr>
<tr class="areaagg">
    <td>
        <g:message code="score.agg_c2.label" default="Aggc2" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_c2" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.c31.label" default="C31" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="c31" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.c32.label" default="C32" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="c32" />
    </td>
</tr>
<tr>
    <td>
        <g:message code="score.c33.label" default="C33" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="c33" />
    </td>
</tr>
<tr class="areaagg">
    <td>
        <g:message code="score.agg_c3.label" default="Aggc3" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_c3" />
    </td>
</tr>
<tr class="partagg">
    <td>
        <g:message code="score.agg_c.label" default="Aggc" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_c" />
    </td>
</tr>
<tr class="totalaverage">
    <td>
        <g:message code="score.agg_total.label" default="Aggtotal" />
    </td>
    <td>
        <g:fieldValue bean="${scoreInstance}" field="agg_total" />
    </td>
</tr>
</table>
<g:form>
    <fieldset class="buttons">
        <g:hiddenField name="id" value="${scoreInstance?.id}" />
        <g:link class="edit" action="edit" id="${scoreInstance?.id}">
            <g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </fieldset>
</g:form>
</div>
</body>

</html>