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
    body {
        font-family:Arial, Helvetica, sans-serif;
    }

    #header {
        height: 50px;
        background-color: #ccc;
        border-top: 1px solid #000;
        border-bottom: 1px solid #000;
        text-align: center;
    }
    #header h1 {
        margin-top: 5px;
    }

    input.roundedOne[type=radio] {
        display: none;
    }
    input.roundedOne[type=radio] + span {
        display: inline-block;
        border-radius:5px;
        padding: 5px;
    }
    input.roundedOne[type=radio]:checked + span {
        background-color: #268DFF;
        color: #fff;
    }
    .blockTitle {
        font-weight: bold;
        font-size: 12px;
    }

    .blockDesc {
        font-size: 10px;
        font-style: italic;

    }

    table.criterionTable tr:nth-child(2) td {
        font-size: 14px;
    }

    .blockWrapperTitle {
        font-size: 14px;
        font-weight: bold;
        padding-top: 10px;
        display: inline-block;
    }
    .reportCriterionBlock {
        border-radius: 5px;
        padding: 3px;
        background-color: #eee;
        margin-top: 5px;
        margin-bottom: 5px;
    }

    table.criterionTable {
        width: 700px;
        /*border: 1px solid #000;*/
        padding: 0px;
    }

    tr.radiorow td span {
        font-size: 10px;
        display: inline-block;
        padding: 5px;
    }

    .checked {
        display: inline-block;
        border-radius:5px;
        padding: 5px;
        background-color: #ccc;
        font-weight: bold;
    }
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
    <div><g:textArea class="scoreComment" name="scoreComment" value="${scoreProjectInstance?.scoreComment}" /></div>
</div>
</body>
</html>