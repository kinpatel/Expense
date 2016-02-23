package com.hero.invoice

import com.hero.ExpenseType

class ExpenseDetail {
	
	ExpenseInvoice invoice
	ExpenseType expensetype
	String detailcode
	int quantity
	String description
	double amount

	static belongsTo = [ExpenseInvoice]

    static constraints = {
		invoice nullable: false, blank: false
		expensetype nullable: false, blank: false
		detailcode nullable: true
		quantity nullable: true, defaultValue: 1
		description nullable: true
		amount nullable: false, blank: false
    }
	
	static auditable = true
}
