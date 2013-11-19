package com.charlesread

import org.springframework.dao.DataIntegrityViolationException

class CriterionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [criterionInstanceList: Criterion.list(params), criterionInstanceTotal: Criterion.count()]
    }

    def create() {
        [criterionInstance: new Criterion(params)]
    }

    def save() {
        def criterionInstance = new Criterion(params)
        if (!criterionInstance.save(flush: true)) {
            render(view: "create", model: [criterionInstance: criterionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'criterion.label', default: 'Criterion'), criterionInstance.id])
        redirect(action: "show", id: criterionInstance.id)
    }

    def show(Long id) {
        def criterionInstance = Criterion.get(id)
        if (!criterionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'criterion.label', default: 'Criterion'), id])
            redirect(action: "list")
            return
        }

        [criterionInstance: criterionInstance]
    }

    def edit(Long id) {
        def criterionInstance = Criterion.get(id)
        if (!criterionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'criterion.label', default: 'Criterion'), id])
            redirect(action: "list")
            return
        }

        [criterionInstance: criterionInstance]
    }

    def update(Long id, Long version) {
        def criterionInstance = Criterion.get(id)
        if (!criterionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'criterion.label', default: 'Criterion'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (criterionInstance.version > version) {
                criterionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'criterion.label', default: 'Criterion')] as Object[],
                          "Another user has updated this Criterion while you were editing")
                render(view: "edit", model: [criterionInstance: criterionInstance])
                return
            }
        }

        criterionInstance.properties = params

        if (!criterionInstance.save(flush: true)) {
            render(view: "edit", model: [criterionInstance: criterionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'criterion.label', default: 'Criterion'), criterionInstance.id])
        redirect(action: "show", id: criterionInstance.id)
    }

    def delete(Long id) {
        def criterionInstance = Criterion.get(id)
        if (!criterionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'criterion.label', default: 'Criterion'), id])
            redirect(action: "list")
            return
        }

        try {
            criterionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'criterion.label', default: 'Criterion'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'criterion.label', default: 'Criterion'), id])
            redirect(action: "show", id: id)
        }
    }
}
