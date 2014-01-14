package com.charlesread

class RoomAverages {

    Float average
    Float percentage

    static constraints = {
    }

    static mapping = {
    	id generator: "sequence", params: [sequence: "LEGO_SEQ"]
        version false
    }

    String toString() {
        "<span class='roomAverage'>${average.round(3)} (${percentage.round(1)}%)</span>"
    }

}
