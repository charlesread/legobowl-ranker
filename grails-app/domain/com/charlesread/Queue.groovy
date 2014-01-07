package com.charlesread

class Queue {

    Contestant contestant1
    Contestant contestant2
    RobotDemoTable table
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
    static mapping = {
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
    }
}
