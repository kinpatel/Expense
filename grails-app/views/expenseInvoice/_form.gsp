
<%@ page import="com.hero.invoice.ExpenseInvoice" %>


<script>
function calculateTotal(subtotal){

        ///<g:remoteFunction controller="ExpenseInvoice" action="calculateTax" update="totalid" params='{subtotal: subtotal}'/>

    var stotal = document.getElementById("subtotalid").value;
 	var taxx = ${hotelInstance?.statetaxrate}
 	
 	//${tax};

	var total = stotal +(taxx * stotal);
	document.getElementById("taxid").value=taxx;
	document.getElementById("totalid").value=total;
	
	
   
}


</script>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'hotel', 'error')} required">		
		<div class="row">
			<div class="col-md-3">
				<label for="hotel">
					<g:message code="expenseInvoice.hotel.label" default="Hotel:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-4">
				<div class="controls">
					<g:select class="with-search" id="hotel" name="hotel.id" from="${hotelsFiltered}" optionKey="id" value="${expenseInvoiceInstance?.hotel?.id}" /><!-- noSelection="['null':'-Select Hotel-']" onchange="${remoteFunction (controller: 'vendor',action: 'ajaxGetVendors',params:'\'id=\' + escape(this.value)',onSuccess:'updateVendor(data)')}" /-->
					
				</div>
			</div>
		</div>		
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'vendor', 'error')} required">		
		<div class="row">
			<div class="col-md-3">
				<label for="vendor">
					<g:message code="expenseInvoice.vendor.label" default="Vendor:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-4">
				<div class="controls">
					<g:select class="with-search" id="vendor" from="${com.hero.invoice.Vendor.findAllByHotelInList(hotelsFiltered)}" name="vendor.id" optionKey="id" value="${expenseInvoiceInstance?.vendor?.id}" noSelection="['null':'-Select Vendor-']" />
				</div>
			</div>
		</div>		
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'accountnumber', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label for="accountnumber">
					<g:message code="expenseInvoice.accountnumber.label" default="Account Number:" />
					
				</label>
			</div>
			<div class="col-md-4 has-icon">
				<input type="text" name="accountnumber" class="form-control" value="${expenseInvoiceInstance?.accountnumber}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'invoicedate', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label for="invoicedate">
					<g:message code="expenseInvoice.invoicedate.label" default="Invoice Date:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-4">			
				<div class="input-append date" id="datepicker-js" >
					<input class="datepicker-input" size="16" type="text" name="invoicedate" value="${expenseInvoiceInstance?.invoicedate}" placeholder="Select a date" />
					<span class="add-on"><i class="cus-calendar-2"></i></span>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'amount', 'error')} ">
		<div class="row">
			<div  class="col-md-3">
				<label for="amount">
					<g:message code="expenseInvoice.amount.label" default="Sub Total:" />					
				</label>
			</div>
			<div class="col-md-4 has-icon">
				<input id="subtotalid"type="text" name="amount" class="form-control" value="${expenseInvoiceInstance?.amount}" onchange="calculateTotal(this.value)">
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'tax', 'error')} ">
		<div class="row">
			<div  class="col-md-3">
				<label for="tax">
					<g:message code="expenseInvoice.tax.label" default="Tax:" />
				</label>
			</div>
			<div class="col-md-4 has-icon">
				<input id="taxid" type="text" name="tax" class="form-control" value="${expenseInvoiceInstance?.tax}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'total', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label for="total">
					<g:message code="expenseInvoice.total.label" default="Total" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div  class="col-md-4 has-icon">
				<input id="totalid" type="text" name="total" class="form-control" value="${expenseInvoiceInstance?.total}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'paymenttype', 'error')} ">		
		<div class="row">
			<div class="col-md-3">
				<label for="paymenttype">
					<g:message code="expenseInvoice.paymenttype.label" default="Payment Type" />
				</label>
			</div>
			<div class="col-md-4">
				<div class="controls">
					<g:select class="with-search" id="paymenttype" name="paymenttype.id" from="${com.hero.invoice.PaymentType.list()}" optionKey="id" value="${expenseInvoiceInstance?.paymenttype?.id}" noSelection="['null': '']" />
				</div>
			</div>
		</div>		
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'paymentdescription', 'error')} ">
		<div class="row">
			<div  class="col-md-3">
				<label for="paymentdescription">
					<g:message code="expenseInvoice.paymentdescription.label" default="Payment Description:" />
					
				</label>
			</div>
			<div class="col-md-4 has-icon">
				<input type="text" name="paymentdescription" class="form-control" value="${expenseInvoiceInstance?.paymentdescription}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'expensetype', 'error')} required">		
		<div class="row">
			<div class="col-md-3">
				<label for="expensetype">
					<g:message code="expenseInvoice.expensetype.label" default="Expense Type" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-4">
				<div class="controls">
					<g:select class="with-search" id="expensetype" name="expensetype.id" from="${com.hero.ExpenseType.findAllByHotelInList(hotelsFiltered)}" optionKey="id" value="${expenseInvoiceInstance?.expensetype?.id}" noSelection="['null': '']" />
				</div>
			</div>
		</div>		
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'datepaid', 'error')} ">
		<div class="row">
			<div  class="col-md-3">
				<label for="datepaid">
					<g:message code="expenseInvoice.datepaid.label" default="Date Paid:" />
				</label>
			</div>
			<div class="col-md-4">			
				<div class="input-append date" id="datepicker-js" >
					<input class="datepicker-input" size="16" type="text" name="datepaid" value="${expenseInvoiceInstance?.datepaid}" placeholder="Select a date" />
					<span class="add-on"><i class="cus-calendar-2"></i></span>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseInvoiceInstance, field: 'image', 'error')} ">
		<div class="row">
			<div class="col-md-3">
				<label for="image">
					<g:message code="expenseInvoice.image.label" default="Image" />
				</label>
			</div>
			<div class="col-md-4">
				<div class="controls">
					<input class="file" id="image" name="image" type="file" />
				</div>
			</div>
		</div>
	</div>
</div>


<g:javascript>
	function updateVendor(vendors) {
		if(vendors){
			var rselect = document.getElementById('vendor')
			
			// Clear all previous options
			var l = rselect.length
			while (l > 0) {
				l--
				rselect.remove(l)
			}
			
			// Rebuild the select
			for (var i=0; i < vendors.length; i++) {
				var vendor = vendors[i]
				var opt = document.createElement('option');
				opt.text = vendor.name
				opt.value=vendor.id
				try {
			    	rselect.add(opt, null) // standards compliant; doesn't work in IE
			  	}
		  		catch(ex) {
		    		rselect.add(opt) // IE only
		  		}
			}
		}
	}
	
	
</g:javascript>