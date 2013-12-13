package com.charlesread

class RobotDemo {
    Contestant contestant
    AppUser judge
    Integer s1 = 0
    Integer s2 = 0
    Integer s3 = 0
    Integer s4 = 0
    Integer s5 = 0
    Integer s6 = 0
    Integer s7 = 0
    Integer s8 = 0
    Integer s9 = 0
    Integer s10 = 0
    Integer s11 = 0
    Integer s12 = 0
    Integer s13 = 0
    Integer s14 = 0
    Integer s15 = 0
    Integer s16 = 0
    Integer s17 = 0
    Integer s18 = 0
    Integer s19 = 0
    Integer s20 = 0
    Integer s21 = 0
    Integer s22 = 0
    Integer s23 = 0
    Integer s24 = 0
    Integer s25 = 0
    Integer agg

    static mapping = {
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
        agg formula: "s1 + s2 + s3 + s4 + s5 + s6 + s7 + s8 + s9 + s10 + s11 + s12 + s13 + s14 + s15 + s16 + s17 + s18 + s19 + s20 + s21 + s22 + s23 + s24 + s25"
        tablePerHierarchy false
    }

    static constraints = {
    }
}
