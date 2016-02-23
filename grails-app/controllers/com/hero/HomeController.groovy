package com.hero

import grails.converters.JSON
import com.hero.DailyRevenueFilterService

import com.hero.revenue.DailyRevenueFilterService;
import com.hero.invoice.ExpenseInvoiceFilterService;

import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser

class HomeController {
	
	def dailyRevenueFilterService
	def expenseInvoiceFilterService

    def index() { 
		
		ShiroUser shiroUser = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
	
		def dailyRevenueList = dailyRevenueFilterService.dailyRevenuePastDaysbyHotelList(90)
		
		//group by Month
		def dailyRevenuePastMonthsList = dailyRevenueFilterService.dailyRevenuePastMonthsbyHotelList(90)
		
		def expenseInvoiceList = expenseInvoiceFilterService.expenseInvoicePastDaysbyHotelList(90)
		
		//group by Month
		def expenseInvoicePastMonthList = expenseInvoiceFilterService.expenseInvoicePastMonthsbyHotelList(90)
		
		
		//JSON - use for AmCharts
		//def chartData = "[{"
		//dailyRevenue.eachWithIndex() { obj, i -> chartData+="${(i>0)?"},{":""}date:${obj.day.format("MM/dd/yyyy")},total:${obj?.total}" };
		//chartData+= "}]"
		
		//JAVASCRIPT Array Revenue Chart
		def chartRevenueData = "[["  
		dailyRevenueList.eachWithIndex() { obj, i -> chartRevenueData+="${(i>0)?"],[":""}${obj.day.getTime()},${obj?.total}" }
		chartRevenueData+= "]]"
		
		println chartRevenueData
		
		//JAVASCRIPT Array Month Revenue Chart
		def chartRevenueMonthData = "[["
		dailyRevenuePastMonthsList.eachWithIndex() { obj, i -> chartRevenueMonthData+="${(i>0)?"],[":""}${obj.key},${obj.value}" };
		chartRevenueMonthData+= "]]"
		
		println "Monthly:"+chartRevenueMonthData
		
		//JAVASCRIPT Array Expense Chart
		def chartExpenseData = "[["
		expenseInvoiceList.eachWithIndex() { obj, i -> chartExpenseData+="${(i>0)?"],[":""}${obj.invoicedate.getTime()},${obj?.total}" }
		chartExpenseData+= "]]"
		
		println chartExpenseData
		
		//JAVASCRIPT Array Expense Chart
		def chartExpenseMonthData = "[["
		expenseInvoicePastMonthList.eachWithIndex() { obj, i -> chartExpenseMonthData+="${(i>0)?"],[":""}${obj.key},${obj.value}" };
		chartExpenseMonthData+= "]]"
		
		println "Monthly:" + chartExpenseMonthData
		
		println grailsApplication.controllerClasses
		
		//Test
		//chartData="[[1196463600000, 0], [1196550000000, 0], [1196636400000, 0], [1196722800000, 77], [1196809200000, 3636], [1196895600000, 3575], [1196982000000, 2736], [1197068400000, 1086], [1197154800000, 676], [1197241200000, 1205], [1197327600000, 906], [1197414000000, 710], [1197500400000, 639], [1197586800000, 540], [1197673200000, 435], [1197759600000, 301], [1197846000000, 575], [1197932400000, 481], [1198018800000, 591], [1198105200000, 608], [1198191600000, 459], [1198278000000, 234], [1198364400000, 1352], [1198450800000, 686], [1198537200000, 279], [1198623600000, 449], [1198710000000, 468], [1198796400000, 392], [1198882800000, 282], [1198969200000, 208], [1199055600000, 229], [1199142000000, 177], [1199228400000, 374], [1199314800000, 436], [1199401200000, 404], [1199487600000, 253], [1199574000000, 218], [1199660400000, 476], [1199746800000, 462], [1199833200000, 500], [1199919600000, 700], [1200006000000, 750], [1200092400000, 600], [1200178800000, 500], [1200265200000, 900], [1200351600000, 930], [1200438000000, 1200], [1200524400000, 980], [1200610800000, 950], [1200697200000, 900], [1200783600000, 1000], [1200870000000, 1050], [1200956400000, 1150], [1201042800000, 1100], [1201129200000, 1200], [1201215600000, 1300], [1201302000000, 1700], [1201388400000, 1450], [1201474800000, 1500], [1201561200000, 546], [1201647600000, 614], [1201734000000, 954], [1201820400000, 1700], [1201906800000, 1800], [1201993200000, 1900], [1202079600000, 2000], [1202166000000, 2100], [1202252400000, 2200], [1202338800000, 2300], [1202425200000, 2400], [1202511600000, 2550], [1202598000000, 2600], [1202684400000, 2500], [1202770800000, 2700], [1202857200000, 2750], [1202943600000, 2800], [1203030000000, 3245], [1203116400000, 3345], [1203202800000, 3000], [1203289200000, 3200], [1203375600000, 3300], [1203462000000, 3400], [1203548400000, 3600], [1203634800000, 3700], [1203721200000, 3800], [1203807600000, 4000], [1203894000000, 4500]]";
		
		[chartRevenueData: chartRevenueData, chartExpenseData:chartExpenseData,chartRevenueMonthData: chartRevenueMonthData, chartExpenseMonthData:chartExpenseMonthData]
	}
}
