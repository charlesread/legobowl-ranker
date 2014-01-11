package com.charlesread

import grails.plugin.springsecurity.SpringSecurityUtils

class AppUser {

	transient springSecurityService

	String username
	String password = '123'
    String firstName
    String lastName
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired = true
    CriteriaGroup criteriaGroup
    String userFullName
    Date lastLogin
    Room room

	static transients = ['springSecurityService', 'admin', 'judge', 'referee', 'fullName']

	static constraints = {
		username(blank: false, unique: true)
		password(blank: false)
        lastLogin(nullable: true)
        room(blank: true,nullable: true)
        criteriaGroup(blank: true, nullable: true)
	}

	static mapping = {
		password column: '`password`'
        id generator: "sequence", params: [sequence: "LEGO_SEQ"]
        userFullName formula: "first_name || ' ' || last_name"
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
        "$userFullName"
    }

    Boolean isAdmin() {
        return SpringSecurityUtils.ifAnyGranted('ROLE_ADMIN')
    }

    Boolean isJudge() {
        return SpringSecurityUtils.ifAnyGranted('ROLE_JUDGE')
    }

    Boolean isReferee() {
        return SpringSecurityUtils.ifAnyGranted('ROLE_REFEREE')
    }
}
