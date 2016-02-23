package com.hero.invoice

import com.hero.ExpenseType;
import com.hero.Hotel
import com.hero.ShiroUser

class ExpenseInvoice {
	
	Date invoicedate
	Date dateentered = new Date()
	Date datepaid
	int status
	byte[] image
	String imagecontenttype
	double amount
	double tax
	double total	
	Vendor vendor
	PaymentType paymenttype
	String paymentdescription
	Hotel hotel
	ShiroUser enteruser
	String accountnumber
	String ocrtext
	ExpenseType expensetype
	
	static mapping = {
		ocrtext type: "text"
	}
	
	static belongsTo = [Vendor, Hotel]
	static hasMany = [expensedetails : ExpenseDetail]

    static constraints = {
		invoicedate nullable: false, blank: false
		dateentered nullable: false, blank: false, defaultValue: new Date()
		datepaid nullable: true
		image nullable: true, maxSize: 5000000
		imagecontenttype nullable: true
		amount nullable: true
		tax nullable: true
		total nullable: false
		vendor nullable: false
		paymenttype nullable: true
		paymentdescription nullable:true
		hotel nullable: false
		enteruser nullable: true
		accountnumber nullable: true
		ocrtext nullable: true
		expensetype nullable: true
    }
	
	static auditable = true
	
}
