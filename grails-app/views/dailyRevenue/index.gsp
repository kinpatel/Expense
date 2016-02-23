<%@ page import="com.hero.revenue.DailyRevenue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dailyRevenue.label', default: 'DailyRevenue')}" />
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
												<th> ${message(code: 'dailyRevenue.day.label', default: 'Day')} </th>
												<th> ${message(code: 'dailyRevenue.hotel.label', default: 'Hotel')} </th>
												<th> ${message(code: 'dailyRevenue.total.label', default: 'Total')} </th>
												<th> ${message(code: 'dailyRevenue.taxexempt.label', default: 'Tax Exempt')} </th>
												<th> ${message(code: 'dailyRevenue.taxabletotal.label', default: 'Taxable Total')} </th>
												<th> ${message(code: 'dailyRevenue.countycitytax.label', default: 'County/City Tax')} </th>
												<th> ${message(code: 'dailyRevenue.statetax.label', default: 'State Tax')} </th>	
												<th> ${message(code: 'dailyRevenue.cashcheck.label', default: 'Cash/Check')} </th>											
												<th> ${message(code: 'dailyRevenue.visa.label', default: 'Visa')} </th>
												<th> ${message(code: 'dailyRevenue.mastercard.label', default: 'Mastercard')} </th>	
												<th> ${message(code: 'dailyRevenue.amex.label', default: 'Amex')} </th>	
												<th> ${message(code: 'dailyRevenue.discovery.label', default: 'Discovery')} </th>	
												<th> ${message(code: 'dailyRevenue.diners.label', default: 'Diners')} </th>	
												<th>  </th>
											</tr>
										</thead>
										<tbody>
											<g:each in="${dailyRevenueInstanceList}" status="i" var="dailyRevenueInstance">
												<tr class="${(i % 2) == 0 ? 'gradeA' : 'gradeA'}">
													<td><g:link action="show" id="${dailyRevenueInstance.id}"><g:formatDate format="dd-MMM-yyyy" date="${dailyRevenueInstance.day}" /></g:link></td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "hotel")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "total")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "taxexempt")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "taxabletotal")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "countycitytax")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "statetax")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "cashcheck")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "visa")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "mastercard")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "amex")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "discovery")}</td>
													<td>${fieldValue(bean: dailyRevenueInstance, field: "diners")}</td>
													<td><g:link class="edit" action="edit" resource="${dailyRevenueInstance}"><i class="icon-edit"></i> </g:link></td>
												</tr>
											</g:each>
										</tbody>
									</table>
								</div>
								
								<g:jasperReport
								          jasper="Revenue"
								          format="PDF,HTML,XML,CSV,XLS,XLSX,PPTX"
								          name="Revenue Report" >
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
												 
									Select Year:		<select name = "Year" id="year" style="WIDTH: 100px">
									<input name="User" type="hidden" value="${params.user}">				 
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