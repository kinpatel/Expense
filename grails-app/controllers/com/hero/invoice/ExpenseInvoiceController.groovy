package com.hero.invoice


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import java.text.SimpleDateFormat
import org.apache.shiro.SecurityUtils
import com.hero.ShiroUser
import com.hero.Hotel
import com.hero.invoice.ExpenseDetail


import com.hero.HotelFilterService

import org.apache.commons.lang.RandomStringUtils
import groovyx.net.http.HTTPBuilder
import groovyx.net.http.ContentType.*
import groovyx.net.http.Method.*



@Transactional(readOnly = true)
class ExpenseInvoiceController {

    static allowedMethods = [saveInvoice: "POST", save: "POST", update: "PUT", delete: "DELETE"]
	def hotelFilterService
	def ocrService

    def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		params.user = SecurityUtils.subject?.principal
		def invoiceList = ExpenseInvoice.findAllByHotelInList(hotelFilterService.userHotelList())
		respond invoiceList, model:[expenseInvoiceInstanceCount: invoiceList.size, hotelsFiltered: hotelFilterService.userHotelList()]
    }

    def show(ExpenseInvoice expenseInvoiceInstance) {
		def expenseDetailInstanceList = ExpenseDetail.findAllByInvoice(expenseInvoiceInstance)
		def detailTotal = 0.0;
		String expenseTypes =""
		
		expenseDetailInstanceList.each{
			detailTotal = detailTotal + it.amount
			if (expenseTypes)			
				expenseTypes = expenseTypes +", "+ it.expensetype.name
			else
			expenseTypes = it.expensetype.name
		}
		
		render (view: "show", model: [expenseInvoiceInstance:expenseInvoiceInstance, expenseDetailInstanceList:expenseDetailInstanceList, difference:(expenseInvoiceInstance.total<=>detailTotal), expenseTypes:expenseTypes])
    }

    def create() {
		def tax = 0.10
		render (view: "create", model: [expenseInvoice:new ExpenseInvoice(params), hotelsFiltered: hotelFilterService.userHotelList(), tax: tax])
        //respond new ExpenseInvoice(params)
    }
	
	def calculateTax(){
		
		def tax = params.get('subtotal')
		
		render tax
		
		}
	
	@Transactional
	def saveInvoice(ExpenseInvoice expenseInvoiceInstance) {
		expenseInvoiceInstance.validate()
		if (expenseInvoiceInstance.hasErrors()) {
			expenseInvoiceInstance.clearErrors()
			
			if (params.invoicedate.length() > 0)
				expenseInvoiceInstance.invoicedate = new SimpleDateFormat("MM/dd/yyyy").parse(params.invoicedate)
			else
				expenseInvoiceInstance.invoicedate = null		
			
			if (params.datepaid.length() > 0)
				expenseInvoiceInstance.datepaid = new SimpleDateFormat("MM/dd/yyyy").parse(params.datepaid)
			else
				expenseInvoiceInstance.datepaid = null
			
			/* Tax Calculation */		
			if (!params.amount && !params.tax){
				if (params.hotel.id){
					def hotel = Hotel.findById(params.hotel.id)
					def tax = hotel?.getStatetaxrate() + hotel?.getCountycitytaxrate()
					
					expenseInvoiceInstance.tax = ((Double.parseDouble(params.total))*(tax/100))
					expenseInvoiceInstance.amount = ((Double.parseDouble(params.total)) - ((Double.parseDouble(params.total))*(tax/100)))
				}
			}
						
			expenseInvoiceInstance.enteruser = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
			
			def f = params.image
			expenseInvoiceInstance.imagecontenttype = f.getContentType()
			
			expenseInvoiceInstance.validate()
			
			//OCR
			//write random name image
			/*
			if(expenseInvoiceInstance.image!= null && expenseInvoiceInstance.image.length > 0)
			{
				byte[] invoiceimg = expenseInvoiceInstance.image
				System.out.println("Mime:" + expenseInvoiceInstance.imagecontenttype);
				String basePath = applicationContext.getResource("/").getFile().toString()
				System.out.println("Base Path:"+basePath);
				
				//Random File Name
				String charset = (('A'..'Z') + ('0'..'9')).join()
				Integer length = 9
				String randomString = RandomStringUtils.random(length, charset.toCharArray())
				
				String filename = randomString
				String extension = ""
				switch (expenseInvoiceInstance.imagecontenttype) {
					case "image/jpeg":
						extension = ".jpg"
						break
				
					case "image/png":
						extension += ".png"
						break
				
					case "application/pdf":
						extension = ".pdf"
						break
				
					default:
						extension = "."
				}
				
				FileOutputStream destination = new FileOutputStream("${basePath}/invoiceimages/" + filename + extension)
				destination.write(invoiceimg);
				destination.close()
				
				//start OCR WS call
				def http = new HTTPBuilder('http://ec2-54-85-4-45.compute-1.amazonaws.com:8080/fetchurl')
				http.request(POST, JSON) {
					//requestContentType = ContentType.APPLICATION_JSON // corresponding to application/json
					body = ["url": "http://hero.elasticbeanstalk.com/invoiceimages/" + filename + extension]
					//body = ["url": "http://i19.photobucket.com/albums/b151/RRF985/scan0001.jpg"]
					//requestContentType = ContentType.JSON
				   
					response.success = { resp,reader ->
					  println "Success! ${resp.status}"
					  // parse the JSON response object:
					  println "Response length: ${resp.headers.'Content-Length'}"
					  System.out << "OCRed WS:"+expenseInvoiceInstance.enteruser + ":" + expenseInvoiceInstance.hotel+":\n0" + reader // print response reader
					  
					  String ocredText = reader.result
					  if(reader.result!=null && reader.result.length()>0)
					  {
						  ocredText = ocredText.replace("|"," ")
						  ocredText = ocredText.replace("^","\n")
					  }
					  
					  System.out << "CleannedUp:\n" + ocredText
					  
					  expenseInvoiceInstance.ocrtext = ocredText
					  assert resp.statusLine.statusCode == 200
					  new File("${basePath}/invoiceimages/" + filename + extension).delete();
					}
				}
				//return reader
			}
			//END OCR
			*/			
			
			
		}
		
		if (expenseInvoiceInstance.hasErrors()) {
			respond expenseInvoiceInstance.errors, view:'create'
			return
		}
		
		save(expenseInvoiceInstance)
	}

    @Transactional
    def save(ExpenseInvoice expenseInvoiceInstance) {
        if (expenseInvoiceInstance == null) {
            notFound()
            return
        }

        if (expenseInvoiceInstance.hasErrors()) {
            respond expenseInvoiceInstance.errors, view:'create'
            return
        }
		
		expenseInvoiceInstance.save flush:true
		
		// Add detail
		ExpenseDetail expenseDetailInstance = new ExpenseDetail(invoice:expenseInvoiceInstance, expensetype:expenseInvoiceInstance.expensetype, quantity:1, amount:expenseInvoiceInstance.total)
		expenseDetailInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'expenseInvoice.label', default: 'ExpenseInvoice'), expenseInvoiceInstance.id])
                redirect expenseInvoiceInstance
            }
            '*' { respond expenseInvoiceInstance, [status: CREATED] }
        }
    }

    def edit(ExpenseInvoice expenseInvoiceInstance) {
		render (view: "edit", model: [expenseInvoiceInstance:expenseInvoiceInstance, hotelsFiltered: hotelFilterService.userHotelList()])
    }
	
	@Transactional
	def updateInvoice(ExpenseInvoice expenseInvoiceInstance) {
		expenseInvoiceInstance.validate()
		if (expenseInvoiceInstance.hasErrors()) {
			expenseInvoiceInstance.clearErrors()
			
			if (params.invoicedate.length() > 0)
				expenseInvoiceInstance.invoicedate = new SimpleDateFormat("MM/dd/yyyy").parse(params.invoicedate)
			else
				expenseInvoiceInstance.invoicedate = null
			
			if (params.datepaid.length() > 0)
				expenseInvoiceInstance.datepaid = new SimpleDateFormat("MM/dd/yyyy").parse(params.datepaid)
			else
				expenseInvoiceInstance.datepaid = null
			
			expenseInvoiceInstance.enteruser = ShiroUser.findByUsername(SecurityUtils.subject?.principal)
			
			expenseInvoiceInstance.validate()
		}
		
		if (expenseInvoiceInstance.hasErrors()) {
			respond expenseInvoiceInstance.errors, view:'edit'
			return
		}
		
		update(expenseInvoiceInstance)
	}

    @Transactional
    def update(ExpenseInvoice expenseInvoiceInstance) {
		println "In update"
        if (expenseInvoiceInstance == null) {
            notFound()
            return
        }

        if (expenseInvoiceInstance.hasErrors()) {
            respond expenseInvoiceInstance.errors, view:'edit'
            return
        }

		expenseInvoiceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ExpenseInvoice.label', default: 'ExpenseInvoice'), expenseInvoiceInstance.id])
                redirect expenseInvoiceInstance
            }
            '*'{ respond expenseInvoiceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ExpenseInvoice expenseInvoiceInstance) {

        if (expenseInvoiceInstance == null) {
            notFound()
            return
        }

        expenseInvoiceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ExpenseInvoice.label', default: 'ExpenseInvoice'), expenseInvoiceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
	
	@Transactional
	def print(ExpenseInvoice expenseInvoiceInstance) {

		if (expenseInvoiceInstance == null) {
			notFound()
			return
		}
		respond expenseInvoiceInstance
	}
	
	

	def viewImage() {
		def invoice = ExpenseInvoice.get(params.id)
		
		//write random name image
		byte[] invoiceimg = invoice.image
		//System.out.println("Mime:" + invoice.imagecontenttype);

	    response.outputStream << invoiceimg
		
	}
	
    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'expenseInvoice.label', default: 'ExpenseInvoice'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
