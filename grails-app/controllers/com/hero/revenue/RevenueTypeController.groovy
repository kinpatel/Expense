package com.hero.revenue



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import com.hero.Hotel
import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser
import com.hero.HotelFilterService

@Transactional(readOnly = true)
class RevenueTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def hotelFilterService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		
		def revenueTypeList = RevenueType.findAllByHotelInList(hotelFilterService.userHotelList())
		
		respond revenueTypeList, model:[revenueTypeInstanceCount: revenueTypeList.size]
    }

    def show(RevenueType revenueTypeInstance) {
        respond revenueTypeInstance
    }

    def create() {
		render (view: "create", model: [vendor:new RevenueType(params), hotelsFiltered: hotelFilterService.userHotelList()])
    }

    @Transactional
    def save(RevenueType revenueTypeInstance) {
        if (revenueTypeInstance == null) {
            notFound()
            return
        }

        if (revenueTypeInstance.hasErrors()) {
            respond revenueTypeInstance.errors, view:'create'
            return
        }

        revenueTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'revenueType.label', default: 'RevenueType'), revenueTypeInstance.id])
                redirect revenueTypeInstance
            }
            '*' { respond revenueTypeInstance, [status: CREATED] }
        }
    }

    def edit(RevenueType revenueTypeInstance) {
		render (view: "edit", model: [revenueTypeInstance:revenueTypeInstance, hotelsFiltered: hotelFilterService.userHotelList()])
    }

    @Transactional
    def update(RevenueType revenueTypeInstance) {
        if (revenueTypeInstance == null) {
            notFound()
            return
        }

        if (revenueTypeInstance.hasErrors()) {
            respond revenueTypeInstance.errors, view:'edit'
            return
        }

        revenueTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RevenueType.label', default: 'RevenueType'), revenueTypeInstance.id])
                redirect revenueTypeInstance
            }
            '*'{ respond revenueTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RevenueType revenueTypeInstance) {

        if (revenueTypeInstance == null) {
            notFound()
            return
        }

        revenueTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RevenueType.label', default: 'RevenueType'), revenueTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'revenueType.label', default: 'RevenueType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
