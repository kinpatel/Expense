package com.hero.revenue

import java.util.Date;

class RevenueDetail {

	DailyRevenue dailyrevenue
	RevenueType revenuetype
	String description
	double total
	int quantity

	static belongsTo = [DailyRevenue]
	
    static constraints = {
		dailyrevenue nullable: false
		revenuetype nullable: false
		description nullable: true
		total nullable: false
		quantity nullable: true
    }
	
	static auditable = true
}
