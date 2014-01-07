package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured(['ROLE_USER','ROLE_ADMIN','ROLE_JUDGE'])
class ScoreValuesController {

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
            list = params.contestant ? ScoreValues.findAllByContestant(Contestant.get(params.contestant.toLong())) : ScoreValues.list(params)
        } else {
            list = ScoreValues.findAllByJudge(springSecurityService.currentUser, params)
        }
        [scoreValuesInstanceList: list, scoreValuesInstanceTotal: ScoreValues.count()]
    }

    def create() {
        [scoreValuesInstance: new ScoreValues(params), currentUser: springSecurityService.currentUser]
    }

    def save() {
        def scoreValuesInstance = new ScoreValues(params)
        appService.indicativeCheck(scoreValuesInstance, params.indicative)
        if (!scoreValuesInstance.save(flush: true)) {
            render(view: "create", model: [scoreValuesInstance: scoreValuesInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'scoreValues.label', default: 'ScoreValues'), scoreValuesInstance.id])
        redirect(action: "show", id: scoreValuesInstance.id)
    }

    def show(Long id) {
        def scoreValuesInstance = ScoreValues.get(id)
        if (!scoreValuesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreValues.label', default: 'ScoreValues'), id])
            redirect(action: "list")
            return
        }

        [scoreValuesInstance: scoreValuesInstance]
    }

    def edit(Long id) {
        def scoreValuesInstance = ScoreValues.get(id)
        if (!scoreValuesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreValues.label', default: 'ScoreValues'), id])
            redirect(action: "list")
            return
        }

        [scoreValuesInstance: scoreValuesInstance]
    }

    def update(Long id, Long version) {
        def scoreValuesInstance = ScoreValues.get(id)

        if (!scoreValuesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreValues.label', default: 'ScoreValues'), id])
            redirect(action: "list")
            return
        }
        appService.indicativeCheck(scoreValuesInstance, params.indicative)
        if (version != null) {
            if (scoreValuesInstance.version > version) {
                scoreValuesInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'scoreValues.label', default: 'ScoreValues')] as Object[],
                        "Another user has updated this ScoreValues while you were editing")
                render(view: "edit", model: [scoreValuesInstance: scoreValuesInstance])
                return
            }
        }

        scoreValuesInstance.properties = params


        if (!scoreValuesInstance.save(flush: true)) {
            render(view: "edit", model: [scoreValuesInstance: scoreValuesInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'scoreValues.label', default: 'ScoreValues'), scoreValuesInstance.id])
        redirect(action: "show", id: scoreValuesInstance.id)
    }

    def delete(Long id) {
        def scoreValuesInstance = ScoreValues.get(id)
        if (!scoreValuesInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'scoreValues.label', default: 'ScoreValues'), id])
            redirect(action: "list")
            return
        }

        try {
            scoreValuesInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'scoreValues.label', default: 'ScoreValues'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'scoreValues.label', default: 'ScoreValues'), id])
            redirect(action: "show", id: id)
        }
    }

    def aggregate() {
        def c = ScoreValues.createCriteria().list() {
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

    def report(Long id) {
        Contestant contestant = Contestant.get(id)
        def scoreValuesInstance = ScoreValues.findByContestantAndIndicative(contestant,true)
        renderPdf(template: "/scoreValues/report", model: [scoreValuesInstance: scoreValuesInstance], filename: "${contestant} Core Values Score Report.pdf")

//        render(template: '/scoreValues/report', model: [scoreValuesInstance: scoreValuesInstance] )
    }

    def makeIndicative(Long id) {
        ScoreValues scoreValuesInstance = ScoreValues.get(id)
        appService.toggleIndicative(scoreValuesInstance)
        render(view: 'show', model: [scoreValuesInstance: scoreValuesInstance])
    }
}
