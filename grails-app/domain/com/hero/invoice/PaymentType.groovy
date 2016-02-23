package com.hero.invoice

class PaymentType {
	
	String name
	String description

    static constraints = {
		name nullable: false, blank: false, unique: true
		description nullable: true
    }
	
	static mapping = {
		version false
	}
	
	static auditable = true
	
	String toString() {
		name
	}
}
