package com.charlesread

class RobotDemoTable {

    String name

    static constraints = {

        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
    }

    String toString() {
        "${name}"
    }
}
