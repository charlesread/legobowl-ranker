package com.charlesread

class RobotDemoMax extends RobotDemo {

    Integer run1
    Integer run2
    Integer run3
    Integer rank

    static constraints = {
        run1 nullable: true
        run2 nullable: true
        run3 nullable: true
    }

    static mapping = {
        table 'ROBOT_DEMO_MAX'
        version false
    }

}
