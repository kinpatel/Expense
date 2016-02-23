<%@ page import="com.hero.revenue.DailyRevenue" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dailyRevenue.label', default: 'DailyRevenue')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
		<div>&nbsp;</div>
		
		<div id="show-dailyrevenue" class="fluid-container" role="main">
			<!-- widget grid -->
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
						        <h2><span class="property-value" aria-labelledby="hotel-label"><g:link controller="hotel" action="show" id="${dailyRevenueInstance?.hotel?.id}">${dailyRevenueInstance?.hotel?.encodeAsHTML()}</g:link></span></h2>                           
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
													<span id="day-label" class="property-label"><g:message code="dailyRevenue.day.label" default="Day:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="day-label"><g:formatDate date="${dailyRevenueInstance?.day}" /></span>
												</div>
											</div>
										</div>

										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="total-label" class="property-label"><g:message code="dailyRevenue.dateentered.label" default="Date Entered:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="dateentered-label"><g:formatDate date="${dailyRevenueInstance?.dateentered}" /></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="total-label" class="property-label"><g:message code="dailyRevenue.enteruser.label" default="Entered by:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="enteruser-label"><g:fieldValue bean="${dailyRevenueInstance}" field="enteruser"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="total-label" class="property-label"><g:message code="dailyRevenue.total.label" default="Total:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${dailyRevenueInstance}" field="total"/></span>
												</div>
												<div  class="col-md-2">
													<span id=taxexempt-label" class="property-label"><g:message code="dailyRevenue.taxexempt.label" default="Tax Exempt:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="taxexempt-label"><g:fieldValue bean="${dailyRevenueInstance}" field="taxexempt"/></span>
												</div>
											</div>
										</div>

										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="taxabletotal-label" class="property-label"><g:message code="dailyRevenue.taxabletotal.label" default="Taxable Total:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="taxabletotal-label"><g:fieldValue bean="${dailyRevenueInstance}" field="taxabletotal"/></span>
												</div>
												<div  class="col-md-2">
													<span id=countycitytaxt-label" class="property-label"><g:message code="dailyRevenue.countycitytax.label" default="County/City Tax:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby=countycitytax-label"><g:fieldValue bean="${dailyRevenueInstance}" field="countycitytax"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="statetax-label" class="property-label"><g:message code="dailyRevenue.statetax.label" default="State Tax:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="statetax-label"><g:fieldValue bean="${dailyRevenueInstance}" field="statetax"/></span>
												</div>
												<div  class="col-md-2">
													<span id=cashcheck-label" class="property-label"><g:message code="dailyRevenue.cashcheck.label" default="Cash/Check:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="cashcheck-label"><g:fieldValue bean="${dailyRevenueInstance}" field="cashcheck"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="visa-label" class="property-label"><g:message code="dailyRevenue.visa.label" default="Visa:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="visa-label"><g:fieldValue bean="${dailyRevenueInstance}" field="visa"/></span>
												</div>
												<div  class="col-md-2">
													<span id=mastercard-label" class="property-label"><g:message code="dailyRevenue.mastercard.label" default="Mastercard:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="mastercard-label"><g:fieldValue bean="${dailyRevenueInstance}" field="mastercard"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="amex-label" class="property-label"><g:message code="dailyRevenue.amex.label" default="Amex:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="amex-label"><g:fieldValue bean="${dailyRevenueInstance}" field="amex"/></span>
												</div>
												<div  class="col-md-2">
													<span id=discovery-label" class="property-label"><g:message code="dailyRevenue.discovery.label" default="Discovery:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="discovery-label"><g:fieldValue bean="${dailyRevenueInstance}" field="discovery"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="diners-label" class="property-label"><g:message code="dailyRevenue.diners.label" default="Diners:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="diners-label"><g:fieldValue bean="${dailyRevenueInstance}" field="diners"/></span>
												</div>
												<div  class="col-md-2">
												</div>
												<div class="col-md-4">
												</div>
											</div>
										</div>
										
										<g:form url="[resource:dailyRevenueInstance, action:'delete']" method="DELETE">
											<div class="form-actions">											
													<button type="submit" class="btn medium btn-danger" action="delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
														<g:message code="default.button.delete.label" default="Delete" />
													</button>
													<span class="label">													
														<g:link class="edit" action="edit" resource="${dailyRevenueInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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