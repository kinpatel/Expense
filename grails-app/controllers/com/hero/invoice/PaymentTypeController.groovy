package com.hero.invoice



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PaymentTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PaymentType.list(params), model:[paymentTypeInstanceCount: PaymentType.count()]
    }

    def show(PaymentType paymentTypeInstance) {
        respond paymentTypeInstance
    }

    def create() {
        respond new PaymentType(params)
    }

    @Transactional
    def save(PaymentType paymentTypeInstance) {
        if (paymentTypeInstance == null) {
            notFound()
            return
        }

        if (paymentTypeInstance.hasErrors()) {
            respond paymentTypeInstance.errors, view:'create'
            return
        }

        paymentTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'paymentType.label', default: 'PaymentType'), paymentTypeInstance.id])
                redirect paymentTypeInstance
            }
            '*' { respond paymentTypeInstance, [status: CREATED] }
        }
    }

    def edit(PaymentType paymentTypeInstance) {
        respond paymentTypeInstance
    }

    @Transactional
    def update(PaymentType paymentTypeInstance) {
        if (paymentTypeInstance == null) {
            notFound()
            return
        }

        if (paymentTypeInstance.hasErrors()) {
            respond paymentTypeInstance.errors, view:'edit'
            return
        }

        paymentTypeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PaymentType.label', default: 'PaymentType'), paymentTypeInstance.id])
                redirect paymentTypeInstance
            }
            '*'{ respond paymentTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PaymentType paymentTypeInstance) {

        if (paymentTypeInstance == null) {
            notFound()
            return
        }

        paymentTypeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PaymentType.label', default: 'PaymentType'), paymentTypeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'paymentType.label', default: 'PaymentType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
