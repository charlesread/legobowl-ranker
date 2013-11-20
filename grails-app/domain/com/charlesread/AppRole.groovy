package com.charlesread

class AppRole {

	String authority

	static mapping = {
		cache true
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
	}

	static constraints = {
		authority blank: false, unique: true
	}

    String toString() {
        "$authority"
    }

}
