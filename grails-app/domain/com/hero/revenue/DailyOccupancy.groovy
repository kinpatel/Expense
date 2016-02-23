package com.hero.revenue

import java.util.Date;

import com.hero.Hotel;
import com.hero.ShiroUser;

class DailyOccupancy {
	
	Date day
	Date dateentered = new Date()
	Hotel hotel
	int totalrevenuerooms
	int totalnonrevenuerooms
	int totaloccupiedrooms
	int totalnoofadults
	int totalnoofchildren
	int withreservation
	int walkins
	int noshows
	int cancelationsfortodayarrival
	int checkedouttoday
	ShiroUser enteruser
	
	static belongsTo = [Hotel]

    static constraints = {
		day nullable: false, blank: false
		dateentered nullable: false, blank: false, defaultValue: new Date()
		hotel nullable: false
		totalrevenuerooms nullable: false
		totalnonrevenuerooms nullable: true
		totaloccupiedrooms nullable: false
		totalnoofadults nullable: true
		totalnoofchildren nullable: true
		withreservation nullable: true
		walkins nullable: true
		noshows nullable: true
		cancelationsfortodayarrival nullable: true
		checkedouttoday nullable: true
    }
	
	static auditable = true
}

