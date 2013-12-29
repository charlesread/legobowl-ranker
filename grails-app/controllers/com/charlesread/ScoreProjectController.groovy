package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured(['ROLE_USER','ROLE_ADMIN','ROLE_JUDGE'])
class ScoreProjectController {

    def springSecurityService
    def appService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def list
        if (springSecurityService.currentUser.admin) {
            list = ScoreProject.list(params)
        } else {
            list = ScoreProject.findAllByJudge(springSecurityService.currentUser, params)
        }
        [scoreProjectInstanceList: list, scoreProjectInstanceTotal: ScoreProject.count()]
    }

    def create() {

        [scoreProjectInstance: new ScoreProject(params), currentUser: springSecurityService.currentUser]
    }

    def save() {
        def scoreProjectInstance = new ScoreProject(params)
        appService.indicativeCheck(scoreProjectInstance.contestant, scoreProjectInstance)
        if (!scoreProjectInstance.save(flush: true)) {
            render(view: "create", model: [scoreProjectInstance: scoreProjectInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'scoreProject.label', default: 'ScoreProject'), scoreProjectInstance.id])
        redirect(action: "show", id: scoreProjectInstance.id)
    }

    def show(Long id) {
        def scoreProjectInstance = ScoreProject.get(id)
        if (!scoreProjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreProject.label', default: 'ScoreProject'), id])
            redirect(action: "list")
            return
        }

        [scoreProjectInstance: scoreProjectInstance]
    }

    def edit(Long id) {
        def scoreProjectInstance = ScoreProject.get(id)
        if (!scoreProjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreProject.label', default: 'ScoreProject'), id])
            redirect(action: "list")
            return
        }

        [scoreProjectInstance: scoreProjectInstance]
    }

    def update(Long id, Long version) {
        def scoreProjectInstance = ScoreProject.get(id)
        appService.indicativeCheck(scoreProjectInstance.contestant, scoreProjectInstance)
        if (!scoreProjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreProject.label', default: 'ScoreProject'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (scoreProjectInstance.version > version) {
                scoreProjectInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'scoreProject.label', default: 'ScoreProject')] as Object[],
                        "Another user has updated this ScoreProject while you were editing")
                render(view: "edit", model: [scoreProjectInstance: scoreProjectInstance])
                return
            }
        }

        scoreProjectInstance.properties = params

        if (!scoreProjectInstance.save(flush: true)) {
            render(view: "edit", model: [scoreProjectInstance: scoreProjectInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'scoreProject.label', default: 'ScoreProject'), scoreProjectInstance.id])
        redirect(action: "show", id: scoreProjectInstance.id)
    }

    def delete(Long id) {
        def scoreProjectInstance = ScoreProject.get(id)
        if (!scoreProjectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreProject.label', default: 'ScoreProject'), id])
            redirect(action: "list")
            return
        }

        try {
            scoreProjectInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'scoreProject.label', default: 'ScoreProject'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'scoreProject.label', default: 'ScoreProject'), id])
            redirect(action: "show", id: id)
        }
    }

    def aggregate() {
        def c = ScoreProject.createCriteria().list() {
            projections {

                groupProperty('contestant')
                avg('agg_s1','agg1')
                avg('agg_s2','agg2')
                avg('agg_s2','agg3')
                avg('agg','aggTotal')

            }
            order params.sort ?: 'aggTotal',params.order ?: 'desc'

        }

        def out = new Object[c.size()]
        c.eachWithIndex {v,i ->
            out[i] = new Aggregate(contestant: v[0], aggA: v[1], aggB: v[2], aggC: v[3], aggTotal: v[4])
        }
        //render out
        render(view: 'aggregate', model: [aggregates: out])

    }

}
