package com.hero

class ExpenseType {
	
	String name
	String description
	ExpenseCategory expensecategory
	Hotel hotel
	String glcode

    static constraints = {
		name nullable: false, blank: false
		description nullable: true
		expensecategory nullable: false
		hotel nullable: false
		glcode nullable: true
    }
	
	static mapping = {
		sort name:"asc"
		version false
	}
	
	static auditable = true
	
	String toString() {
		name + " - " + expensecategory.name
	}
}
