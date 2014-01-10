package com.charlesread

import grails.plugin.springsecurity.annotation.Secured
import org.springframework.dao.DataIntegrityViolationException

@Secured(['ROLE_ADMIN'])
class QueueController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [queueInstanceList: Queue.list(params), queueInstanceTotal: Queue.count()]
    }

    def create() {
        [queueInstance: new Queue(params)]
    }

    def save() {
        def queueInstance = new Queue(params)
        if (!queueInstance.save(flush: true)) {
            render(view: "create", model: [queueInstance: queueInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'queue.label', default: 'Queue'), queueInstance.id])
        redirect(action: "show", id: queueInstance.id)
    }

    def show(Long id) {
        def queueInstance = Queue.get(id)
        if (!queueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'queue.label', default: 'Queue'), id])
            redirect(action: "list")
            return
        }

        [queueInstance: queueInstance]
    }

    def edit(Long id) {
        def queueInstance = Queue.get(id)
        if (!queueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'queue.label', default: 'Queue'), id])
            redirect(action: "list")
            return
        }

        [queueInstance: queueInstance]
    }

    def update(Long id, Long version) {
        def queueInstance = Queue.get(id)
        if (!queueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'queue.label', default: 'Queue'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (queueInstance.version > version) {
                queueInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'queue.label', default: 'Queue')] as Object[],
                          "Another user has updated this Queue while you were editing")
                render(view: "edit", model: [queueInstance: queueInstance])
                return
            }
        }

        queueInstance.properties = params

        if (!queueInstance.save(flush: true)) {
            render(view: "edit", model: [queueInstance: queueInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'queue.label', default: 'Queue'), queueInstance.id])
        redirect(action: "show", id: queueInstance.id)
    }

    def delete(Long id) {
        def queueInstance = Queue.get(id)
        if (!queueInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'queue.label', default: 'Queue'), id])
            redirect(action: "list")
            return
        }

        try {
            queueInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'queue.label', default: 'Queue'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'queue.label', default: 'Queue'), id])
            redirect(action: "show", id: id)
        }
    }

    def outstanding () {
        [queueList: Queue.findAllByCompleted(false)]
    }

    def processOutstanding () {
        if (params.checkedQueues instanceof String) {
            Queue queue = Queue.get(params.checkedQueues)
            queue.completed = true
            queue.save(flush: true)
        } else {
            params.checkedQueues.each {
                Queue queue = Queue.get(it)
                queue.completed = true
                queue.save(flush: true)
            }
        }
        redirect(action: 'outstanding')
    }
}
