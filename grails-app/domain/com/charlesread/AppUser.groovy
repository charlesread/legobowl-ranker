package com.charlesread

import grails.plugin.springsecurity.SpringSecurityUtils

class AppUser {

	transient springSecurityService

	String username
	String password = '123'
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService', 'admin']

	static constraints = {
		username blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
	}

	Set<AppRole> getAuthorities() {
		AppUserAppRole.findAllByAppUser(this).collect { it.appRole } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}

    String toString() {
        "$username"
    }

    Boolean isAdmin() {
        return SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN')
    }
}
