<%@ page import="com.charlesread.Score" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'score.label', default: 'Score')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<g:render template="nav" />

<div id="show-score" class="content scaffold-show" role="main">
<h1><g:message code="default.show.label" args="[entityName]"/></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ol class="property-list score">

<g:if test="${scoreInstance?.a11}">
    <li class="fieldcontain">
        <span id="a11-label" class="property-label"><g:message code="score.a11.label" default="A11"/></span>

        <span class="property-value" aria-labelledby="a11-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="a11"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.a12}">
    <li class="fieldcontain">
        <span id="a12-label" class="property-label"><g:message code="score.a12.label" default="A12"/></span>

        <span class="property-value" aria-labelledby="a12-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="a12"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.a13}">
    <li class="fieldcontain">
        <span id="a13-label" class="property-label"><g:message code="score.a13.label" default="A13"/></span>

        <span class="property-value" aria-labelledby="a13-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="a13"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.a21}">
    <li class="fieldcontain">
        <span id="a21-label" class="property-label"><g:message code="score.a21.label" default="A21"/></span>

        <span class="property-value" aria-labelledby="a21-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="a21"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.a22}">
    <li class="fieldcontain">
        <span id="a22-label" class="property-label"><g:message code="score.a22.label" default="A22"/></span>

        <span class="property-value" aria-labelledby="a22-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="a22"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.a23}">
    <li class="fieldcontain">
        <span id="a23-label" class="property-label"><g:message code="score.a23.label" default="A23"/></span>

        <span class="property-value" aria-labelledby="a23-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="a23"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.a31}">
    <li class="fieldcontain">
        <span id="a31-label" class="property-label"><g:message code="score.a31.label" default="A31"/></span>

        <span class="property-value" aria-labelledby="a31-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="a31"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.a32}">
    <li class="fieldcontain">
        <span id="a32-label" class="property-label"><g:message code="score.a32.label" default="A32"/></span>

        <span class="property-value" aria-labelledby="a32-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="a32"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.a33}">
    <li class="fieldcontain">
        <span id="a33-label" class="property-label"><g:message code="score.a33.label" default="A33"/></span>

        <span class="property-value" aria-labelledby="a33-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="a33"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_a}">
    <li class="fieldcontain">
        <span id="agg_a-label" class="property-label"><g:message code="score.agg_a.label" default="Agga"/></span>

        <span class="property-value" aria-labelledby="agg_a-label"><g:fieldValue bean="${scoreInstance}"
                                                                                 field="agg_a"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_a1}">
    <li class="fieldcontain">
        <span id="agg_a1-label" class="property-label"><g:message code="score.agg_a1.label" default="Agga1"/></span>

        <span class="property-value" aria-labelledby="agg_a1-label"><g:fieldValue bean="${scoreInstance}"
                                                                                  field="agg_a1"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_a2}">
    <li class="fieldcontain">
        <span id="agg_a2-label" class="property-label"><g:message code="score.agg_a2.label" default="Agga2"/></span>

        <span class="property-value" aria-labelledby="agg_a2-label"><g:fieldValue bean="${scoreInstance}"
                                                                                  field="agg_a2"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_a3}">
    <li class="fieldcontain">
        <span id="agg_a3-label" class="property-label"><g:message code="score.agg_a3.label" default="Agga3"/></span>

        <span class="property-value" aria-labelledby="agg_a3-label"><g:fieldValue bean="${scoreInstance}"
                                                                                  field="agg_a3"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_b}">
    <li class="fieldcontain">
        <span id="agg_b-label" class="property-label"><g:message code="score.agg_b.label" default="Aggb"/></span>

        <span class="property-value" aria-labelledby="agg_b-label"><g:fieldValue bean="${scoreInstance}"
                                                                                 field="agg_b"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_b1}">
    <li class="fieldcontain">
        <span id="agg_b1-label" class="property-label"><g:message code="score.agg_b1.label" default="Aggb1"/></span>

        <span class="property-value" aria-labelledby="agg_b1-label"><g:fieldValue bean="${scoreInstance}"
                                                                                  field="agg_b1"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_b2}">
    <li class="fieldcontain">
        <span id="agg_b2-label" class="property-label"><g:message code="score.agg_b2.label" default="Aggb2"/></span>

        <span class="property-value" aria-labelledby="agg_b2-label"><g:fieldValue bean="${scoreInstance}"
                                                                                  field="agg_b2"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_b3}">
    <li class="fieldcontain">
        <span id="agg_b3-label" class="property-label"><g:message code="score.agg_b3.label" default="Aggb3"/></span>

        <span class="property-value" aria-labelledby="agg_b3-label"><g:fieldValue bean="${scoreInstance}"
                                                                                  field="agg_b3"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_c}">
    <li class="fieldcontain">
        <span id="agg_c-label" class="property-label"><g:message code="score.agg_c.label" default="Aggc"/></span>

        <span class="property-value" aria-labelledby="agg_c-label"><g:fieldValue bean="${scoreInstance}"
                                                                                 field="agg_c"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_c1}">
    <li class="fieldcontain">
        <span id="agg_c1-label" class="property-label"><g:message code="score.agg_c1.label" default="Aggc1"/></span>

        <span class="property-value" aria-labelledby="agg_c1-label"><g:fieldValue bean="${scoreInstance}"
                                                                                  field="agg_c1"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_c2}">
    <li class="fieldcontain">
        <span id="agg_c2-label" class="property-label"><g:message code="score.agg_c2.label" default="Aggc2"/></span>

        <span class="property-value" aria-labelledby="agg_c2-label"><g:fieldValue bean="${scoreInstance}"
                                                                                  field="agg_c2"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_c3}">
    <li class="fieldcontain">
        <span id="agg_c3-label" class="property-label"><g:message code="score.agg_c3.label" default="Aggc3"/></span>

        <span class="property-value" aria-labelledby="agg_c3-label"><g:fieldValue bean="${scoreInstance}"
                                                                                  field="agg_c3"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.agg_total}">
    <li class="fieldcontain">
        <span id="agg_total-label" class="property-label"><g:message code="score.agg_total.label"
                                                                     default="Aggtotal"/></span>

        <span class="property-value" aria-labelledby="agg_total-label"><g:fieldValue bean="${scoreInstance}"
                                                                                     field="agg_total"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b11}">
    <li class="fieldcontain">
        <span id="b11-label" class="property-label"><g:message code="score.b11.label" default="B11"/></span>

        <span class="property-value" aria-labelledby="b11-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b11"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b12}">
    <li class="fieldcontain">
        <span id="b12-label" class="property-label"><g:message code="score.b12.label" default="B12"/></span>

        <span class="property-value" aria-labelledby="b12-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b12"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b13}">
    <li class="fieldcontain">
        <span id="b13-label" class="property-label"><g:message code="score.b13.label" default="B13"/></span>

        <span class="property-value" aria-labelledby="b13-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b13"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b14}">
    <li class="fieldcontain">
        <span id="b14-label" class="property-label"><g:message code="score.b14.label" default="B14"/></span>

        <span class="property-value" aria-labelledby="b14-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b14"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b21}">
    <li class="fieldcontain">
        <span id="b21-label" class="property-label"><g:message code="score.b21.label" default="B21"/></span>

        <span class="property-value" aria-labelledby="b21-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b21"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b22}">
    <li class="fieldcontain">
        <span id="b22-label" class="property-label"><g:message code="score.b22.label" default="B22"/></span>

        <span class="property-value" aria-labelledby="b22-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b22"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b23}">
    <li class="fieldcontain">
        <span id="b23-label" class="property-label"><g:message code="score.b23.label" default="B23"/></span>

        <span class="property-value" aria-labelledby="b23-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b23"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b31}">
    <li class="fieldcontain">
        <span id="b31-label" class="property-label"><g:message code="score.b31.label" default="B31"/></span>

        <span class="property-value" aria-labelledby="b31-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b31"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b32}">
    <li class="fieldcontain">
        <span id="b32-label" class="property-label"><g:message code="score.b32.label" default="B32"/></span>

        <span class="property-value" aria-labelledby="b32-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b32"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.b33}">
    <li class="fieldcontain">
        <span id="b33-label" class="property-label"><g:message code="score.b33.label" default="B33"/></span>

        <span class="property-value" aria-labelledby="b33-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="b33"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.c11}">
    <li class="fieldcontain">
        <span id="c11-label" class="property-label"><g:message code="score.c11.label" default="C11"/></span>

        <span class="property-value" aria-labelledby="c11-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="c11"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.c12}">
    <li class="fieldcontain">
        <span id="c12-label" class="property-label"><g:message code="score.c12.label" default="C12"/></span>

        <span class="property-value" aria-labelledby="c12-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="c12"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.c13}">
    <li class="fieldcontain">
        <span id="c13-label" class="property-label"><g:message code="score.c13.label" default="C13"/></span>

        <span class="property-value" aria-labelledby="c13-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="c13"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.c21}">
    <li class="fieldcontain">
        <span id="c21-label" class="property-label"><g:message code="score.c21.label" default="C21"/></span>

        <span class="property-value" aria-labelledby="c21-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="c21"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.c22}">
    <li class="fieldcontain">
        <span id="c22-label" class="property-label"><g:message code="score.c22.label" default="C22"/></span>

        <span class="property-value" aria-labelledby="c22-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="c22"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.c23}">
    <li class="fieldcontain">
        <span id="c23-label" class="property-label"><g:message code="score.c23.label" default="C23"/></span>

        <span class="property-value" aria-labelledby="c23-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="c23"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.c31}">
    <li class="fieldcontain">
        <span id="c31-label" class="property-label"><g:message code="score.c31.label" default="C31"/></span>

        <span class="property-value" aria-labelledby="c31-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="c31"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.c32}">
    <li class="fieldcontain">
        <span id="c32-label" class="property-label"><g:message code="score.c32.label" default="C32"/></span>

        <span class="property-value" aria-labelledby="c32-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="c32"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.c33}">
    <li class="fieldcontain">
        <span id="c33-label" class="property-label"><g:message code="score.c33.label" default="C33"/></span>

        <span class="property-value" aria-labelledby="c33-label"><g:fieldValue bean="${scoreInstance}"
                                                                               field="c33"/></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.contestant}">
    <li class="fieldcontain">
        <span id="contestant-label" class="property-label"><g:message code="score.contestant.label"
                                                                      default="Contestant"/></span>

        <span class="property-value" aria-labelledby="contestant-label"><g:link controller="contestant" action="show"
                                                                                id="${scoreInstance?.contestant?.id}">${scoreInstance?.contestant?.encodeAsHTML()}</g:link></span>

    </li>
</g:if>

<g:if test="${scoreInstance?.judge}">
    <li class="fieldcontain">
        <span id="judge-label" class="property-label"><g:message code="score.judge.label" default="Judge"/></span>

        <span class="property-value" aria-labelledby="judge-label"><g:link controller="judge" action="show"
                                                                           id="${scoreInstance?.judge?.id}">${scoreInstance?.judge?.encodeAsHTML()}</g:link></span>

    </li>
</g:if>

</ol>
<g:form>
    <fieldset class="buttons">
        <g:hiddenField name="id" value="${scoreInstance?.id}"/>
        <g:link class="edit" action="edit" id="${scoreInstance?.id}"><g:message code="default.button.edit.label"
                                                                                default="Edit"/></g:link>
        <g:actionSubmit class="delete" action="delete"
                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    </fieldset>
</g:form>
</div>
</body>
</html>
