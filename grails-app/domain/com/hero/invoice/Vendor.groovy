package com.hero.invoice

import com.hero.Hotel


class Vendor {

    String name
	String description
	Hotel hotel
	
	static belongsTo = Hotel

    static constraints = {
		name nullable: false, blank: false, unique: 'hotel'
		description nullable: true
		hotel nullable: false
    }
	
	static mapping = {
		version false
	}
	
	static auditable = true
	
	String toString() {
		name + "@" + hotel.name
	}
}
