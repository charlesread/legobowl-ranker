package com.charlesread

class Score {

    Judge judge
    Contestant contestant

    Integer a11
    Integer a12
    Integer a13
    Integer a21
    Integer a22
    Integer a23
    Integer a31
    Integer a32
    Integer a33

    Integer b11
    Integer b12
    Integer b13
    Integer b14
    Integer b21
    Integer b22
    Integer b23
    Integer b31
    Integer b32
    Integer b33

    Integer c11
    Integer c12
    Integer c13
    Integer c21
    Integer c22
    Integer c23
    Integer c31
    Integer c32
    Integer c33

    Float agg_a
    Float agg_b
    Float agg_c

    Float agg_a1
    Float agg_b1
    Float agg_c1

    Float agg_a2
    Float agg_b2
    Float agg_c2

    Float agg_a3
    Float agg_b3
    Float agg_c3

    Float agg_total

    static mapping = {
        agg_a formula: '(a11 + a12 + a13 + a21 + a22 + a23 + a31 + a32 + a33) / 9'
        agg_b formula: '(b11 + b12 + b13 + b14 + b21 + b22 + b23 + b31 + b32 + b33) / 10'
        agg_c formula: '(c11 + c12 + c13 + c21 + c22 + c23 + c31 + c32 + c33) / 9'
        agg_total formula: '(a11 + a12 + a13 + a21 + a22 + a23 + a31 + a32 + a33 + b11 + b12 + b13 + b14 + b21 + b22 + b23 + b31 + b32 + b33 + c11 + c12 + c13 + c21 + c22 + c23 + c31 + c32 + c33) / 28'
        agg_a1 formula: ('(a11 + a12 + a13) / 3')
        agg_a2 formula: ('(a21 + a22 + a23) / 3')
        agg_a3 formula: ('(a31 + a32 + a33) / 3')
        agg_b1 formula: ('(b11 + b12 + b13 + b14) / 4')
        agg_b2 formula: ('(b21 + b22 + b23) / 3')
        agg_b3 formula: ('(b31 + b32 + b33) / 3')
        agg_c1 formula: ('(c11 + c12 + c13) / 3')
        agg_c2 formula: ('(c21 + c22 + c23) / 3')
        agg_c3 formula: ('(c31 + c32 + c33) / 3')
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]

    }

    static constraints = {
    }
}
