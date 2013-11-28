<table class="overall list">
    <thead>
    <th><g:message code="score.agg_a.label" /></th>
    <th><g:message code="score.agg_b.label" /></th>
    <th><g:message code="score.agg_c.label" /></th>
    <th>Overall Average</th>
    </thead>
    <tbody>
    <tr>
        <td>
            ${totals.aggA}
        </td>
        <td>
            ${totals.aggB}
        </td>
        <td>
            ${totals.aggC}
        </td>
        <td>
            ${totals.aggTotal}
        </td>
    </tr>
    </tbody>
</table>
<table class="scores" >
<tr>
<td >
    <span class="criteria">Core Values Criteria</span>
    <g:each in="${values}" var="value" status="i">
        <div class="scoreWrapper">

            <table class="list">
                <thead>
                    <th><span class="judge">Judge ${i+1}</span></th>
                <th></th>
                </thead>
                <tr>
                    <td>
                        <g:message code="score.a11.label" default="A11" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="s11" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a12.label" default="A12" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="s12" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a13.label" default="A13" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="s13" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_a1.label" default="Agga1" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="agg_s1" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <g:message code="score.a21.label" default="A21" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="s21" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a22.label" default="A22" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="s22" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a23.label" default="A23" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="s23" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_a2.label" default="Agga2" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="agg_s2" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a31.label" default="A31" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="s31" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a32.label" default="A32" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="s32" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.a33.label" default="A33" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="s33" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_a3.label" default="Agga3" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="agg_s3" />
                    </td>
                </tr>
                <tr class="partagg">
                    <td>
                        <g:message code="score.agg_a.label" default="Agga" />
                    </td>
                    <td>
                        <g:fieldValue bean="${value}" field="agg" />
                    </td>
                </tr>
            </table>
        </div>
    </g:each>
</td>
<td >
    <span class="criteria">Project Criteria</span>
    <g:each in="${projects}" var="project" status="i">
        <div class="scoreWrapper">
            <table class="list">
                <thead>
                    <th><span class="judge">Judge ${i+1}</span></th>
                    <th></th>
                </thead>
                <tr>
                    <td>
                        <g:message code="score.b11.label" default="b11" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s11" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b12.label" default="b12" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s12" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b13.label" default="b13" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s13" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b14.label" default="b13" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s14" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_b1.label" default="Aggb1" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="agg_s1" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <g:message code="score.b21.label" default="b21" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s21" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b22.label" default="b22" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s22" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b23.label" default="b23" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s23" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_b2.label" default="Aggb2" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="agg_s2" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b31.label" default="b31" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s31" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b32.label" default="b32" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s32" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.b33.label" default="b33" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="s33" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_b3.label" default="Aggb3" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="agg_s3" />
                    </td>
                </tr>
                <tr class="partagg">
                    <td>
                        <g:message code="score.agg_b.label" default="Agga" />
                    </td>
                    <td>
                        <g:fieldValue bean="${project}" field="agg" />
                    </td>
                </tr>
            </table>
        </div>
    </g:each>
</td>
<td >
    <span class="criteria">Technical Criteria</span>
    <g:each in="${technicals}" var="technical" status="i">
        <div class="scoreWrapper">
            <table class="list">
                <thead>
                    <th><span class="judge">Judge ${i+1}</span></th>
                    <th></th>
                </thead>
                <tr>
                    <td>
                        <g:message code="score.c11.label" default="c11" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="s11" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c12.label" default="c12" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="s12" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c13.label" default="c13" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="s13" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_c1.label" default="Aggc1" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="agg_s1" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <g:message code="score.c21.label" default="c21" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="s21" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c22.label" default="c22" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="s22" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c23.label" default="c23" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="s23" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_c2.label" default="Aggc2" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="agg_s2" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c31.label" default="c31" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="s31" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c32.label" default="c32" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="s32" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <g:message code="score.c33.label" default="c33" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="s33" />
                    </td>
                </tr>
                <tr class="areaagg">
                    <td>
                        <g:message code="score.agg_c3.label" default="Aggc3" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="agg_s3" />
                    </td>
                </tr>
                <tr class="partagg">
                    <td>
                        <g:message code="score.agg_c.label" default="Agga" />
                    </td>
                    <td>
                        <g:fieldValue bean="${technical}" field="agg" />
                    </td>
                </tr>
            </table>
        </div>
    </g:each>
</td>
</tr>
</table>
