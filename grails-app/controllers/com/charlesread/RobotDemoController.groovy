package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER'])
class RobotDemoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        params.sort = params.sort ?: 'contestant'
        [robotDemoInstanceList: RobotDemo.list(params), robotDemoInstanceTotal: RobotDemo.count()]
    }

    def create() {
        [robotDemoInstance: new RobotDemo(params)]
    }

    def save() {
        def robotDemoInstance = new RobotDemo(params)
        if (!robotDemoInstance.save(flush: true)) {
            render(view: "create", model: [robotDemoInstance: robotDemoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'robotDemo.label', default: 'RobotDemo'), robotDemoInstance.id])
        redirect(action: "show", id: robotDemoInstance.id)
    }

    def show(Long id) {
        def robotDemoInstance = RobotDemo.get(id)
        if (!robotDemoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'robotDemo.label', default: 'RobotDemo'), id])
            redirect(action: "list")
            return
        }

        [robotDemoInstance: robotDemoInstance]
    }

    def edit(Long id) {
        def robotDemoInstance = RobotDemo.get(id)
        if (!robotDemoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'robotDemo.label', default: 'RobotDemo'), id])
            redirect(action: "list")
            return
        }

        [robotDemoInstance: robotDemoInstance]
    }

    def update(Long id, Long version) {
        def robotDemoInstance = RobotDemo.get(id)
        if (!robotDemoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'robotDemo.label', default: 'RobotDemo'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (robotDemoInstance.version > version) {
                robotDemoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'robotDemo.label', default: 'RobotDemo')] as Object[],
                        "Another user has updated this RobotDemo while you were editing")
                render(view: "edit", model: [robotDemoInstance: robotDemoInstance])
                return
            }
        }

        robotDemoInstance.properties = params

        if (!robotDemoInstance.save(flush: true)) {
            render(view: "edit", model: [robotDemoInstance: robotDemoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'robotDemo.label', default: 'RobotDemo'), robotDemoInstance.id])
        redirect(action: "show", id: robotDemoInstance.id)
    }

    def delete(Long id) {
        def robotDemoInstance = RobotDemo.get(id)
        if (!robotDemoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'robotDemo.label', default: 'RobotDemo'), id])
            redirect(action: "list")
            return
        }

        try {
            robotDemoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'robotDemo.label', default: 'RobotDemo'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'robotDemo.label', default: 'RobotDemo'), id])
            redirect(action: "show", id: id)
        }
    }
}
