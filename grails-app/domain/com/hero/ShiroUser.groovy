package com.hero
class ShiroUser {

    String firstName
    String lastName
    String username
    String passwordHash
    String email
	String phonenumber
	byte[] image
    Date dateCreated
    Date lastUpdated

    Boolean passwordChangeRequiredOnNextLogon = false

    static hasMany = [ roles: ShiroRole, permissions: String, hotels: Hotel ]

    static constraints = {
        firstName(blank: false)
        lastName(blank: false)
        username(unique: true, blank: false, size: 5..20)
        email(unique: true, email: true)
		phonenumber(nullable: true)
		image nullable: true, maxSize: 1000000
        passwordHash(display:false)
        passwordChangeRequiredOnNextLogon(nullable: true)
    }

    static mapping = {
        cache true
        roles cache: true
        permissions cache: true
		hotels cache: true
    }
	
	static auditable = true

    @Override
    String toString() {
        username
    }

}
