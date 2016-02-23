<%@ page import="com.hero.revenue.RevenueDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'revenueDetail.label', default: 'RevenueDetail')}" />
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
								<h2>Column Filtering</h2>                           
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
												<div class="widget alert alert-info adjusted">
													<button class="close" data-dismiss="alert">×</button>
													<i class="cus-exclamation"></i>
													<strong>Cool export feature:</strong> This dynamic table can export <strong>PDF</strong> and <strong>Excel</strong> files, feel free to click on the PDF or Excel button to export the data
												</div>							
									<table class="table table-striped table-bordered responsive" id="dtable">
										<thead>
											<tr>
											    <th> ${message(code: 'revenueDetail.revenuetype.label', default: 'Revenue Type')} </th>
												<th> ${message(code: 'revenueDetail.dailyrevenue.label', default: 'Daily Revenue')} </th>
												<th> ${message(code: 'revenueDetail.description.label', default: 'Description')} </th>
												<th> ${message(code: 'revenueDetail.total.label', default: 'Total')} </th>
												<th> ${message(code: 'revenueDetail.quantity.label', default: 'Quantity')} </th>
												<th>  </th>
											</tr>
										</thead>
										
										<tbody>
											<g:each in="${revenueDetailInstanceList}" status="i" var="revenueDetailInstance">
												<tr class="${(i % 2) == 0 ? 'gradeA' : 'gradeA'}">
													<td><g:link action="show" id="${revenueDetailInstance.id}">${fieldValue(bean: revenueDetailInstance, field: "revenuetype")}</g:link></td>
													<td>${fieldValue(bean: revenueDetailInstance, field: "dailyrevenue")}</td>
													<td>${fieldValue(bean: revenueDetailInstance, field: "description")}</td>	
													<td>${fieldValue(bean: revenueDetailInstance, field: "total")}</td>		
													<td>${fieldValue(bean: revenueDetailInstance, field: "quantity")}</td>
													<td><g:link class="edit" action="edit" resource="${revenueDetailInstance}"><i class="icon-edit"></i> </g:link></td>		
												</tr>
											</g:each>									
										</tbody>

									</table>
									
								</div>

								<!-- end content-->								
							</div>
							<!-- end wrap div --> 
						</div>
						<!-- end widget -->
					</article>
				</div>
			</section>
		</div>
		<!-- End fluid container -->
	</body>
</html>
		
		
