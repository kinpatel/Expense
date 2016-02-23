
<%@ page import="com.hero.invoice.ExpenseInvoice" %>
<%@ page import="com.hero.invoice.ExpenseDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'expenseInvoice.label', default: 'ExpenseInvoice')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
		<div>&nbsp;</div>
		
		<div id="show-expenseinvoice" class="fluid-container" role="main">
			<!-- widget grid -->
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
						        <h2><span class="property-value" aria-labelledby="hotel-label"><g:link controller="hotel" action="show" id="${expenseInvoiceInstance?.hotel?.id}">${expenseInvoiceInstance?.hotel?.encodeAsHTML()}</g:link></span></h2>                           
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
													<span id="vendor-label" class="property-label"><g:message code="expenseInvoice.vendor.label" default="Vendor:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="vendor-label"><g:link controller="vendor" action="show" id="${expenseInvoiceInstance?.vendor?.id}">${expenseInvoiceInstance?.vendor?.encodeAsHTML()}</g:link></span>
												</div>
												<div  class="col-md-2">
													<span id="accountnumber-label" class="property-label"><g:message code="expenseInvoice.accountnumber.label" default="Account Number:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="vendor-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="accountnumber"/></span>
												</div>
											</div>
										</div>
																				
										<div class="form-group">
											<g:if test="${difference == 0}">												
												<div class="row">
													<div  class="col-md-2">
														<span id="total-label" class="property-label"><g:message code="expenseInvoice.total.label" default="Total:" /></span>
													</div>
													<div class="col-md-4">
														<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="total"/></span>
													</div>
													<div  class="col-md-2">
														<span id="tax-label" class="property-label"><g:message code="expenseInvoice.tax.label" default="Tax:" /></span>
													</div>
													<div class="col-md-4">
														<span class="property-value" aria-labelledby="tax-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="tax"/></span>
													</div>
												</div>
											</g:if>
											<g:else>
												<div class="row">
													<div  class="col-md-2">
														<span id="total-label" class="property-label"><g:message code="expenseInvoice.total.label" default="Total:" /></span>
													</div>
													<div class="col-md-4">
														<span class="label label-danger property-value" aria-labelledby="total-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="total"/></span>
													</div>
													<div  class="col-md-2">
														<span id="tax-label" class="property-label"><g:message code="expenseInvoice.tax.label" default="Tax:" /></span>
													</div>
													<div class="col-md-4">
														<span class="property-value" aria-labelledby="tax-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="tax"/></span>
													</div>
												</div>
											</g:else>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="invoicedate-label" class="property-label"><g:message code="expenseInvoice.invoicedate.label" default="Invoice Date:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="invoicedate-label"><g:formatDate date="${expenseInvoiceInstance?.invoicedate}" /></span>
												</div>
												<div  class="col-md-2">
													<span id="datepaid-label" class="property-label"><g:message code="expenseInvoice.datepaid.label" default="Date Paid:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="datepaid-label"><g:formatDate date="${expenseInvoiceInstance?.datepaid}" /></span>
												</div>
											</div>
										</div>										
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="enteruser-label" class="property-label"><g:message code="expenseInvoice.enteruser.label" default="Enter User:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="enteruser-label"><g:link controller="shiroUser" action="show" id="${expenseInvoiceInstance?.enteruser?.id}">${expenseInvoiceInstance?.enteruser?.encodeAsHTML()}</g:link></span>
												</div>
												<div  class="col-md-2">
													<span id="dateentered-label" class="property-label"><g:message code="expenseInvoice.dateentered.label" default="Date Entered:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="dateentered-label"><g:formatDate date="${expenseInvoiceInstance?.dateentered}" /></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="paymenttype-label" class="property-label"><g:message code="expenseInvoice.paymenttype.label" default="Payment Type:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="paymenttype-label">${expenseInvoiceInstance?.paymenttype?.encodeAsHTML()}</span>
												</div>
												<div  class="col-md-2">
													<span id="paymentdescription-label" class="property-label"><g:message code="expenseInvoice.paymentdescription.label" default="Payment Description:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="paymentdescription-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="paymentdescription"/></span>
												</div>
											</div>
										</div>
										
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="imagecontenttype-label" class="property-label"><g:message code="expenseInvoice.expensetype.label" default="Expense Type:" /></span>
												</div>
												<div class="col-md-4">
													<span class="property-value" aria-labelledby="expensetype-label">${ expenseTypes}</span>
												</div>
												<div  class="col-md-2">
													
												</div>
												<div class="col-md-4">
													
												</div>
											</div>
										</div>												
										
										<g:if test="${expenseInvoiceInstance?.image}">
											<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="image-label" class="property-label"><g:message code="expenseInvoice.image.label" default="Image:" /></span>
												</div>
												<div class="col-md-10">													
													<span>
														<g:link action="viewImage" target="_blank" id="${expenseInvoiceInstance.id}">
															<img src="${createLink(action:'viewImage', id:expenseInvoiceInstance?.id)}" width="150" height="100" />
														</g:link>
													</span>
												</div>
											</div>
										</div>
										</g:if>																					
								
										<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<g:link class="btn medium btn-success" action="create" controller="expenseDetail" params="[invoiceId:expenseInvoiceInstance?.id]"><i class="icon-plus-sign"></i> <g:message code="expensedetail.new.label" default="Add Detail" /></g:link>
												</div>
											</div>
										</div>
										
										<div class="row">
										<article class="col-md-12">
										<div class="inner-spacer">
											<table class="table table-striped table-bordered responsive" id="dtable">
												<thead>
													<tr>
														<th> ${message(code: 'expenseDetail.expensetype.label', default: 'Expense Type')} </th>
														<th> ${message(code: 'expenseDetail.description.label', default: 'Description')} </th>
														<th> ${message(code: 'expenseDetail.detailcode.label', default: 'Detail Code')} </th>
														<th> ${message(code: 'expenseDetail.quantity.label', default: 'Quantity')} </th>
														<th> ${message(code: 'expenseDetail.amount.label', default: 'Amount')} </th>
														<th>  </th>
														<th>  </th>
													</tr>
												</thead>
												<tbody>
													<g:each in="${expenseDetailInstanceList}" status="i" var="expenseDetailInstance">
														<tr class="${(i % 2) == 0 ? 'gradeA' : 'gradeA'}">
															<td>${fieldValue(bean: expenseDetailInstance, field: "expensetype")}</td>
															<td>${fieldValue(bean: expenseDetailInstance, field: "description")}</td>
															<td>${fieldValue(bean: expenseDetailInstance, field: "detailcode")}</td>
															<td>${fieldValue(bean: expenseDetailInstance, field: "quantity")}</td>
															<td>${fieldValue(bean: expenseDetailInstance, field: "amount")}</td>
															<td><g:link class="edit" action="edit" controller="expenseDetail" resource="${expenseDetailInstance}" params="[invoiceId:expenseInvoiceInstance?.id]"><i class="icon-edit"></i> </g:link></td>
															<td>
																<g:form url="[resource:expenseDetailInstance, action:'delete']" method="DELETE">
																	<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.expensedetail.button.delete.label', default: 'x')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
																</g:form>
															</td>
														</tr>
													</g:each>
												</tbody>
											</table>
										</div>
										</article>
										</div>
										
										
										
										<g:form url="[resource:expenseInvoiceInstance, action:'delete']" method="DELETE">
											<div class="form-actions">											
													<button type="submit" class="btn medium btn-danger" action="delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
														<g:message code="default.button.delete.label" default="Delete" />
													</button>
													<span class="label">													
														<g:link class="edit" action="edit" resource="${expenseInvoiceInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
