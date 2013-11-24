package com.charlesread

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class AggregationController {

    def index() {
        def contestants = Contestant.list()
        def numContestants = contestants.size()
        def aggregation = new Object[numContestants]
        contestants.eachWithIndex {v,i ->
            aggregation[i] = aggregate(v)
        }
        def ordering = params.order ?: "desc"
        def out = aggregation.sort {
            def sorting = params.sort ?: "aggTotal"
            it."$sorting"
        }
        if (ordering == "desc") out = out.reverse()
        [aggregates: out]
    }

    private def aggregate(Contestant contestant) {
        def values = ScoreValues.createCriteria().list {
            eq("contestant",contestant)
            projections {
                groupProperty('contestant')
                avg('agg','aggTotal')
            }
        }
        def valuesScore = values[0]?.getAt(1) ?: 0

        def project = ScoreProject.createCriteria().list {
            eq("contestant",contestant)
            projections {
                groupProperty('contestant')
                avg('agg','aggTotal')
            }
        }
        def projectScore = project[0]?.getAt(1) ?: 0

        def technical = ScoreTechnical.createCriteria().list {
            eq("contestant",contestant)
            projections {
                groupProperty('contestant')
                avg('agg','aggTotal')
            }
        }
        def technicalScore = technical[0]?.getAt(1) ?: 0

        return new Aggregate(contestant: contestant, aggA: valuesScore, aggB: projectScore, aggC: technicalScore, aggTotal: (valuesScore + projectScore + technicalScore)/3 )
    }
}

//avg('agg_s1','agg1')
//avg('agg_s2','agg2')
//avg('agg_s2','agg3')
