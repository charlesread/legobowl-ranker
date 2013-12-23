package com.charlesread

class RobotDemoMax {

    Contestant contestant
    Integer run1
    Integer run2
    Integer run3
    Integer rank
    Integer agg

    static constraints = {
        run1 nullable: true
        run2 nullable: true
        run3 nullable: true
    }

    static mapping = {
        table 'ROBOT_DEMO_MAX'
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
        version false
    }

}
