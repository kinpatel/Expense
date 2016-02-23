
<%@ page import="com.hero.revenue.DailyOccupancy" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dailyOccupancy.label', default: 'DailyOccupancy')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
		<div>&nbsp;</div>
		
		<div id="show-expensetype" class="fluid-container" role="main">
			<!-- widget grid -->
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
						        <h2><span class="property-value" aria-labelledby="hotel-label"><g:link controller="hotel" action="show" id="${dailyOccupancyInstance?.hotel?.id}">${dailyOccupancyInstance?.hotel?.encodeAsHTML()}</g:link></span></h2>                           
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
						        <!-- content goes here -->
						        	<g:if test="${flash.message}">
										<div class="message" role="status">${flash.message}</div>
									</g:if>
									
									<fieldset>
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="invoicedate-label" class="property-label"><g:message code="dailyOccupancy.day.label" default="Day:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="day-label"><g:formatDate date="${dailyOccupancyInstance?.day}" /></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="totalrevenuerooms-label" class="property-label"><g:message code="dailyOccupancy.totalrevenuerooms.label" default="Total Revenue Rooms:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="totalrevenuerooms-label"><g:fieldValue bean="${dailyOccupancyInstance}" field="totalrevenuerooms"/></span>
												</div>
												<div  class="col-md-2">
													<span id="totalnonrevenuerooms-label" class="property-label"><g:message code="dailyOccupancy.totalnonrevenuerooms.label" default="Total Non Revenue Rooms:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="totalnonrevenuerooms-label"><g:fieldValue bean="${dailyOccupancyInstance}" field="totalnonrevenuerooms"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="totaloccupiedrooms-label" class="property-label"><g:message code="dailyOccupancy.totaloccupiedrooms.label" default="Total Occupied Rooms:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="totaloccupiedrooms-label"><g:fieldValue bean="${dailyOccupancyInstance}" field="totaloccupiedrooms"/></span>
												</div>
												<div  class="col-md-2">
													<span id="totalnoofadults-label" class="property-label"><g:message code="dailyOccupancy.totalnoofadults.label" default="Total #Adults:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="totalnoofadults-label"><g:fieldValue bean="${dailyOccupancyInstance}" field="totalnoofadults"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="totalnoofchildren-label" class="property-label"><g:message code="dailyOccupancy.totalnoofchildren.label" default="Total #Children:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="totalnoofchildren-label"><g:fieldValue bean="${dailyOccupancyInstance}" field="totalnoofchildren"/></span>
												</div>
												<div  class="col-md-2">
													<span id="withreservation-label" class="property-label"><g:message code="dailyOccupancy.withreservation.label" default="Total With Reservations:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="withreservationlabel"><g:fieldValue bean="${dailyOccupancyInstance}" field="withreservation"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="walkins-label" class="property-label"><g:message code="dailyOccupancy.walkins.label" default="Walkins:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="walkins-label"><g:fieldValue bean="${dailyOccupancyInstance}" field="walkins"/></span>
												</div>
												<div  class="col-md-2">
													<span id="noshows-label" class="property-label"><g:message code="dailyOccupancy.noshows.label" default="No Shows:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="noshows-label"><g:fieldValue bean="${dailyOccupancyInstance}" field="noshows"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="cancelationsfortodayarrival-label" class="property-label"><g:message code="dailyOccupancy.cancelationsfortodayarrival.label" default="Cancellations for Today Arrival:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="cancelationsfortodayarrival-label"><g:fieldValue bean="${dailyOccupancyInstance}" field="cancelationsfortodayarrival"/></span>
												</div>
												<div  class="col-md-2">
													<span id="checkedouttoday-label" class="property-label"><g:message code="dailyOccupancy.checkedouttoday.label" default="Checked Out Today:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="checkedouttoday-label"><g:fieldValue bean="${dailyOccupancyInstance}" field="checkedouttoday"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="enteruser-label" class="property-label"><g:message code="dailyOccupancy.enteruser.label" default="Enter User:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="enteruser-label"><g:link controller="shiroUser" action="show" id="${dailyOccupancyInstance?.enteruser?.id}">${expenseInvoiceInstance?.enteruser?.encodeAsHTML()}</g:link></span>
												</div>
												<div  class="col-md-2">
													<span id="dateentered-label" class="property-label"><g:message code="dailyOccupancy.dateentered.label" default="Date Entered:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="dateentered-label"><g:formatDate date="${dailyOccupancyInstance?.dateentered}" /></span>
												</div>
											</div>
										</div>
																				
										<g:form url="[resource:dailyOccupancyInstance, action:'delete']" method="DELETE">
											<div class="form-actions">											
													<button type="submit" class="btn medium btn-danger" action="delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
														<g:message code="default.button.delete.label" default="Delete" />
													</button>
													<span class="label">													
														<g:link class="edit" action="edit" resource="${dailyOccupancyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
													</span>											
											</div>
										</g:form>
									</fieldset>
						        </div>
						    </div>
						</div>
					</article>
				</div>
			</section>
		</div>
	</body>
</html>