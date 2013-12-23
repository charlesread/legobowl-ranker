package com.charlesread

class Contestant {

    Integer code
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
