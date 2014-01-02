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
        ${scoreValuesInstance.contestant} Core Values Score Report
    </h1>
</div>
<div class="blockWrapper">
    <span class="blockWrapperTitle"><g:message code="score.a1.label" /></span>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="a11" name="s11" criterion="${scoreValuesInstance.s11}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="a12" name="s12" criterion="${scoreValuesInstance.s12}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="a13" name="s13" criterion="${scoreValuesInstance.s13}"></g:reportCriterionBlock>

</div>

<div class="blockWrapper">
    <span class="blockWrapperTitle"><g:message code="score.a2.label" /></span>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="a21" name="s21" criterion="${scoreValuesInstance.s21}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="a22" name="s22" criterion="${scoreValuesInstance.s22}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="a23" name="s23" criterion="${scoreValuesInstance.s23}"></g:reportCriterionBlock>
</div>

<div class="blockWrapper">
    <span class="blockWrapperTitle"><g:message code="score.a3.label" /></span>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="a31" name="s31" criterion="${scoreValuesInstance.s31}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="a32" name="s32" criterion="${scoreValuesInstance.s32}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="projectreportCriterionBlock" code="a33" name="s33" criterion="${scoreValuesInstance.s33}"></g:reportCriterionBlock>
</div>

<div class="blockWrapper">
    <span class="blockWrapperTitle">Comments</span>
    <div class="comment"><g:textArea class="scoreComment" name="scoreComment" value="${scoreValuesInstance?.scoreComment}" /></div>
</div>
</body>
</html>