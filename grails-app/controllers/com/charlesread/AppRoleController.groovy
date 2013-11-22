package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class AppRoleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [appRoleInstanceList: AppRole.list(params), appRoleInstanceTotal: AppRole.count()]
    }

    def create() {
        [appRoleInstance: new AppRole(params)]
    }

    def save() {
        def appRoleInstance = new AppRole(params)
        if (!appRoleInstance.save(flush: true)) {
            render(view: "create", model: [appRoleInstance: appRoleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'appRole.label', default: 'AppRole'), appRoleInstance.id])
        redirect(action: "show", id: appRoleInstance.id)
    }

    def show(Long id) {
        def appRoleInstance = AppRole.get(id)
        if (!appRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appRole.label', default: 'AppRole'), id])
            redirect(action: "list")
            return
        }

        [appRoleInstance: appRoleInstance]
    }

    def edit(Long id) {
        def appRoleInstance = AppRole.get(id)
        if (!appRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appRole.label', default: 'AppRole'), id])
            redirect(action: "list")
            return
        }

        [appRoleInstance: appRoleInstance]
    }

    def update(Long id, Long version) {
        def appRoleInstance = AppRole.get(id)
        if (!appRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appRole.label', default: 'AppRole'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (appRoleInstance.version > version) {
                appRoleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'appRole.label', default: 'AppRole')] as Object[],
                          "Another user has updated this AppRole while you were editing")
                render(view: "edit", model: [appRoleInstance: appRoleInstance])
                return
            }
        }

        appRoleInstance.properties = params

        if (!appRoleInstance.save(flush: true)) {
            render(view: "edit", model: [appRoleInstance: appRoleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'appRole.label', default: 'AppRole'), appRoleInstance.id])
        redirect(action: "show", id: appRoleInstance.id)
    }

    def delete(Long id) {
        def appRoleInstance = AppRole.get(id)
        if (!appRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appRole.label', default: 'AppRole'), id])
            redirect(action: "list")
            return
        }

        try {
            appRoleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'appRole.label', default: 'AppRole'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'appRole.label', default: 'AppRole'), id])
            redirect(action: "show", id: id)
        }
    }
}
