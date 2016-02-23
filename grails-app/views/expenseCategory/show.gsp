
<%@ page import="com.hero.ExpenseCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'expenseCategory.label', default: 'ExpenseCategory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
		<div>&nbsp;</div>
		
		<div id="show-expensecategory" class="fluid-container" role="main">
			<!-- widget grid -->
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
						        <h2><g:message code="expensecategory.show.label" default="Expense Category Info" /></h2>                           
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
										<g:if test="${expenseCategoryInstance?.name}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="name-label" class="property-label"><g:message code="expensecategory.name.label" default="Name" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${expenseCategoryInstance}" field="name"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${expenseCategoryInstance?.description}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="description-label" class="property-label"><g:message code="expensecategory.description.label" default="Description" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${expenseCategoryInstance}" field="description"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:form url="[resource:expenseCategoryInstance, action:'delete']" method="DELETE">
											<div class="form-actions">											
													<button type="submit" class="btn medium btn-danger" action="delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
														<g:message code="default.button.delete.label" default="Delete" />
													</button>
													<span class="label">
													<g:link class="edit" action="edit" resource="${expenseCategoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
