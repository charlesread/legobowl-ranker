package com.charlesread

class CriteriaGroup {

    String name

    static constraints = {
    }

    static mapping = {
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
    }

    String toString() {
        "$name"
    }
}
