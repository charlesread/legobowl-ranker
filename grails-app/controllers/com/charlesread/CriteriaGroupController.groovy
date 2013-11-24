package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured(['ROLE_ADMIN'])

class CriteriaGroupController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [criteriaGroupInstanceList: CriteriaGroup.list(params), criteriaGroupInstanceTotal: CriteriaGroup.count()]
    }

    def create() {
        [criteriaGroupInstance: new CriteriaGroup(params)]
    }

    def save() {
        def criteriaGroupInstance = new CriteriaGroup(params)
        if (!criteriaGroupInstance.save(flush: true)) {
            render(view: "create", model: [criteriaGroupInstance: criteriaGroupInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'criteriaGroup.label', default: 'CriteriaGroup'), criteriaGroupInstance.id])
        redirect(action: "show", id: criteriaGroupInstance.id)
    }

    def show(Long id) {
        def criteriaGroupInstance = CriteriaGroup.get(id)
        if (!criteriaGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'criteriaGroup.label', default: 'CriteriaGroup'), id])
            redirect(action: "list")
            return
        }

        [criteriaGroupInstance: criteriaGroupInstance]
    }

    def edit(Long id) {
        def criteriaGroupInstance = CriteriaGroup.get(id)
        if (!criteriaGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'criteriaGroup.label', default: 'CriteriaGroup'), id])
            redirect(action: "list")
            return
        }

        [criteriaGroupInstance: criteriaGroupInstance]
    }

    def update(Long id, Long version) {
        def criteriaGroupInstance = CriteriaGroup.get(id)
        if (!criteriaGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'criteriaGroup.label', default: 'CriteriaGroup'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (criteriaGroupInstance.version > version) {
                criteriaGroupInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'criteriaGroup.label', default: 'CriteriaGroup')] as Object[],
                        "Another user has updated this CriteriaGroup while you were editing")
                render(view: "edit", model: [criteriaGroupInstance: criteriaGroupInstance])
                return
            }
        }

        criteriaGroupInstance.properties = params

        if (!criteriaGroupInstance.save(flush: true)) {
            render(view: "edit", model: [criteriaGroupInstance: criteriaGroupInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'criteriaGroup.label', default: 'CriteriaGroup'), criteriaGroupInstance.id])
        redirect(action: "show", id: criteriaGroupInstance.id)
    }

    def delete(Long id) {
        def criteriaGroupInstance = CriteriaGroup.get(id)
        if (!criteriaGroupInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'criteriaGroup.label', default: 'CriteriaGroup'), id])
            redirect(action: "list")
            return
        }

        try {
            criteriaGroupInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'criteriaGroup.label', default: 'CriteriaGroup'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'criteriaGroup.label', default: 'CriteriaGroup'), id])
            redirect(action: "show", id: id)
        }
    }
}
