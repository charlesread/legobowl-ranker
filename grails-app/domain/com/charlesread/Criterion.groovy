package com.charlesread

class Criterion {

    String code
    String name
    String description
    String s1
    String s2
    String s3
    String s4

    static constraints = {
    }

    static mapping = {
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
    }
}
