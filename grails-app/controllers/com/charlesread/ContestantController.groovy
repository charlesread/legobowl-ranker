package com.charlesread

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured(['ROLE_ADMIN'])
class ContestantController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [contestantInstanceList: Contestant.list(params), contestantInstanceTotal: Contestant.count()]
    }

    def create() {
        [contestantInstance: new Contestant(params)]
    }

    def save() {
        def contestantInstance = new Contestant(params)
        if (!contestantInstance.save(flush: true)) {
            render(view: "create", model: [contestantInstance: contestantInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'contestant.label', default: 'Contestant'), contestantInstance.id])
        redirect(action: "show", id: contestantInstance.id)
    }

    def show(Long id) {
        def contestantInstance = Contestant.get(id)
        if (!contestantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contestant.label', default: 'Contestant'), id])
            redirect(action: "list")
            return
        }

        [contestantInstance: contestantInstance]
    }

    def edit(Long id) {
        def contestantInstance = Contestant.get(id)
        if (!contestantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contestant.label', default: 'Contestant'), id])
            redirect(action: "list")
            return
        }

        [contestantInstance: contestantInstance]
    }

    def update(Long id, Long version) {
        def contestantInstance = Contestant.get(id)
        if (!contestantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contestant.label', default: 'Contestant'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (contestantInstance.version > version) {
                contestantInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'contestant.label', default: 'Contestant')] as Object[],
                          "Another user has updated this Contestant while you were editing")
                render(view: "edit", model: [contestantInstance: contestantInstance])
                return
            }
        }

        contestantInstance.properties = params

        if (!contestantInstance.save(flush: true)) {
            render(view: "edit", model: [contestantInstance: contestantInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'contestant.label', default: 'Contestant'), contestantInstance.id])
        redirect(action: "show", id: contestantInstance.id)
    }

    def delete(Long id) {
        def contestantInstance = Contestant.get(id)
        if (!contestantInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'contestant.label', default: 'Contestant'), id])
            redirect(action: "list")
            return
        }

        try {
            contestantInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'contestant.label', default: 'Contestant'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'contestant.label', default: 'Contestant'), id])
            redirect(action: "show", id: id)
        }
    }
}
