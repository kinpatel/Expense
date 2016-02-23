package com.hero

class ExpenseCategory {
	
	String name
	String description

	
	static constraints = {
		name nullable: false, blank: false, unique: true
		description nullable: true
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
