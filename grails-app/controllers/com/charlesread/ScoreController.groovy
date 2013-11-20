package com.charlesread

class ScoreController {

    static scaffold = true

    def aggregate() {
        def c = Score.createCriteria().list() {
            projections {

                groupProperty('contestant')
                avg('agg_a','aggA')
                avg('agg_b','aggB')
                avg('agg_c','aggC')
                avg('agg_total','aggTotal')

            }
            order params.sort ?: 'aggTotal',params.order ?: 'desc'

        }

        def out = new Object[c.size()]
        c.eachWithIndex {v,i ->
            out[i] = new Aggregate(contestant: v[0], aggA: v[1], aggB: v[2], aggC: v[3], aggTotal: v[4])
        }
        render(view: 'aggregate', model: [aggregates: out])

    }
}
