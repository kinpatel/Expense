package com.hero.invoice

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import com.hero.Hotel
import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser
import com.hero.HotelFilterService
import grails.converters.JSON

@Transactional(readOnly = true)
class VendorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	def hotelFilterService

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
						
		def vendorList = Vendor.findAllByHotelInList(hotelFilterService.userHotelList())
		respond vendorList, model:[vendorInstanceCount: vendorList.size]
    }

    def show(Vendor vendorInstance) {
        respond vendorInstance
    }

    def create() {
		render (view: "create", model: [vendor:new Vendor(params), hotelsFiltered: hotelFilterService.userHotelList()])
    }

    @Transactional
    def save(Vendor vendorInstance) {
        if (vendorInstance == null) {
            notFound()
            return
        }

        if (vendorInstance.hasErrors()) {
            respond vendorInstance.errors, view:'create'
            return
        }

        vendorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'vendor.label', default: 'Vendor'), vendorInstance.id])
                redirect vendorInstance
            }
            '*' { respond vendorInstance, [status: CREATED] }
        }
    }

    def edit(Vendor vendorInstance) {
		render (view: "edit", model: [vendorInstance:vendorInstance, hotelsFiltered: hotelFilterService.userHotelList()])
		//respond vendorInstance
    }

    @Transactional
    def update(Vendor vendorInstance) {
        if (vendorInstance == null) {
            notFound()
            return
        }

        if (vendorInstance.hasErrors()) {
            respond vendorInstance.errors, view:'edit'
            return
        }

        vendorInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Vendor.label', default: 'Vendor'), vendorInstance.id])
                redirect vendorInstance
            }
            '*'{ respond vendorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Vendor vendorInstance) {

        if (vendorInstance == null) {
            notFound()
            return
        }

        vendorInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Vendor.label', default: 'Vendor'), vendorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'vendor.label', default: 'Vendor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def ajaxGetVendors() {
		def hotel = Hotel.get(params.id)
		def vendorList = Vendor.findAllByHotel(hotel)
		
		render vendorList as JSON
	}
}
