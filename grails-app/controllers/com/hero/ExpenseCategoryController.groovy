package com.hero

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ExpenseCategoryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ExpenseCategory.list(params), model:[expenseCategoryInstanceCount: ExpenseCategory.count()]
    }

    def show(ExpenseCategory expenseCategoryInstance) {
        respond expenseCategoryInstance
    }

    def create() {
        respond new ExpenseCategory(params)
    }

    @Transactional
    def save(ExpenseCategory expenseCategoryInstance) {
        if (expenseCategoryInstance == null) {
            notFound()
            return
        }

        if (expenseCategoryInstance.hasErrors()) {
            respond expenseCategoryInstance.errors, view:'create'
            return
        }

        expenseCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'expenseCategory.label', default: 'ExpenseCategory'), expenseCategoryInstance.id])
                redirect expenseCategoryInstance
            }
            '*' { respond expenseCategoryInstance, [status: CREATED] }
        }
    }

    def edit(ExpenseCategory expenseCategoryInstance) {
        respond expenseCategoryInstance
    }

    @Transactional
    def update(ExpenseCategory expenseCategoryInstance) {
        if (expenseCategoryInstance == null) {
            notFound()
            return
        }

        if (expenseCategoryInstance.hasErrors()) {
            respond expenseCategoryInstance.errors, view:'edit'
            return
        }

        expenseCategoryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ExpenseCategory.label', default: 'ExpenseCategory'), expenseCategoryInstance.id])
                redirect expenseCategoryInstance
            }
            '*'{ respond expenseCategoryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ExpenseCategory expenseCategoryInstance) {

        if (expenseCategoryInstance == null) {
            notFound()
            return
        }

        expenseCategoryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ExpenseCategory.label', default: 'ExpenseCategory'), expenseCategoryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'expenseCategory.label', default: 'ExpenseCategory'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
