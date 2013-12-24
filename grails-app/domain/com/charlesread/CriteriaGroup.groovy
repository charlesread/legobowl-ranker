package com.charlesread

class CriteriaGroup {

    String name

    static constraints = {
        id(blank:true, nullable: true)
    }

    static mapping = {
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]

    }

    String toString() {
        "$name"
    }
}
