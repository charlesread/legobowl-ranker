package com.charlesread

import org.springframework.dao.DataIntegrityViolationException
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityUtils

@Secured(['ROLE_USER','ROLE_ADMIN'])
class ScoreController {

    def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {

        def scoreInstanceList

        if (currentUser().admin) {
            scoreInstanceList = Score.list(params)
        } else {
            scoreInstanceList = Score.findAllByJudge(currentUser(),params)
        }

        [scoreInstanceList: scoreInstanceList, scoreInstanceTotal: Score.count()]
    }

    def create() {
        [scoreInstance: new Score(params)]
    }

    def save() {
        def scoreInstance = new Score(params)
        if (!scoreInstance.save(flush: true)) {
            render(view: "create", model: [scoreInstance: scoreInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'score.label', default: 'Score'), scoreInstance.contestant.name])
        redirect(action: "show", id: scoreInstance.id)
    }

    def show(Long id) {
        def scoreInstance = Score.get(id)
        if (!canAlter(scoreInstance)) return
        if (!scoreInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'score.label', default: 'Score'), id])
            redirect(action: "list")
            return
        }

        [scoreInstance: scoreInstance]
    }

    def edit(Long id) {
        def scoreInstance = Score.get(id)
        if (!canAlter(scoreInstance)) return
        if (!scoreInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'score.label', default: 'Score'), id])
            redirect(action: "list")
            return
        }

        [scoreInstance: scoreInstance]
    }

    def update(Long id, Long version) {
        def scoreInstance = Score.get(id)
        if (!scoreInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'score.label', default: 'Score'), scoreInstance.contestant.name])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (scoreInstance.version > version) {
                scoreInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'score.label', default: 'Score')] as Object[],
                          "Another user has updated this Score while you were editing")
                render(view: "edit", model: [scoreInstance: scoreInstance])
                return
            }
        }

        scoreInstance.properties = params

        if (!scoreInstance.save(flush: true)) {
            render(view: "edit", model: [scoreInstance: scoreInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'score.label', default: 'Score'), scoreInstance.contestant.name])
        redirect(action: "show", id: scoreInstance.id)
    }

    def delete(Long id) {
        def scoreInstance = Score.get(id)
        if (!canAlter(scoreInstance)) return
        if (!scoreInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'score.label', default: 'Score'), scoreInstance.contestant.name])
            redirect(action: "list")
            return
        }

        try {
            scoreInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'score.label', default: 'Score'), scoreInstance.contestant.name])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'score.label', default: 'Score'), scoreInstance.contestant.name])
            redirect(action: "show", id: id)
        }
    }

    def aggregate() {
        def c = Score.createCriteria().list() {
            projections {

                groupProperty('contestant')
                avg('agg_a','aggA')
                avg('agg_b','aggB')
                avg('agg_c','aggC')
                avg('agg_total','aggTotal')

            }
            order params.sort ?: 'aggTotal',params.order ?: 'desc'

        }

        def out = new Object[c.size()]
        c.eachWithIndex {v,i ->
            out[i] = new Aggregate(contestant: v[0], aggA: v[1], aggB: v[2], aggC: v[3], aggTotal: v[4])
        }
        render(view: 'aggregate', model: [aggregates: out])

    }

    AppUser currentUser() {
        springSecurityService.currentUser
    }

    Boolean canAlter(Score scoreInstance) {
        if (scoreInstance.judge.id != currentUser().id && !currentUser().admin) {
            render "You are not authorized to do this."
            return false
        } else {
            return true
        }
    }
}
