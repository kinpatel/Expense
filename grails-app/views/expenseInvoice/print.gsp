
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
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
						<div class="fluid-container">
							
						<!-- invoice -->
								<div id="invoice-bar" class="btn-toolbar">
                                    <div class="btn-group pull-right">
                                    	<g:form url="[resource:expenseInvoiceInstance]" method="POST">
                                        <g:actionSubmit type="submit" class="btn medium btn-danger" action="delete" value="Delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
											<g:message code="default.button.delete.label" default="Delete" />
										</g:actionSubmit>
                                        <g:actionSubmit type="submit" class="btn medium" action="edit" value="Edit"  onclick="submit"><i class="cus-pencil"></i>&nbsp;<g:message code="default.button.edit.label" default="Edit" /></g:actionSubmit>
                                        <button type="button" id="invoice-print" class="btn medium" onclick="window.print();">
                                            <i class="cus-printer"></i> <g:message code="expenseInvoice.printinvoice.label" default="Print Invoice" />
                                        </button>
                                        </g:form>
                                    </div>
                                </div>
                            
                                <div id="invoice-id-01" class="invoice">
                                	<div class="invoice-header">
                                					<span>
                                					<g:if test="${expenseInvoiceInstance?.image}">
														<g:link action="viewImage" target="_blank" id="${expenseInvoiceInstance.id}">
															<img src="${createLink(action:'viewImage', id:expenseInvoiceInstance?.id)}" width="114" height="114" />
														</g:link>
													</g:if>
													<g:else>	
															<img src="${request.contextPath}/jarvis/img/favicons/apple-touch-icon-retina.png" width="114" height="114" alt="invoice icon">
													</g:else>
													</span>
                                		<!-- img src="${request.contextPath}/jarvis/img/favicons/apple-touch-icon-retina.png" width="114" height="114" alt="invoice icon"-->
                                		<div class="invoice-company-info pull-right">
                                			<strong>${expenseInvoiceInstance?.vendor?.name}</strong><br />
                                			<strong>${expenseInvoiceInstance?.vendor?.description}</strong><br />
                                		</div>
                                	</div>
                                	<div class="invoice-client-info">
										<div class="client-info">
											<h5><g:message code="expenseInvoice.invoicedto.label" default="Invoiced to" />:</h5><br />
											<g:link controller="hotel" action="show" id="${expenseInvoiceInstance?.hotel?.id}">${expenseInvoiceInstance?.hotel?.encodeAsHTML()}</g:link><br />
											${expenseInvoiceInstance?.hotel?.address1}<br />
											<g:if test="${expenseInvoiceInstance?.hotel?.address2}">${expenseInvoiceInstance?.hotel?.address2}<br /></g:if>
											${expenseInvoiceInstance?.hotel?.city}, ${expenseInvoiceInstance?.hotel?.state} - ${expenseInvoiceInstance?.hotel?.zip}<br />
											<g:if test="${expenseInvoiceInstance?.hotel?.country}">${expenseInvoiceInstance?.hotel?.country}<br /></g:if>
											${expenseInvoiceInstance?.hotel?.phonenumber}
										</div>	
										<div class="invoice-info">
											<h3><g:message code="expenseInvoice.invoice.label" default="Invoice" /></h3>
											<ul>
												<li>
													<g:message code="expenseInvoice.accountnumber.label" default="Account Number" />: <span>${expenseInvoiceInstance?.accountnumber}</span>
												</li>
												<li>
													<g:message code="expenseInvoice.dateissued.label" default="Date Issued" />: <span>${expenseInvoiceInstance?.invoicedate}</span>
												</li>
												<g:if test="${expenseInvoiceInstance?.datepaid}">
												<li>
													<g:message code="expenseInvoice.paiddate.label" default="Paid Date" />: <span>${expenseInvoiceInstance?.datepaid}</span>
												</li>
												</g:if>
											</ul>
										</div>	
                                	</div>
                                	<div class="invoice-body">
										<table class="table table-striped responsive">
                                            <thead>
                                                <tr>
                                                    <th class="item"><g:message code="expenseInvoice.item.label" default="Item" /></th>
                                                    <th class="desc"><g:message code="expenseInvoice.description.label" default="Description" /></th>
                                                    <th class="price"><g:message code="expenseInvoice.price.label" default="Price" /></th>
                                                    <th class="qtn"><g:message code="expenseInvoice.quantity.label" default="Quantity" /></th>
                                                    <th class="sub"><g:message code="expenseInvoice.subtotal.label" default="Subtotal" /></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><a href="javascript:void(0);">Print and Web Logo Design</a></td>
                                                    <td>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium totam rem aperiam xplicabo.</td>
                                                    <td>$1,300.00</td>
                                                    <td>x1</td>
                                                    <td>$1,300.00</td>

                                                </tr>
                                                <tr>
                                                    <td><a href="javascript:void(0);">SEO Management</a></td>
                                                    <td>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</td>
                                                    <td>$1,400.00</td>
                                                    <td>x1</td>
                                                    <td>$1,400.00</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="javascript:void(0);">Backend Support and Upgrade</a></td>
                                                    <td>Coluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</td>
                                                    <td>$1,700.00</td>
                                                    <td>x1</td>
                                                    <td>$1,700.00</td>
                                                </tr>
												<tr>
                                                    <td class="invoice-sub" colspan="4"><g:message code="expenseInvoice.subtotal.label" default="Subtotal:"/></td>
                                                    <td><strong><span class="property-value" aria-labelledby="subtotal-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="amount"/></span></strong></td>
                                                </tr>
                                                <tr>
                                                    <td class="invoice-sub" colspan="4"><g:message code="expenseInvoice.taxes.label" default="Taxes:"/></td>
                                                    <td><strong><span class="property-value" aria-labelledby="tax-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="tax"/></span></strong></td>
                                                </tr>
                                                <tr>
                                                    <td class="invoice-sub" colspan="4"><g:message code="expenseInvoice.total.label" default="Total:"/></td>
                                                    <td><strong><span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="total"/></span></strong></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                	</div>
                                	<div class="invoice-footer">
                                		
                                		<div class="invoice-sum-total">
                                			<h3><g:message code="expenseInvoice.total.label" default="Total:"/>  <span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${expenseInvoiceInstance}" field="total"/></span></h3>
                                		</div>
                                	</div>
                                </div>
						
						<!-- end invoice -->
						
					</div>
 </body>
</html>
