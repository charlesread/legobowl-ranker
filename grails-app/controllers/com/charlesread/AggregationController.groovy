package com.charlesread

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER', 'ROLE_JUDGE'])
class AggregationController {

    def aggregationService

    def index() {
        def contestants = Contestant.list()
        def numContestants = contestants.size()
        def aggregation = new Object[numContestants]
        contestants.eachWithIndex {v,i ->
            aggregation[i] = aggregationService.aggregate(v)
        }
        def ordering = params.order ?: "desc"
        def out = aggregation.sort {
            def sorting = params.sort ?: "aggTotal"
            it."$sorting"
        }
        if (ordering == "desc") out = out.reverse()
        [aggregates: out]
    }

    def contestantReport() {

        Contestant contestant = Contestant.get(params.id)
        renderPdf(template: "/aggregation/report", model: [totals: aggregationService.aggregate(contestant), values: ScoreValues.findAllByContestant(contestant), projects: ScoreProject.findAllByContestant(contestant), technicals: ScoreTechnical.findAllByContestant(contestant)], filename: "${contestant.name} Score Report.pdf")

    }
}

//avg('agg_s1','agg1')
//avg('agg_s2','agg2')
//avg('agg_s2','agg3')
