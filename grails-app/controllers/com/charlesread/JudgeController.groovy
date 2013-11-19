package com.charlesread

import org.springframework.dao.DataIntegrityViolationException

class JudgeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [judgeInstanceList: Judge.list(params), judgeInstanceTotal: Judge.count()]
    }

    def create() {
        [judgeInstance: new Judge(params)]
    }

    def save() {
        def judgeInstance = new Judge(params)
        if (!judgeInstance.save(flush: true)) {
            render(view: "create", model: [judgeInstance: judgeInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'judge.label', default: 'Judge'), judgeInstance.id])
        redirect(action: "show", id: judgeInstance.id)
    }

    def show(Long id) {
        def judgeInstance = Judge.get(id)
        if (!judgeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'judge.label', default: 'Judge'), id])
            redirect(action: "list")
            return
        }

        [judgeInstance: judgeInstance]
    }

    def edit(Long id) {
        def judgeInstance = Judge.get(id)
        if (!judgeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'judge.label', default: 'Judge'), id])
            redirect(action: "list")
            return
        }

        [judgeInstance: judgeInstance]
    }

    def update(Long id, Long version) {
        def judgeInstance = Judge.get(id)
        if (!judgeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'judge.label', default: 'Judge'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (judgeInstance.version > version) {
                judgeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'judge.label', default: 'Judge')] as Object[],
                          "Another user has updated this Judge while you were editing")
                render(view: "edit", model: [judgeInstance: judgeInstance])
                return
            }
        }

        judgeInstance.properties = params

        if (!judgeInstance.save(flush: true)) {
            render(view: "edit", model: [judgeInstance: judgeInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'judge.label', default: 'Judge'), judgeInstance.id])
        redirect(action: "show", id: judgeInstance.id)
    }

    def delete(Long id) {
        def judgeInstance = Judge.get(id)
        if (!judgeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'judge.label', default: 'Judge'), id])
            redirect(action: "list")
            return
        }

        try {
            judgeInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'judge.label', default: 'Judge'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'judge.label', default: 'Judge'), id])
            redirect(action: "show", id: id)
        }
    }
}
