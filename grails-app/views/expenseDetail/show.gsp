
<%@ page import="com.hero.invoice.ExpenseDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'expenseDetail.label', default: 'ExpenseDetail')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-expenseDetail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-expenseDetail" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list expenseDetail">
			
				<g:if test="${expenseDetailInstance?.invoice}">
				<li class="fieldcontain">
					<span id="invoice-label" class="property-label"><g:message code="expenseDetail.invoice.label" default="Invoice" /></span>
					
						<span class="property-value" aria-labelledby="invoice-label"><g:link controller="expenseInvoice" action="show" id="${expenseDetailInstance?.invoice?.id}">${expenseDetailInstance?.invoice?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${expenseDetailInstance?.expensetype}">
				<li class="fieldcontain">
					<span id="expensetype-label" class="property-label"><g:message code="expenseDetail.expensetype.label" default="Expensetype" /></span>
					
						<span class="property-value" aria-labelledby="expensetype-label"><g:link controller="expenseType" action="show" id="${expenseDetailInstance?.expensetype?.id}">${expenseDetailInstance?.expensetype?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${expenseDetailInstance?.detailcode}">
				<li class="fieldcontain">
					<span id="detailcode-label" class="property-label"><g:message code="expenseDetail.detailcode.label" default="Detailcode" /></span>
					
						<span class="property-value" aria-labelledby="detailcode-label"><g:fieldValue bean="${expenseDetailInstance}" field="detailcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${expenseDetailInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="expenseDetail.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${expenseDetailInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${expenseDetailInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="expenseDetail.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${expenseDetailInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${expenseDetailInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="expenseDetail.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${expenseDetailInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:expenseDetailInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${expenseDetailInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
