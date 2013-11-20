package com.charlesread

import org.springframework.dao.DataIntegrityViolationException

class AppUserAppRoleController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [appUserAppRoleInstanceList: AppUserAppRole.list(params), appUserAppRoleInstanceTotal: AppUserAppRole.count()]
    }

    def create() {
        [appUserAppRoleInstance: new AppUserAppRole(params)]
    }

    def save() {
        def appUserAppRoleInstance = new AppUserAppRole(params)
        if (!appUserAppRoleInstance.save(flush: true)) {
            render(view: "create", model: [appUserAppRoleInstance: appUserAppRoleInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'appUserAppRole.label', default: 'AppUserAppRole'), appUserAppRoleInstance.id])
        redirect(action: "show", id: appUserAppRoleInstance.id)
    }

    def show(Long id) {
        def appUserAppRoleInstance = AppUserAppRole.get(id)
        if (!appUserAppRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appUserAppRole.label', default: 'AppUserAppRole'), id])
            redirect(action: "list")
            return
        }

        [appUserAppRoleInstance: appUserAppRoleInstance]
    }

    def edit(Long id) {
        def appUserAppRoleInstance = AppUserAppRole.get(id)
        if (!appUserAppRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appUserAppRole.label', default: 'AppUserAppRole'), id])
            redirect(action: "list")
            return
        }

        [appUserAppRoleInstance: appUserAppRoleInstance]
    }

    def update(Long id, Long version) {
        def appUserAppRoleInstance = AppUserAppRole.get(id)
        if (!appUserAppRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appUserAppRole.label', default: 'AppUserAppRole'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (appUserAppRoleInstance.version > version) {
                appUserAppRoleInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'appUserAppRole.label', default: 'AppUserAppRole')] as Object[],
                        "Another user has updated this AppUserAppRole while you were editing")
                render(view: "edit", model: [appUserAppRoleInstance: appUserAppRoleInstance])
                return
            }
        }

        appUserAppRoleInstance.properties = params

        if (!appUserAppRoleInstance.save(flush: true)) {
            render(view: "edit", model: [appUserAppRoleInstance: appUserAppRoleInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'appUserAppRole.label', default: 'AppUserAppRole'), appUserAppRoleInstance.id])
        redirect(action: "show", id: appUserAppRoleInstance.id)
    }

    def delete(Long id) {
        def appUserAppRoleInstance = AppUserAppRole.get(id)
        if (!appUserAppRoleInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appUserAppRole.label', default: 'AppUserAppRole'), id])
            redirect(action: "list")
            return
        }

        try {
            appUserAppRoleInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'appUserAppRole.label', default: 'AppUserAppRole'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'appUserAppRole.label', default: 'AppUserAppRole'), id])
            redirect(action: "show", id: id)
        }
    }
}
