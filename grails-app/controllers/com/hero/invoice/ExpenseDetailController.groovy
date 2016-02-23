package com.hero.invoice



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ExpenseDetailController {

    static allowedMethods = [saveDetail: "POST" , save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ExpenseDetail.list(params), model:[expenseDetailInstanceCount: ExpenseDetail.count()]
    }

    def show(ExpenseDetail expenseDetailInstance) {
        respond expenseDetailInstance
    }

    def create() {
        respond new ExpenseDetail(params)
    }

    @Transactional
    def save(ExpenseDetail expenseDetailInstance) {
        if (expenseDetailInstance == null) {
            notFound()
            return
        }

        if (expenseDetailInstance.hasErrors()) {
            respond expenseDetailInstance.errors, view:'create'
            return
        }

        expenseDetailInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'expenseDetail.label', default: 'ExpenseDetail'), expenseDetailInstance.id])
                redirect(controller:"expenseInvoice", action: "show", id: expenseDetailInstance.invoice.id)
            }
            '*' { respond expenseDetailInstance, [status: CREATED] }
        }
    }

    def edit(ExpenseDetail expenseDetailInstance) {
        respond expenseDetailInstance
    }

    @Transactional
    def update(ExpenseDetail expenseDetailInstance) {
        if (expenseDetailInstance == null) {
            notFound()
            return
        }

        if (expenseDetailInstance.hasErrors()) {
            respond expenseDetailInstance.errors, view:'edit'
            return
        }

        expenseDetailInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ExpenseDetail.label', default: 'ExpenseDetail'), expenseDetailInstance.id])
                redirect(controller:"expenseInvoice", action: "show", id: expenseDetailInstance.invoice.id)
            }
            '*'{ respond expenseDetailInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ExpenseDetail expenseDetailInstance) {

        if (expenseDetailInstance == null) {
            notFound()
            return
        }
		
		def invoiceid = expenseDetailInstance.invoice.id

        expenseDetailInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ExpenseDetail.label', default: 'ExpenseDetail'), expenseDetailInstance.id])
                redirect(controller:"expenseInvoice", action: "show", id: invoiceid)
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'expenseDetail.label', default: 'ExpenseDetail'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
