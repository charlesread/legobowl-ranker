package com.charlesread

class Room {

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
