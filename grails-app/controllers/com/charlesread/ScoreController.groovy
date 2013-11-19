package com.charlesread

class ScoreController {

    static scaffold = true

    def aggregate() {
        def c = Score.createCriteria().list() {
            projections {

                groupProperty('contestant')
                avg('agg_total','aggTotal')

            }
            order params.sort ?: 'aggTotal',params.order ?: 'desc'

        }

        def out = new Object[c.size()]
        c.eachWithIndex {v,i ->
            //render v[4]
            out[i] = new Aggregate(contestant: v[0], aggTotal: v[1])
        }
        render(view: 'aggregate', model: [aggregates: out])

    }
}
