<%@ page import="com.charlesread.Score" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'score.label', default: 'Score')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-score" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-score" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list score">

        <g:if test="${scoreInstance?.c1}">
            <li class="fieldcontain">
                <span id="c1-label" class="property-label"><g:message code="score.c1.label" default="C1"/></span>

                <span class="property-value" aria-labelledby="c1-label"><g:fieldValue bean="${scoreInstance}"
                                                                                      field="c1"/></span>

            </li>
        </g:if>

        <g:if test="${scoreInstance?.c2}">
            <li class="fieldcontain">
                <span id="c2-label" class="property-label"><g:message code="score.c2.label" default="C2"/></span>

                <span class="property-value" aria-labelledby="c2-label"><g:fieldValue bean="${scoreInstance}"
                                                                                      field="c2"/></span>

            </li>
        </g:if>

        <g:if test="${scoreInstance?.c3}">
            <li class="fieldcontain">
                <span id="c3-label" class="property-label"><g:message code="score.c3.label" default="C3"/></span>

                <span class="property-value" aria-labelledby="c3-label"><g:fieldValue bean="${scoreInstance}"
                                                                                      field="c3"/></span>

            </li>
        </g:if>

        <g:if test="${scoreInstance?.contestant}">
            <li class="fieldcontain">
                <span id="contestant-label" class="property-label"><g:message code="score.contestant.label"
                                                                              default="Contestant"/></span>

                <span class="property-value" aria-labelledby="contestant-label"><g:link controller="contestant"
                                                                                        action="show"
                                                                                        id="${scoreInstance?.contestant?.id}">${scoreInstance?.contestant?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${scoreInstance?.judge}">
            <li class="fieldcontain">
                <span id="judge-label" class="property-label"><g:message code="score.judge.label"
                                                                         default="Judge"/></span>

                <span class="property-value" aria-labelledby="judge-label"><g:link controller="judge" action="show"
                                                                                   id="${scoreInstance?.judge?.id}">${scoreInstance?.judge?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${scoreInstance?.sum}">
            <li class="fieldcontain">
                <span id="sum-label" class="property-label"><g:message code="score.sum.label" default="Sum"/></span>

                <span class="property-value" aria-labelledby="sum-label"><g:fieldValue bean="${scoreInstance}"
                                                                                       field="sum"/></span>

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
