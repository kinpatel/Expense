package com.hero.revenue

import com.hero.Hotel
import com.hero.revenue.DailyRevenue
import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser

class DailyRevenueFilterService {

    def dailyRevenuebyHotelList() {
		def user = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		
		return DailyRevenue.findAllByHotelInList(user.hotels)
    }
	
	def dailyRevenuePastDaysbyHotelList(int days) {
		def user = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		
		return DailyRevenue.findAllByHotelInListAndDayGreaterThan(user.hotels,new Date() - days).sort {it.day}
	}
	
	def dailyRevenuePastMonthsbyHotelList(int days) {
		def user = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		
		def dailyRevenuebyMonthList = DailyRevenue.findAllByHotelInListAndDayGreaterThan(user.hotels,new Date() - days)
		
		def toDate = new Date()
		def fromDate = toDate - days
		def groupBy = "month"
		
		def dailyRevenuebyMonthListNotNull = dailyRevenuebyMonthList.findAll { it.total != null }
	
     	//def dailyRevenuebyMonthListNotNullGroupBy = dailyRevenuebyMonthListNotNull.groupBy { Date.parse("MM/yyyy",it.day.format( 'MM/yyyy' )).getTime() }.collectEntries { k, v ->[ (k): v*.total.sum() ] }
		
		def dailyRevenuebyMonthListNotNullGroupBy = dailyRevenuebyMonthListNotNull.groupBy { it.day.format( 'M' ) }.collectEntries { k, v ->[ (k): v*.total.sum() ] }
		
		return dailyRevenuebyMonthListNotNullGroupBy.sort {it.key}
	}
}
	
	
