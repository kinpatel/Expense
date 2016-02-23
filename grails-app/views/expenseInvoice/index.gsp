
<%@ page import="com.hero.invoice.ExpenseInvoice" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'expenseInvoice.label', default: 'ExpenseInvoice')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>


		<div>&nbsp;</div>
		
			
		<div class="fluid-container">
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
								<h2><g:message code="default.list.label" args="[entityName]" /></h2>                           
							</header>
							<!-- wrap div -->							
							<div>
								<div class="jarviswidget-editbox">
									<div>
						                <label>Title:</label>
		  				                <input type="text" />
						            </div>
						            <div> 
						                <label>Styles:</label>
						                <span data-widget-setstyle="purple" class="purple-btn"></span>
						                <span data-widget-setstyle="navyblue" class="navyblue-btn"></span>
						                <span data-widget-setstyle="green" class="green-btn"></span>
						                <span data-widget-setstyle="yellow" class="yellow-btn"></span>
						                <span data-widget-setstyle="orange" class="orange-btn"></span>
						                <span data-widget-setstyle="pink" class="pink-btn"></span>
						                <span data-widget-setstyle="red" class="red-btn"></span>
						                <span data-widget-setstyle="darkgrey" class="darkgrey-btn"></span>
						                <span data-widget-setstyle="black" class="black-btn"></span>
						            </div>
								</div>
								
								<div class="inner-spacer">
									<table class="table table-striped table-bordered responsive" id="dtable">
										<thead>
											<tr>
												<th> ${message(code: 'expenseInvoice.invoicedate.label', default: 'Invoice Date')} </th>
												<th> ${message(code: 'expenseInvoice.vendor.label', default: 'Vendor')} </th>
												<th> ${message(code: 'expenseInvoice.accountnumber.label', default: 'Account Number')} </th>
												<th> ${message(code: 'expenseInvoice.hotel.label', default: 'Hotel')} </th>
												<th> ${message(code: 'expenseInvoice.dateentered.label', default: 'Date Entered')} </th>
												<th> ${message(code: 'expenseInvoice.datepaid.label', default: 'Date Paid')} </th>	
												<th> ${message(code: 'expenseInvoice.total.label', default: 'Payment By')} </th>											
												<th> ${message(code: 'expenseInvoice.total.label', default: 'Total')} </th>
												<th> ${message(code: 'expenseInvoice.imagecontenttype.label', default: 'Image Type')} </th>	
												<th>  </th>
												<th>  </th>
											</tr>
										</thead>
										<tbody>
											<g:each in="${expenseInvoiceInstanceList}" status="i" var="expenseInvoiceInstance">
												<tr class="${(i % 2) == 0 ? 'gradeA' : 'gradeA'}">
													<td><g:link action="show" id="${expenseInvoiceInstance.id}"><g:formatDate format="dd-MMM-yyyy" date="${expenseInvoiceInstance.invoicedate}" /></g:link></td>
													<td>${fieldValue(bean: expenseInvoiceInstance, field: "vendor")}</td>
													<td>${fieldValue(bean: expenseInvoiceInstance, field: "accountnumber")}</td>
													<td>${fieldValue(bean: expenseInvoiceInstance, field: "hotel")}</td>
													<td><g:formatDate format="dd-MMM-yyyy" date="${expenseInvoiceInstance.dateentered}" /></td>
													<td><g:formatDate format="dd-MMM-yyyy" date="${expenseInvoiceInstance.datepaid}" /></td>
													<td>${fieldValue(bean: expenseInvoiceInstance, field: "paymenttype")}</td>
													<td>${fieldValue(bean: expenseInvoiceInstance, field: "total")}</td>
													<td>${fieldValue(bean: expenseInvoiceInstance, field: "imagecontenttype")}</td>
													<td><g:link class="edit" action="edit" resource="${expenseInvoiceInstance}"><i class="icon-edit"></i> </g:link></td>
													<td><g:link class="print" action="print" resource="${expenseInvoiceInstance}"><i class="icon-print"></i> </g:link></td>
												</tr>
											</g:each>
										</tbody>
									</table>
								</div>

								<g:jasperReport
								          jasper="Expense"
								          format="PDF,HTML,XML,CSV,XLS,XLSX,PPTX"
								          name="Expense Details Report">
								    - Select Month:		<select name="Month" id="month" class="with-search">
													                <option value="1">January</option>
													                <option value="2">February</option>
													                <option value="3">March</option>
													                <option value="4">April</option>
													                <option value="5">May</option>
													                <option value="6">June</option>
													                <option value="7">July</option>
													                <option value="8">August</option>
													                <option value="9">September</option>
													                <option value="10">October</option>
													                <option value="11">November</option>
													                <option value="12">December</option>
									</select>
								    <select id="year" name="Year">
										  <script>
										  var myDate = new Date();
										  var year = myDate.getFullYear();
										  for(var i = year-3; i < year; i++){
											  document.write('<option value="'+i+'">'+i+'</option>');
										  }
										  document.write('<option selected value="'+year+'">'+year+'</option>');
										  </script>
									</select>
									<g:select class="with-search" id="HotelId" name="HotelId" from="${hotelsFiltered}" optionKey="id" value="${expenseInvoiceInstance?.hotel?.id}" />
 													 
								</g:jasperReport>
								
								<g:jasperReport
								          jasper="ExpenseCategory"
								          format="PDF,HTML,XML,CSV,XLS,XLSX,PPTX"
								          name="Expense Category Summary">
								    - Select Month:		<select name="Month" id="month" class="with-search">
													                <option value="1">January</option>
													                <option value="2">February</option>
													                <option value="3">March</option>
													                <option value="4">April</option>
													                <option value="5">May</option>
													                <option value="6">June</option>
													                <option value="7">July</option>
													                <option value="8">August</option>
													                <option value="9">September</option>
													                <option value="10">October</option>
													                <option value="11">November</option>
													                <option value="12">December</option>
									</select>
									<script>
											d = new Date(); 
											document.forms[1].month.selectedIndex = d.getMonth();

									</script>
								    <select id="year" name="Year">
										  <script>
										  var myDate = new Date();
										  var year = myDate.getFullYear();
										  for(var i = year-3; i < year; i++){
											  document.write('<option value="'+i+'">'+i+'</option>');
										  }
										  document.write('<option selected value="'+year+'">'+year+'</option>');
										  </script>
									</select>
									<g:select class="with-search" id="HotelId" name="HotelId" from="${hotelsFiltered}" optionKey="id" value="${expenseInvoiceInstance?.hotel?.id}" />
 													 
								</g:jasperReport>
								
								<g:jasperReport
								          jasper="ExpenseType"
								          format="PDF,HTML,XML,CSV,XLS,XLSX,PPTX"
								          name="Expense Type Summary">
								    - Select Month:		<select name="Month" id="month" class="with-search">
													                <option value="1">January</option>
													                <option value="2">February</option>
													                <option value="3">March</option>
													                <option value="4">April</option>
													                <option value="5">May</option>
													                <option value="6">June</option>
													                <option value="7">July</option>
													                <option value="8">August</option>
													                <option value="9">September</option>
													                <option value="10">October</option>
													                <option value="11">November</option>
													                <option value="12">December</option>
									</select>
									<script>
												 		  d = new Date(); 
												 		  document.forms[2].month.selectedIndex = d.getMonth();

												 		</script>
								    <select id="year" name="Year">
										  <script>
										  var myDate = new Date();
										  var year = myDate.getFullYear();
										  for(var i = year-3; i < year; i++){
											  document.write('<option value="'+i+'">'+i+'</option>');
										  }
										  document.write('<option selected value="'+year+'">'+year+'</option>');
										  </script>
									</select>
									<g:select class="with-search" id="HotelId" name="HotelId" from="${hotelsFiltered}" optionKey="id" value="${expenseInvoiceInstance?.hotel?.id}" />
 													 
								</g:jasperReport>
 		
								<g:jasperReport
								          jasper="PaymentTypeSummary"
								          format="PDF,HTML,XML,CSV,XLS,XLSX,PPTX"
								          name="Payment Type Summary" >
									- Select Month:		<select name="Month" id="month" class="with-search">
													                <option value="1">January</option>
													                <option value="2">February</option>
													                <option value="3">March</option>
													                <option value="4">April</option>
													                <option value="5">May</option>
													                <option value="6">June</option>
													                <option value="7">July</option>
													                <option value="8">August</option>
													                <option value="9">September</option>
													                <option value="10">October</option>
													                <option value="11">November</option>
													                <option value="12">December</option>
												 		</select>
												 		<script>
												 		  d = new Date(); 
												 		  document.forms[3].month.selectedIndex = d.getMonth();

												 		</script>
									<select id="year" name="Year">
										  <script>
										  var myDate = new Date();
										  var year = myDate.getFullYear();
										  for(var i = year-3; i < year; i++){
											  document.write('<option value="'+i+'">'+i+'</option>');
										  }
										  document.write('<option selected value="'+year+'">'+year+'</option>');
										  </script>
									</select>
	
 									<g:select class="with-search" id="HotelId" name="HotelId" from="${hotelsFiltered}" optionKey="id" value="${expenseInvoiceInstance?.hotel?.id}" />
 												 
								</g:jasperReport>
							</div>
						</div>
					</article>
				</div>
			</section>
		</div>
		
		<script src="${request.contextPath}/js/reportsparams.js"></script>
		
	</body>
</html>
