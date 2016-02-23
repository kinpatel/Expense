
<%@ page import="com.hero.Hotel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
		<div>&nbsp;</div>
		
		<div id="show-hotel" class="fluid-container" role="main">
			<!-- widget grid -->
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
						        <h2><g:message code="hotel.show.label" default="Hotel Info" /></h2>                           
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
										<g:if test="${hotelInstance?.name}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="name-label" class="property-label"><g:message code="hotel.name.label" default="Name:" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${hotelInstance}" field="name"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.propertycode}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="propertycode-label" class="property-label"><g:message code="hotel.propertycode.label" default="Property Code:" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="propertycode-label"><g:fieldValue bean="${hotelInstance}" field="propertycode"/></span>
													</div>														
												</div>											
											</div>
										</g:if>										
										
										<g:if test="${hotelInstance?.phonenumber}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="phonenumber-label" class="property-label"><g:message code="hotel.phonenumber.label" default="Phonenumber" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="phonenumber-label"><g:fieldValue bean="${hotelInstance}" field="phonenumber"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.address1}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="address1-label" class="property-label"><g:message code="hotel.address1.label" default="Address1" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="address1-label"><g:fieldValue bean="${hotelInstance}" field="address1"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.address2}">
										<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="address2-label" class="property-label"><g:message code="hotel.address2.label" default="Address2" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="address2-label"><g:fieldValue bean="${hotelInstance}" field="address2"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.city}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="city-label" class="property-label"><g:message code="hotel.city.label" default="City" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${hotelInstance}" field="city"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.state}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="state-label" class="property-label"><g:message code="hotel.state.label" default="State" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="state-label"><g:fieldValue bean="${hotelInstance}" field="state"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.zip}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="zip-label" class="property-label"><g:message code="hotel.zip.label" default="Zip" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="zip-label"><g:fieldValue bean="${hotelInstance}" field="zip"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.country}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="country-label" class="property-label"><g:message code="hotel.country.label" default="Country" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="country-label"><g:fieldValue bean="${hotelInstance}" field="country"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.totalrooms}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="totalrooms-label" class="property-label"><g:message code="hotel.totalrooms.label" default="Total rooms" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="totalrooms-label"><g:fieldValue bean="${hotelInstance}" field="totalrooms"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.lastyearrooms}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="totalrooms-label" class="property-label"><g:message code="hotel.lastyearrooms.label" default="Last year rooms" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="lastyearrooms-label"><g:fieldValue bean="${hotelInstance}" field="lastyearrooms"/></span>
													</div>														
												</div>											
											</div>
										</g:if>										
										
										<g:if test="${hotelInstance?.statetaxrate}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="statetaxratelabel" class="property-label"><g:message code="hotel.statetaxrate.label" default="State Tax Rate" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="statetaxrate-label"><g:fieldValue bean="${hotelInstance}" field="statetaxrate"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${hotelInstance?.countycitytaxrate}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="countycitytaxratelabel" class="property-label"><g:message code="hotel.countycitytaxrate.label" default="County/City Tax Rate" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="countycitytaxrate-label"><g:fieldValue bean="${hotelInstance}" field="countycitytaxrate"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										

										<g:form url="[resource:hotelInstance, action:'delete']" method="DELETE">
											<div class="form-actions">											
													<button type="submit" class="btn medium btn-danger" action="delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
														<g:message code="default.button.delete.label" default="Delete" />
													</button>
													<span class="label">
													<g:link class="edit" action="edit" resource="${hotelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
