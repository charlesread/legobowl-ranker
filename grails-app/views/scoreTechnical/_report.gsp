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
        ${scoreTechnicalInstance.contestant} Core Values Score Report
    </h1>
</div>
<div class="blockWrapper">
    <span class="blockWrapperTitle"><g:message code="score.c1.label" /></span>
    <g:reportCriterionBlock clazz="technicalreportCriterionBlock" code="c11" name="s11" criterion="${scoreTechnicalInstance.s11}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="technicalreportCriterionBlock" code="c12" name="s12" criterion="${scoreTechnicalInstance.s12}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="technicalreportCriterionBlock" code="c13" name="s13" criterion="${scoreTechnicalInstance.s13}"></g:reportCriterionBlock>
</div>

<div class="blockWrapper">
    <span class="blockWrapperTitle"><g:message code="score.c2.label" /></span>
    <g:reportCriterionBlock clazz="technicalreportCriterionBlock" code="c21" name="s21" criterion="${scoreTechnicalInstance.s21}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="technicalreportCriterionBlock" code="c22" name="s22" criterion="${scoreTechnicalInstance.s22}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="technicalreportCriterionBlock" code="c23" name="s23" criterion="${scoreTechnicalInstance.s23}"></g:reportCriterionBlock>
</div>

<div class="blockWrapper">
    <span class="blockWrapperTitle"><g:message code="score.c3.label" /></span>
    <g:reportCriterionBlock clazz="technicalreportCriterionBlock" code="c31" name="s31" criterion="${scoreTechnicalInstance.s31}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="technicalreportCriterionBlock" code="c32" name="s32" criterion="${scoreTechnicalInstance.s32}"></g:reportCriterionBlock>
    <g:reportCriterionBlock clazz="technicalreportCriterionBlock" code="c33" name="s33" criterion="${scoreTechnicalInstance.s33}"></g:reportCriterionBlock>
</div>

<div class="blockWrapper">
    <span class="blockWrapperTitle">Comments</span>
    <div class="comment"><g:textArea class="scoreComment" name="scoreComment" value="${scoreTechnicalInstance?.scoreComment}" /></div>
</div>
</body>
</html>