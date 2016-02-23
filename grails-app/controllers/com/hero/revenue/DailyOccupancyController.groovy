package com.hero.revenue



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import java.text.SimpleDateFormat

import org.apache.shiro.SecurityUtils

import com.hero.ShiroUser
import com.hero.HotelFilterService
import com.hero.revenue.DailyOccupancy;

@Transactional(readOnly = true)
class DailyOccupancyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def hotelFilterService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		params.user = SecurityUtils.subject?.principal
		def dailyOccupancyList = DailyOccupancy.findAllByHotelInList(hotelFilterService.userHotelList())
		respond dailyOccupancyList, model:[dailyOccupancyInstanceCount: dailyOccupancyList.size]
    }

    def show(DailyOccupancy dailyOccupancyInstance) {
        respond dailyOccupancyInstance
    }

    def create() {
		render (view: "create", model: [dailyOccupancy:new DailyOccupancy(params), hotelsFiltered: hotelFilterService.userHotelList()])
    }
	
	@Transactional
	def saveDailyOccupancy(DailyOccupancy dailyOccupancyInstance) {
		dailyOccupancyInstance.validate()
		if (dailyOccupancyInstance.hasErrors()) {
			dailyOccupancyInstance.clearErrors()
			
			if (params.day.length() > 0)
				dailyOccupancyInstance.day = new SimpleDateFormat("MM/dd/yyyy").parse(params.day)
			else
				dailyOccupancyInstance.day = null
			
			dailyOccupancyInstance.enteruser = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
			
			dailyOccupancyInstance.validate()
		}
		
		if (dailyOccupancyInstance.hasErrors()) {
			respond dailyOccupancyInstance.errors, view:'create'
			return
		}
		
		save(dailyOccupancyInstance)
	}
	
	    @Transactional
    def save(DailyOccupancy dailyOccupancyInstance) {
        if (dailyOccupancyInstance == null) {
            notFound()
            return
        }

        if (dailyOccupancyInstance.hasErrors()) {
            respond dailyOccupancyInstance.errors, view:'create'
            return
        }

        dailyOccupancyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dailyOccupancy.label', default: 'DailyOccupancy'), dailyOccupancyInstance.id])
                redirect dailyOccupancyInstance
            }
            '*' { respond dailyOccupancyInstance, [status: CREATED] }
        }
    }

    def edit(DailyOccupancy dailyOccupancyInstance) {
		render (view: "edit", model: [dailyOccupancyInstance:dailyOccupancyInstance, hotelsFiltered: hotelFilterService.userHotelList()])
    }
	
	@Transactional
	def updateDailyOccupancy(DailyOccupancy dailyOccupancyInstance) {
		dailyOccupancyInstance.validate()
		if (dailyOccupancyInstance.hasErrors()) {
			dailyOccupancyInstance.clearErrors()
			
			if (params.day.length() > 0)
				dailyOccupancyInstance.day = new SimpleDateFormat("MM/dd/yyyy").parse(params.day)
			else
				dailyOccupancyInstance.day = null
			
			dailyOccupancyInstance.enteruser = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
			
			dailyOccupancyInstance.validate()
		}
		
		if (dailyOccupancyInstance.hasErrors()) {
			respond dailyOccupancyInstance.errors, view:'create'
			return
		}
		
		update(dailyOccupancyInstance)
	}

    @Transactional
    def update(DailyOccupancy dailyOccupancyInstance) {
        if (dailyOccupancyInstance == null) {
            notFound()
            return
        }

        if (dailyOccupancyInstance.hasErrors()) {
            respond dailyOccupancyInstance.errors, view:'edit'
            return
        }

        dailyOccupancyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DailyOccupancy.label', default: 'DailyOccupancy'), dailyOccupancyInstance.id])
                redirect dailyOccupancyInstance
            }
            '*'{ respond dailyOccupancyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DailyOccupancy dailyOccupancyInstance) {

        if (dailyOccupancyInstance == null) {
            notFound()
            return
        }

        dailyOccupancyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DailyOccupancy.label', default: 'DailyOccupancy'), dailyOccupancyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dailyOccupancy.label', default: 'DailyOccupancy'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
