package com.charlesread

class Contestant {

    String code
    String name

    static constraints = {
        code nullable: true
        name nullable: true
    }

    String toString() {
        name ?: "Team ${code}"
    }

    static mapping = {
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
    }
}
