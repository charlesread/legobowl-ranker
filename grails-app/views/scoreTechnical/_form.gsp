<%@ page import="com.charlesread.ScoreTechnical" %>

<table class="scoreInfo">
    <tr>
        <td>
            <label for="contestant">
                <g:message code="score.contestant.label" default="Contestant"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select noSelection="['':'---select a contestant---']" id="contestant" name="contestant.id" from="${com.charlesread.Contestant.list()}" optionKey="id"
                      value="${scoreTechnicalInstance?.contestant?.id}" class="many-to-one"/>
        </td>
        <sec:ifNotGranted roles="ROLE_ADMIN">
            <input type="hidden" name="judge.id" value="<sec:loggedInUserInfo field='id' />" />

        </sec:ifNotGranted>


        <sec:ifAnyGranted roles="ROLE_ADMIN">
            <td>
                <label for="judge">
                    <g:message code="score.judge.label" default="Judge"/>
                    <span class="required-indicator">*</span>
                </label>
                <g:select id="judge" name="judge.id" from="${com.charlesread.AppUser.list()}" optionKey="id" required=""
                          value="${scoreTechnicalInstance?.judge?.id}" class="many-to-one"/>
            </td>
        </sec:ifAnyGranted>

    </tr>
</table>

<div class="blockWrapper">
    <span><g:message code="score.c1.label" /></span>
    <g:criterionBlock color="#DBEFFF" code="c11" name="s11" criterion="${scoreTechnicalInstance.s11}"></g:criterionBlock>
    <g:criterionBlock color="#DBEFFF" code="c12" name="s12" criterion="${scoreTechnicalInstance.s12}"></g:criterionBlock>
    <g:criterionBlock color="#DBEFFF" code="c13" name="s13" criterion="${scoreTechnicalInstance.s13}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.c2.label" /></span>
    <g:criterionBlock color="#DBEFFF" code="c21" name="s21" criterion="${scoreTechnicalInstance.s21}"></g:criterionBlock>
    <g:criterionBlock color="#DBEFFF" code="c22" name="s22" criterion="${scoreTechnicalInstance.s22}"></g:criterionBlock>
    <g:criterionBlock color="#DBEFFF" code="c23" name="s23" criterion="${scoreTechnicalInstance.s23}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.c3.label" /></span>
    <g:criterionBlock color="#DBEFFF" code="c31" name="s31" criterion="${scoreTechnicalInstance.s31}"></g:criterionBlock>
    <g:criterionBlock color="#DBEFFF" code="c32" name="s32" criterion="${scoreTechnicalInstance.s32}"></g:criterionBlock>
    <g:criterionBlock color="#DBEFFF" code="c33" name="s33" criterion="${scoreTechnicalInstance.s33}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Comments</span>
    <div><g:textArea class="scoreComment" name="scoreComment" value="${scoreTechnicalInstance?.scoreComment}" /></div>
</div>
