package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured
import org.apache.commons.lang.StringEscapeUtils

@Secured(['ROLE_ADMIN'])
class AppUserController {

    def springSecurityService
    def passwordEncoder

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)

        [appUserInstanceList: AppUser.list(params), appUserInstanceTotal: AppUser.count()]
    }

    def create() {
        [appUserInstance: new AppUser(params)]
    }

    def save() {
        def appUserInstance = new AppUser(params)
        if (!appUserInstance.save(flush: true)) {
            render(view: "create", model: [appUserInstance: appUserInstance])
            return
        }

        addRoles(appUserInstance,params.roles)
        flash.message = message(code: 'default.created.message', args: [message(code: 'appUser.label', default: 'AppUser'), appUserInstance.id])
        redirect(action: "show", id: appUserInstance.id)
    }

    def show(Long id) {
        def appUserInstance = AppUser.get(id)
        if (!appUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appUser.label', default: 'AppUser'), id])
            redirect(action: "list")
            return
        }

        [appUserInstance: appUserInstance]
    }

    def edit(Long id) {
        def appUserInstance = AppUser.get(id)
        if (!appUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appUser.label', default: 'AppUser'), id])
            redirect(action: "list")
            return
        }

        [appUserInstance: appUserInstance]
    }

    def update(Long id, Long version) {
        def appUserInstance = AppUser.get(id)
        if (!appUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appUser.label', default: 'AppUser'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (appUserInstance.version > version) {
                appUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'appUser.label', default: 'AppUser')] as Object[],
                          "Another user has updated this AppUser while you were editing")
                render(view: "edit", model: [appUserInstance: appUserInstance])
                return
            }
        }

        appUserInstance.properties = params

        if (!appUserInstance.save(flush: true)) {
            render(view: "edit", model: [appUserInstance: appUserInstance])
            return
        }
        deleteRoles(appUserInstance)
        addRoles(appUserInstance,params.roles)

        flash.message = message(code: 'default.updated.message', args: [message(code: 'appUser.label', default: 'AppUser'), appUserInstance.id])
        redirect(action: "show", id: appUserInstance.id)
    }



    def delete(Long id) {
        def appUserInstance = AppUser.get(id)
        if (!appUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'appUser.label', default: 'AppUser'), id])
            redirect(action: "list")
            return
        }

        try {
            deleteRoles(appUserInstance)
            appUserInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'appUser.label', default: 'AppUser'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'appUser.label', default: 'AppUser'), id])
            redirect(action: "show", id: id)
        }
    }

    private void deleteRoles(AppUser appUser) {
        def currentRoles = com.charlesread.AppUserAppRole.findAllByAppUser(appUser)
        currentRoles.each {
            it.delete(flush: true)
            render "Deleting role: ${it.appRole.authority}<br>"
        }
    }

    private void addRoles(AppUser appUser, String[] roles) {
        roles.each {
            AppRole currentRole = com.charlesread.AppRole.get(it)
            com.charlesread.AppUserAppRole.create(appUser, currentRole, true)
            render "Adding role: ${com.charlesread.AppRole.get(it).authority}<br>"
        }
    }

    @Secured(['permitAll'])
    def passwordExpired() {
        [username: session['SPRING_SECURITY_LAST_USERNAME']]
        //render session
    }

    @Secured(['permitAll'])
    def updatePassword() {
        String username = session['SPRING_SECURITY_LAST_USERNAME']
        if (!username) {
            println "no username"
            flash.message = 'Sorry, an error has occurred'
            redirect controller: 'login', action: 'auth'
            return
        }
        String password = params.password
        String newPassword = params.password_new
        String newPassword2 = params.password_new_2
        if (!password || !newPassword || !newPassword2 || newPassword != newPassword2) {
            flash.message = 'please enter your current password and a valid new password'
            render view: 'passwordExpired', model: [username: session['SPRING_SECURITY_LAST_USERNAME']]
            return
        }

        AppUser user = AppUser.findByUsername(username)
        if (!user) {
            flash.message = 'user not found'
            render view: 'passwordExpired', model: [username: session['SPRING_SECURITY_LAST_USERNAME']]
            return

        }
        if (!passwordEncoder.isPasswordValid(user.password, password, null /*salt*/)) {
            flash.message = 'current password is incorrect'
            render view: 'passwordExpired', model: [username: session['SPRING_SECURITY_LAST_USERNAME']]
            return
        }

        if (passwordEncoder.isPasswordValid(user.password, newPassword, null /*salt*/)) {
            flash.message = 'please choose a different password from your current one'
            render view: 'passwordExpired', model: [username: session['SPRING_SECURITY_LAST_USERNAME']]
            return
        }

        user.password = newPassword
        user.passwordExpired = false
        if (user.save()) {
            flash.message = 'password updated successfully'
            redirect controller: 'login', action: 'auth'
        }
    }

    @Secured(['ROLE_USER'])
    def userinfo() {
        //render springSecurityService.currentUser.getClass()
        render springSecurityService.principal
    }

}
