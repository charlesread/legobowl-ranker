package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class RobotDemoTableController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [robotDemoTableInstanceList: RobotDemoTable.list(params), robotDemoTableInstanceTotal: RobotDemoTable.count()]
    }

    def create() {
        [robotDemoTableInstance: new RobotDemoTable(params)]
    }

    def save() {
        def robotDemoTableInstance = new RobotDemoTable(params)
        if (!robotDemoTableInstance.save(flush: true)) {
            render(view: "create", model: [robotDemoTableInstance: robotDemoTableInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'robotDemoTable.label', default: 'RobotDemoTable'), robotDemoTableInstance.id])
        redirect(action: "show", id: robotDemoTableInstance.id)
    }

    def show(Long id) {
        def robotDemoTableInstance = RobotDemoTable.get(id)
        if (!robotDemoTableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'robotDemoTable.label', default: 'RobotDemoTable'), id])
            redirect(action: "list")
            return
        }

        [robotDemoTableInstance: robotDemoTableInstance]
    }

    def edit(Long id) {
        def robotDemoTableInstance = RobotDemoTable.get(id)
        if (!robotDemoTableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'robotDemoTable.label', default: 'RobotDemoTable'), id])
            redirect(action: "list")
            return
        }

        [robotDemoTableInstance: robotDemoTableInstance]
    }

    def update(Long id, Long version) {
        def robotDemoTableInstance = RobotDemoTable.get(id)
        if (!robotDemoTableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'robotDemoTable.label', default: 'RobotDemoTable'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (robotDemoTableInstance.version > version) {
                robotDemoTableInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'robotDemoTable.label', default: 'RobotDemoTable')] as Object[],
                        "Another user has updated this RobotDemoTable while you were editing")
                render(view: "edit", model: [robotDemoTableInstance: robotDemoTableInstance])
                return
            }
        }

        robotDemoTableInstance.properties = params

        if (!robotDemoTableInstance.save(flush: true)) {
            render(view: "edit", model: [robotDemoTableInstance: robotDemoTableInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'robotDemoTable.label', default: 'RobotDemoTable'), robotDemoTableInstance.id])
        redirect(action: "show", id: robotDemoTableInstance.id)
    }

    def delete(Long id) {
        def robotDemoTableInstance = RobotDemoTable.get(id)
        if (!robotDemoTableInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'robotDemoTable.label', default: 'RobotDemoTable'), id])
            redirect(action: "list")
            return
        }

        try {
            robotDemoTableInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'robotDemoTable.label', default: 'RobotDemoTable'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'robotDemoTable.label', default: 'RobotDemoTable'), id])
            redirect(action: "show", id: id)
        }
    }
}
