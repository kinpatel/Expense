package com.hero.revenue

import com.hero.Hotel;

class RevenueType {

	String name
	String description
	Hotel hotel
	
    static constraints = {
		name nullable: false
		description nullable: true
		hotel nullable: false
    }
	
	static auditable = true
	
	String toString ()
	{
		name
	}
}
