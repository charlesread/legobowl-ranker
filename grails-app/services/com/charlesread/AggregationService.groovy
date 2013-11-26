package com.charlesread

class AggregationService {

    def aggregate(Contestant contestant) {
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
