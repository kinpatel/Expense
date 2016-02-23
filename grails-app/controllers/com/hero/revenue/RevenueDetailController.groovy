package com.hero.revenue

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.apache.shiro.SecurityUtils

import com.hero.ShiroUser
import com.hero.HotelFilterService

@Transactional(readOnly = true)
class RevenueDetailController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def dailyRevenueFilterService
	def revenueTypeFilterService
	
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		
		//def revenueDetailsList = RevenueDetail.findAllByDailyrevenueInList(RevenueDetail.list(params))
		
		//respond revenueTypeList, model:[revenueTypeInstanceCount: revenueTypeList.size]
		
		//def revenueTypeByHotel = revenueTypeFilterService.revenueTypebyHotelList() 
		
		def dailyRevenuebyHotelByHotel = dailyRevenueFilterService.dailyRevenuebyHotelList()
		
		def revenueDetailByDailyRevenue = RevenueDetail.findAllByDailyrevenueInList(dailyRevenuebyHotelByHotel)
		
		respond revenueDetailByDailyRevenue, model:[revenueDetailInstanceCount: revenueDetailByDailyRevenue.size]
		
        //respond RevenueDetail.list(params), model:[revenueDetailInstanceCount: RevenueDetail.count()]
    }

    def show(RevenueDetail revenueDetailInstance) {
        respond revenueDetailInstance
    }

    def create() {
		render (view: "create", model: [revenueDetail:new RevenueDetail(params), dailyRevenueFiltered : dailyRevenueFilterService.dailyRevenuebyHotelList(), revenueTypeFiltered : revenueTypeFilterService.revenueTypebyHotelList()])
        //respond new RevenueDetail(params)
    }

    @Transactional
    def save(RevenueDetail revenueDetailInstance) {
        if (revenueDetailInstance == null) {
            notFound()
            return
        }

        if (revenueDetailInstance.hasErrors()) {
            respond revenueDetailInstance.errors, view:'create'
            return
        }

        revenueDetailInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'revenueDetail.label', default: 'RevenueDetail'), revenueDetailInstance.id])
                redirect revenueDetailInstance
            }
            '*' { respond revenueDetailInstance, [status: CREATED] }
        }
    }

    def edit(RevenueDetail revenueDetailInstance) {
		render (view: "edit", model: [revenueDetailInstance:revenueDetailInstance, dailyRevenueFiltered : dailyRevenueFilterService.dailyRevenuebyHotelList(), revenueTypeFiltered : revenueTypeFilterService.revenueTypebyHotelList()])
        //respond revenueDetailInstance
    }

    @Transactional
    def update(RevenueDetail revenueDetailInstance) {
        if (revenueDetailInstance == null) {
            notFound()
            return
        }

        if (revenueDetailInstance.hasErrors()) {
            respond revenueDetailInstance.errors, view:'edit'
            return
        }

        revenueDetailInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RevenueDetail.label', default: 'RevenueDetail'), revenueDetailInstance.id])
                redirect revenueDetailInstance
            }
            '*'{ respond revenueDetailInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RevenueDetail revenueDetailInstance) {

        if (revenueDetailInstance == null) {
            notFound()
            return
        }

        revenueDetailInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RevenueDetail.label', default: 'RevenueDetail'), revenueDetailInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'revenueDetail.label', default: 'RevenueDetail'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
