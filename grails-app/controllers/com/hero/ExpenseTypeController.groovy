package com.hero



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import com.hero.Hotel
import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser
import com.hero.HotelFilterService

@Transactional(readOnly = true)
class ExpenseTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def hotelFilterService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		
		//def user = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
		def expenseTypeList = ExpenseType.findAllByHotelInList(hotelFilterService.userHotelList())
		
	
		//respond ExpenseType.list(params), model:[expenseTypeInstanceCount: ExpenseType.count()]
		respond expenseTypeList, model:[expenseTypeInstanceCount: expenseTypeList.size] 
    }

    def show(ExpenseType expenseTypeInstance) {
        respond expenseTypeInstance
    }

    def create() {
		render (view: "create", model: [vendor:new ExpenseType(params), hotelsFiltered: hotelFilterService.userHotelList()])
    }

    @Transactional
    def save(ExpenseType expenseTypeInstance) {
        if (expenseTypeInstance == null) {
            notFound()
            return
        }

        if (expenseTypeInstance.hasErrors()) {
            respond expenseTypeInstance.errors, view:'create'
            return
        }

        expenseTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'expenseType.label', default: 'ExpenseType'), expenseTypeInstance.id])
                redirect expenseTypeInstance
            }
            '*' { respond expenseTypeInstance, [status: CREATED] }
        }
    }

    def edit(ExpenseType expenseTypeInstance) {
        
		render (view: "edit", model: [expenseTypeInstance:expenseTypeInstance, hotelsFiltered: hotelFilterService.userHotelList()])
    }

    @Transactional
    def update(ExpenseType expenseTypeInstance) {
        if (expenseTypeInstance == null) {
            notFound()
            return
        }

        if (expenseTypeInstance.hasErrors()) {
            respond expenseTypeInstance.errors, view:'edit'
            return
        }

        expenseTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ExpenseType.label', default: 'ExpenseType'), expenseTypeInstance.id])
                redirect expenseTypeInstance
            }
            '*'{ respond expenseTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ExpenseType expenseTypeInstance) {

        if (expenseTypeInstance == null) {
            notFound()
            return
        }

        expenseTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ExpenseType.label', default: 'ExpenseType'), expenseTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'expenseType.label', default: 'ExpenseType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
