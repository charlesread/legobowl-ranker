package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured(['ROLE_USER','ROLE_ADMIN','ROLE_JUDGE'])
class ScoreTechnicalController {

    def springSecurityService
    def appService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        def list
        if (springSecurityService.currentUser.admin) {
            list = params.contestant ? ScoreTechnical.findAllByContestant(Contestant.get(params.contestant.toLong())) : ScoreTechnical.list(params)
        } else {
            list = ScoreTechnical.findAllByJudge(springSecurityService.currentUser, params)
        }
        [scoreTechnicalInstanceList: list, scoreTechnicalInstanceTotal: ScoreTechnical.count()]
    }

    def create() {
        [scoreTechnicalInstance: new ScoreTechnical(params), currentUser: springSecurityService.currentUser]
    }

    def save() {
        def scoreTechnicalInstance = new ScoreTechnical(params)
        appService.indicativeCheck(scoreTechnicalInstance, params.indicative)
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
        appService.indicativeCheck(scoreTechnicalInstance, params.indicative)
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
        render(view: 'aggregate', model: [aggregates: out])

    }

    def report(Long id) {
        Contestant contestant = Contestant.get(id)
        def scoreTechnicalInstance = ScoreTechnical.findByContestantAndIndicative(contestant,true)
        renderPdf(template: "/scoreTechnical/report", model: [scoreTechnicalInstance: scoreTechnicalInstance], filename: "${contestant} Robot Design Score Report.pdf")
    }

    def makeIndicative(Long id) {
        ScoreTechnical scoreTechnicalInstance = ScoreTechnical.get(id)
        appService.toggleIndicative(scoreTechnicalInstance)
        render(view: 'show', model: [scoreTechnicalInstance: scoreTechnicalInstance])
    }
}
