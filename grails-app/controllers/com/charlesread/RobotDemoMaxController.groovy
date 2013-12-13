package com.charlesread

import grails.plugin.springsecurity.annotation.Secured


@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class RobotDemoMaxController {

    def index() {
        [data: RobotDemoMax.list()]
    }

    def presentation() {
        [data: RobotDemoMax.list()]
    }
}
