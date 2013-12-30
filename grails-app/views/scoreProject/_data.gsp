<div class="blockWrapper">
    <span><g:message code="score.b1.label" /></span>
    <g:criterionBlock clazz="projectCriterionBlock" code="b11" name="s11" criterion="${scoreProjectInstance.s11}"></g:criterionBlock>
    <g:criterionBlock clazz="projectCriterionBlock" code="b12" name="s12" criterion="${scoreProjectInstance.s12}"></g:criterionBlock>
    <g:criterionBlock clazz="projectCriterionBlock" code="b13" name="s13" criterion="${scoreProjectInstance.s13}"></g:criterionBlock>
    <g:criterionBlock clazz="projectCriterionBlock" code="b14" name="s14" criterion="${scoreProjectInstance.s14}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.b2.label" /></span>
    <g:criterionBlock clazz="projectCriterionBlock" code="b21" name="s21" criterion="${scoreProjectInstance.s21}"></g:criterionBlock>
    <g:criterionBlock clazz="projectCriterionBlock" code="b22" name="s22" criterion="${scoreProjectInstance.s22}"></g:criterionBlock>
    <g:criterionBlock clazz="projectCriterionBlock" code="b23" name="s23" criterion="${scoreProjectInstance.s23}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.b3.label" /></span>
    <g:criterionBlock clazz="projectCriterionBlock" code="b31" name="s31" criterion="${scoreProjectInstance.s31}"></g:criterionBlock>
    <g:criterionBlock clazz="projectCriterionBlock" code="b32" name="s32" criterion="${scoreProjectInstance.s32}"></g:criterionBlock>
    <g:criterionBlock clazz="projectCriterionBlock" code="b33" name="s33" criterion="${scoreProjectInstance.s33}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Comments</span>
    <div><g:textArea class="scoreComment" name="scoreComment" value="${scoreProjectInstance?.scoreComment}" /></div>
</div>