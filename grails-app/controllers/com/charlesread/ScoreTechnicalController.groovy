package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured(['ROLE_USER','ROLE_ADMIN','ROLE_JUDGE'])
class ScoreTechnicalController {

    def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        def list
        if (springSecurityService.currentUser.admin) {
            list = ScoreTechnical.list(params)
        } else {
            list = ScoreTechnical.findAllByJudge(springSecurityService.currentUser, params)
        }
        [scoreTechnicalInstanceList: list, scoreTechnicalInstanceTotal: ScoreTechnical.count()]
    }

    def create() {
        [scoreTechnicalInstance: new ScoreTechnical(params)]
    }

    def save() {
        def scoreTechnicalInstance = new ScoreTechnical(params)
        if (!scoreTechnicalInstance.save(flush: true)) {
            render(view: "create", model: [scoreTechnicalInstance: scoreTechnicalInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'scoreTechnical.label', default: 'ScoreTechnical'), scoreTechnicalInstance.id])
        redirect(action: "show", id: scoreTechnicalInstance.id)
    }

    def show(Long id) {
        def scoreTechnicalInstance = ScoreTechnical.get(id)
        if (!scoreTechnicalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreTechnical.label', default: 'ScoreTechnical'), id])
            redirect(action: "list")
            return
        }

        [scoreTechnicalInstance: scoreTechnicalInstance]
    }

    def edit(Long id) {
        def scoreTechnicalInstance = ScoreTechnical.get(id)
        if (!scoreTechnicalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreTechnical.label', default: 'ScoreTechnical'), id])
            redirect(action: "list")
            return
        }

        [scoreTechnicalInstance: scoreTechnicalInstance]
    }

    def update(Long id, Long version) {
        def scoreTechnicalInstance = ScoreTechnical.get(id)
        if (!scoreTechnicalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreTechnical.label', default: 'ScoreTechnical'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (scoreTechnicalInstance.version > version) {
                scoreTechnicalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'scoreTechnical.label', default: 'ScoreTechnical')] as Object[],
                        "Another user has updated this ScoreTechnical while you were editing")
                render(view: "edit", model: [scoreTechnicalInstance: scoreTechnicalInstance])
                return
            }
        }

        scoreTechnicalInstance.properties = params

        if (!scoreTechnicalInstance.save(flush: true)) {
            render(view: "edit", model: [scoreTechnicalInstance: scoreTechnicalInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'scoreTechnical.label', default: 'ScoreTechnical'), scoreTechnicalInstance.id])
        redirect(action: "show", id: scoreTechnicalInstance.id)
    }

    def delete(Long id) {
        def scoreTechnicalInstance = ScoreTechnical.get(id)
        if (!scoreTechnicalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreTechnical.label', default: 'ScoreTechnical'), id])
            redirect(action: "list")
            return
        }

        try {
            scoreTechnicalInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'scoreTechnical.label', default: 'ScoreTechnical'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'scoreTechnical.label', default: 'ScoreTechnical'), id])
            redirect(action: "show", id: id)
        }
    }

    def aggregate() {
        def c = ScoreTechnical.createCriteria().list() {
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
