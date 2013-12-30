<div class="blockWrapper">
    <span><g:message code="score.c1.label" /></span>
    <g:criterionBlock clazz="technicalCriterionBlock" code="c11" name="s11" criterion="${scoreTechnicalInstance.s11}"></g:criterionBlock>
    <g:criterionBlock clazz="technicalCriterionBlock" code="c12" name="s12" criterion="${scoreTechnicalInstance.s12}"></g:criterionBlock>
    <g:criterionBlock clazz="technicalCriterionBlock" code="c13" name="s13" criterion="${scoreTechnicalInstance.s13}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.c2.label" /></span>
    <g:criterionBlock clazz="technicalCriterionBlock" code="c21" name="s21" criterion="${scoreTechnicalInstance.s21}"></g:criterionBlock>
    <g:criterionBlock clazz="technicalCriterionBlock" code="c22" name="s22" criterion="${scoreTechnicalInstance.s22}"></g:criterionBlock>
    <g:criterionBlock clazz="technicalCriterionBlock" code="c23" name="s23" criterion="${scoreTechnicalInstance.s23}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span><g:message code="score.c3.label" /></span>
    <g:criterionBlock clazz="technicalCriterionBlock" code="c31" name="s31" criterion="${scoreTechnicalInstance.s31}"></g:criterionBlock>
    <g:criterionBlock clazz="technicalCriterionBlock" code="c32" name="s32" criterion="${scoreTechnicalInstance.s32}"></g:criterionBlock>
    <g:criterionBlock clazz="technicalCriterionBlock" code="c33" name="s33" criterion="${scoreTechnicalInstance.s33}"></g:criterionBlock>
</div>

<div class="blockWrapper">
    <span>Comments</span>
    <div><g:textArea class="scoreComment" name="scoreComment" value="${scoreTechnicalInstance?.scoreComment}" /></div>
</div>
