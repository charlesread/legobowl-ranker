package com.charlesread

class Queue {

    Contestant contestant
    Integer sequence
    Boolean completed

    def beforeInsert() {
        if (!sequence) {
            Long maxSequence = Queue.createCriteria().get {
                projections {
                    max "sequence"
                }
            } as Long
            sequence = (maxSequence ?: 0) + 1
        }
    }

    static constraints = {
        sequence(nullable: true)
    }
}
