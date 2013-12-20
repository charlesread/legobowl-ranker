package com.charlesread

import grails.plugin.springsecurity.annotation.Secured


@Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_REFEREE'])
class RobotDemoMaxController {

    def index() {
        params.sort = params.sort ?: 'agg'
        params.order = params.order ?: 'desc'
        [data: RobotDemoMax.list(params)]
    }

    def presentation() {
        params.sort = params.sort ?: 'agg'
        params.order = params.order ?: 'desc'
        [data: RobotDemoMax.list(params)]
    }

    def audio() {}
}
