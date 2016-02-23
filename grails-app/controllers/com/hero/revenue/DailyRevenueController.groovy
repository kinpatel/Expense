package com.hero.revenue

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import java.text.SimpleDateFormat

import org.apache.shiro.SecurityUtils

import com.hero.ShiroUser
import com.hero.HotelFilterService

@Transactional(readOnly = true)

class DailyRevenueController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def hotelFilterService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		params.user = SecurityUtils.subject?.principal
        //respond DailyRevenue.list(params), model:[dailyRevenueInstanceCount: DailyRevenue.count()]
		
		def revenueList = DailyRevenue.findAllByHotelInList(hotelFilterService.userHotelList())
		respond revenueList, model:[dailyRevenueInstanceCount: revenueList.size]
    }

    def show(DailyRevenue dailyRevenueInstance) {
        respond dailyRevenueInstance
    }

    def create() {
		render (view: "create", model: [dailyRevenue:new DailyRevenue(params), hotelsFiltered: hotelFilterService.userHotelList()])
        //respond new DailyRevenue(params)
    }

    @Transactional
    def save(DailyRevenue dailyRevenueInstance) {
        if (dailyRevenueInstance == null) {
            notFound()
            return
        }

        if (dailyRevenueInstance.hasErrors()) {
            respond dailyRevenueInstance.errors, view:'create'
            return
        }

        dailyRevenueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dailyRevenue.label', default: 'DailyRevenue'), dailyRevenueInstance.id])
                redirect dailyRevenueInstance
            }
            '*' { respond dailyRevenueInstance, [status: CREATED] }
        }
    }

	@Transactional
	def saveDailyRevenue(DailyRevenue dailyRevenueInstance) {
		dailyRevenueInstance.validate()
		if (dailyRevenueInstance.hasErrors()) {
			dailyRevenueInstance.clearErrors()
		
			if (params.day.length() > 0)
				dailyRevenueInstance.day = new SimpleDateFormat("MM/dd/yyyy").parse(params.day)
			else
				dailyRevenueInstance.day = null
		
			dailyRevenueInstance.enteruser = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		}
		
		if (dailyRevenueInstance.hasErrors()) {
			respond dailyRevenueInstance.errors, view:'create'
			return
		}
		
		save(dailyRevenueInstance)
		
	}
	
    def edit(DailyRevenue dailyRevenueInstance) {
        render (view: "edit", model: [dailyRevenueInstance:dailyRevenueInstance, hotelsFiltered: hotelFilterService.userHotelList()])
    }

    @Transactional
    def update(DailyRevenue dailyRevenueInstance) {
        if (dailyRevenueInstance == null) {
            notFound()
            return
        }

        if (dailyRevenueInstance.hasErrors()) {
            respond dailyRevenueInstance.errors, view:'edit'
            return
        }

        dailyRevenueInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DailyRevenue.label', default: 'DailyRevenue'), dailyRevenueInstance.id])
                redirect dailyRevenueInstance
            }
            '*'{ respond dailyRevenueInstance, [status: OK] }
        }
    }
	
	@Transactional
	def updateDailyRevenue(DailyRevenue dailyRevenueInstance) {
		dailyRevenueInstance.validate()
		if (dailyRevenueInstance.hasErrors()) {
			dailyRevenueInstance.clearErrors()
			
			if (params.day.length() > 0)
				dailyRevenueInstance.day = new SimpleDateFormat("MM/dd/yyyy").parse(params.day)
			else
				dailyRevenueInstance.day = null
			
			dailyRevenueInstance.enteruser = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
			
			dailyRevenueInstance.validate()
		}
		
		if (dailyRevenueInstance.hasErrors()) {
			respond dailyRevenueInstance.errors, view:'create'
			return
		}
		
		update(dailyRevenueInstance)
	}

    @Transactional
    def delete(DailyRevenue dailyRevenueInstance) {

        if (dailyRevenueInstance == null) {
            notFound()
            return
        }

        dailyRevenueInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DailyRevenue.label', default: 'DailyRevenue'), dailyRevenueInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dailyRevenue.label', default: 'DailyRevenue'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
