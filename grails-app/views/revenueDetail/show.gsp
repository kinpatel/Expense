<%@ page import="com.hero.revenue.RevenueDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'revenueDetail.label', default: 'RevenueDetail')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
		<div>&nbsp;</div>
		
		<div id="show-revenuedetail" class="fluid-container" role="main">
			<!-- widget grid -->
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
						        <h2><g:message code="revenuedetail.show.label" default="Revenue Detail Info" /></h2>                           
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
										<g:if test="${revenueDetailInstance?.dailyrevenue}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="dailyrevenue-label" class="property-label"><g:message code="dailyrevenue.name.label" default="Daily Revenue" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="dailyrevenue-label"><g:fieldValue bean="${revenueDetailInstance}" field="dailyrevenue"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${revenueDetailInstance?.revenuetype}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="revenuetype-label" class="property-label"><g:message code="dailyrevenue.revenuetype.label" default="Revenue Type" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="revenuetype-label"><g:fieldValue bean="${revenueDetailInstance}" field="revenuetype"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${revenueDetailInstance?.description}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="description-label" class="property-label"><g:message code="dailyrevenue.description.label" default="Description" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${revenueDetailInstance}" field="description"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${revenueDetailInstance?.total}">																		
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="total-label" class="total-label"><g:message code="dailyrevenue.revenuetype.label" default="Total" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${revenueDetailInstance}" field="total"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${revenueDetailInstance?.quantity}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="quantity-label" class="property-label"><g:message code="dailyrevenue.quantity.label" default="Quantity" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${revenueDetailInstance}" field="quantity"/></span>
													</div>														
												</div>											
											</div>
										</g:if>										
										
										<g:form url="[resource:revenueDetailInstance, action:'delete']" method="DELETE">
											<div class="form-actions">											
													<button type="submit" class="btn medium btn-danger" action="delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
														<g:message code="default.button.delete.label" default="Delete" />
													</button>
													<span class="label">
													<g:link class="edit" action="edit" resource="${revenueDetailInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
	