package com.charlesread

class Judge {

    String name

    static constraints = {
    }

    String toString() {
        "$name"
    }

    static mapping = {
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
    }
}
