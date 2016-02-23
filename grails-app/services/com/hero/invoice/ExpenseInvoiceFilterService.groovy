package com.hero.invoice

import grails.transaction.Transactional
import com.hero.invoice.ExpenseInvoice;
import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser

@Transactional
class ExpenseInvoiceFilterService {

    def expenseInvoiceHotelList() {
		def user = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		return ExpenseInvoice.findAllByHotelInList(user.hotels)
    }
	
	def expenseInvoicePastDaysbyHotelList(int days) {
		def user = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		return ExpenseInvoice.findAllByHotelInListAndInvoicedateGreaterThan(user.hotels,new Date() - days).sort {it.invoicedate}
	}
	
	
	def expenseInvoicePastMonthsbyHotelList(int days) {
		def user = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		
		def expenseInvoicebyMonthList = ExpenseInvoice.findAllByHotelInListAndInvoicedateGreaterThan(user.hotels,new Date() - days)
		
		def toDate = new Date()
		def fromDate = toDate - days
		def groupBy = "month"
		
		def expenseInvoicebyMonthListNotNull = expenseInvoicebyMonthList.findAll { it.total != null }
	
		//def expenseInvoicebyMonthListNotNullGroupBy = expenseInvoicebyMonthListNotNull.groupBy { Date.parse("MM/yyyy",it.invoicedate.format( 'MM/yyyy' )).getTime() }.collectEntries { k, v ->[ (k): v*.total.sum() ] }
		
		def expenseInvoicebyMonthListNotNullGroupBy = expenseInvoicebyMonthListNotNull.groupBy {  it.invoicedate.format( 'M' )  }.collectEntries { k, v ->[ (k): v*.total.sum() ] }

		return expenseInvoicebyMonthListNotNullGroupBy.sort {it.key}
	}
}

