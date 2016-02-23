package com.hero.revenue

import java.util.Date;
import java.text.SimpleDateFormat;

import com.hero.Hotel;
import com.hero.ShiroUser;
import com.sun.org.apache.bcel.internal.generic.RETURN;


class DailyRevenue {
	
	Date day
	Date dateentered = new Date()
	Hotel hotel
	double total
	double taxexempt
	double taxabletotal
	double countycitytax
	double statetax
	double cashcheck
	double visa
	double mastercard
	double amex
	double discovery
	double diners
	ShiroUser enteruser
	
    static constraints = {
		day nullable: false, blank: false, unique:true
		dateentered nullable: false, blank: false, defaultValue: new Date()
		hotel nullable: false
		total nullable: false
		taxexempt nullable: true
		taxabletotal nullable: true
		countycitytax nullable: true
		statetax nullable: true
		cashcheck nullable: true
		visa nullable: true
		mastercard nullable: true
		amex nullable: true
		discovery nullable: true
		diners nullable: true
	    enteruser nullable: false
    }
	
	static auditable = true
	
	String toString ()
	{	
		 SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy")
		 sdf.format(this.day)
	}
}
