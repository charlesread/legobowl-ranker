package com.charlesread

import grails.plugin.springsecurity.annotation.Secured

class RobotDemoMaxController {

    @Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_REFEREE'])
    def index() {
        params.sort = params.sort ?: 'agg'
        params.order = params.order ?: 'desc'
        [data: RobotDemoMax.list(params)]
    }

    @Secured(['permitAll'])
    def presentation() {
        params.sort = params.sort ?: 'agg'
        params.order = params.order ?: 'desc'

        def queues = Queue.findAll("from Queue a where a.completed = 0 order by a.sequence asc, a.table asc", [max:4])
        println params
        [data: RobotDemoMax.list(params), queues: queues, data1: RobotDemoMax.list(sort: 'agg', order: 'desc', max: 16), data2: RobotDemoMax.list(sort: 'agg', order: 'desc', max: 16, offset: 16), scoreboard: params.scoreboard]
    }

}
