package com.hero

class Hotel {
	
	String name
	String phonenumber
	String address1
	String address2
	String city
	String state
	String zip
	String country
	int totalrooms
	int lastyearrooms
	String propertycode
	double statetaxrate
	double countycitytaxrate
	
	static hasMany = [ users: ShiroUser ]
		
	static belongsTo = ShiroUser

    static constraints = {
		name nullable: false, blank: false, unique: true
		phonenumber nullable: false, blank: false
		address1 nullable: false, blank: false
		address2 nullable: true
		city nullable: false, blank: false
		state nullable: false, blank: false
		zip nullable: false, blank: false
		country nullable: false, blank: false
		totalrooms nullable: true
		lastyearrooms nullable: true
		propertycode nullable: true
		statetaxrate nullable: true
		countycitytaxrate nullable: true
    }
	
	static mapping = {
		sort name:"asc"
		version false
	}
	
	static auditable = true
	
	String toString() {
		name
	}
}
