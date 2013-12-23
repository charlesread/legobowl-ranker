package com.charlesread

class QueueController {

    static scaffold = true

    def outstanding () {
        [queueList: Queue.findAllByCompleted(false)]
    }

    def processOutstanding () {
        params.checkedQueues.each {
            def queue = Queue.get(it)
            queue.completed = true
            queue.save(flush: true)
            redirect(action: 'outstanding')

        }
    }
}
