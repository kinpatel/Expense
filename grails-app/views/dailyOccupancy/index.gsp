
<%@ page import="com.hero.revenue.DailyOccupancy" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dailyOccupancy.label', default: 'DailyOccupancy')}" />
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
												<th> ${message(code: 'dailyOccupancy.day.label', default: 'Day')} </th>
												<th> ${message(code: 'dailyOccupancy.hotel.label', default: 'Hotel')} </th>
												<th> ${message(code: 'dailyOccupancy.dateentered.label', default: 'Date Entered')} </th>
												<th> ${message(code: 'dailyOccupancy.totalrevenuerooms.label', default: 'Total Revenue Rooms')} </th>
												<th> ${message(code: 'dailyOccupancy.totalnonrevenuerooms.label', default: 'Total Non Revenue Rooms')} </th>												
												<th> ${message(code: 'dailyOccupancy.totaloccupiedrooms.label', default: 'Total Occupied Rooms')} </th>
												<th> ${message(code: 'dailyOccupancy.totalnoofadults.label', default: 'Total #Adults')} </th>
												<th> ${message(code: 'dailyOccupancy.totalnoofchildren.label', default: 'Total #Children')} </th>
												<th> ${message(code: 'dailyOccupancy.withreservation.label', default: 'With Reservation')} </th>
												<th> ${message(code: 'dailyOccupancy.walkins.label', default: 'Walkins')} </th>
												<th> ${message(code: 'dailyOccupancy.noshows.label', default: 'No Shows')} </th>
												<th> ${message(code: 'dailyOccupancy.cancelationsfortodayarrival.label', default: 'Chancelations for Today Arrivals')} </th>
												<th> ${message(code: 'dailyOccupancy.checkedouttoday.label', default: 'Checked Out Today')} </th>
												<th>  </th>
											</tr>
										</thead>
										<tbody>
											<g:each in="${dailyOccupancyInstanceList}" status="i" var="dailyOccupancyInstance">
												<tr class="${(i % 2) == 0 ? 'gradeA' : 'gradeA'}">
													<td><g:link action="show" id="${dailyOccupancyInstance.id}"><g:formatDate format="dd-MMM-yyyy" date="${dailyOccupancyInstance.day}" /></g:link></td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "hotel")}</td>
													<td><g:formatDate format="dd-MMM-yyyy" date="${dailyOccupancyInstance.dateentered}" /></td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "totalrevenuerooms")}</td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "totalnonrevenuerooms")}</td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "totaloccupiedrooms")}</td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "totalnoofadults")}</td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "totalnoofchildren")}</td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "withreservation")}</td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "walkins")}</td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "noshows")}</td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "cancelationsfortodayarrival")}</td>
													<td>${fieldValue(bean: dailyOccupancyInstance, field: "checkedouttoday")}</td>
																									
													<td><g:link class="edit" action="edit" resource="${dailyOccupancyInstance}"><i class="icon-edit"></i> </g:link></td>
												</tr>
											</g:each>
										</tbody>
									</table>
								</div>

								<g:jasperReport
								          jasper="Occupancy"
								          format="PDF,HTML,XML,CSV,XLS,XLSX,PPTX"
								          name="Occupancy Report" >
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
