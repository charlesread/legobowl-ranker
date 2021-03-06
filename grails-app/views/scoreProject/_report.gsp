<%--
  Created by IntelliJ IDEA.
  User: charles
  Date: 12/29/13
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <style>
        <g:render contextPath="/common" template="reportcss" />
    </style>
</head>
<body>
<div id="header">
    <h1>
        ${scoreProjectInstance.contestant} Project Score Report
    </h1>
</div>
<div class="blockWrapper">
    <span class="blockWrapperTitle"><g:message code="score.b1.label" /></span>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b11" name="s11" criterion="${scoreProjectInstance.s11}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b12" name="s12" criterion="${scoreProjectInstance.s12}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b13" name="s13" criterion="${scoreProjectInstance.s13}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b14" name="s14" criterion="${scoreProjectInstance.s14}"></g:reportCriterionBlock>
</div>

<div class="blockWrapper">
    <span class="blockWrapperTitle"><g:message code="score.b2.label" /></span>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b21" name="s21" criterion="${scoreProjectInstance.s21}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b22" name="s22" criterion="${scoreProjectInstance.s22}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b23" name="s23" criterion="${scoreProjectInstance.s23}"></g:reportCriterionBlock>
</div>

<div class="blockWrapper">
    <span class="blockWrapperTitle"><g:message code="score.b3.label" /></span>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b31" name="s31" criterion="${scoreProjectInstance.s31}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b32" name="s32" criterion="${scoreProjectInstance.s32}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="b33" name="s33" criterion="${scoreProjectInstance.s33}"></g:reportCriterionBlock>
</div>

<div class="blockWrapper">
    <span class="blockWrapperTitle">Comments</span>
    <div class="comment"><g:textArea class="scoreComment" name="scoreComment" value="${scoreProjectInstance?.scoreComment}" /></div>
</div>
</body>
</html>