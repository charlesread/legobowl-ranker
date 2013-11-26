package com.charlesread

class ScoreTechnical {

    AppUser judge
    Contestant contestant
    Integer s11 = 0
    Integer s12 = 0
    Integer s13 = 0
    Integer s21 = 0
    Integer s22 = 0
    Integer s23 = 0
    Integer s31 = 0
    Integer s32 = 0
    Integer s33 = 0
    Float agg_s1
    Float agg_s2
    Float agg_s3
    Float agg
    String scoreComment

    static constraints = {
        scoreComment(nullable: true)
    }

    static mapping = {
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
        agg_s1 formula: "(s11 + s12 + s13) / 3"
        agg_s2 formula: "(s21 + s22 + s23) / 3"
        agg_s3 formula: "(s31 + s32 + s33) / 3"
        agg formula: "(s11 + s12 + s13 + s21 + s22 + s23 + s31 + s32 + s33) / 9"
        scoreComment sqlType: 'clob'
    }
}
