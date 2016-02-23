<%@ page import="com.hero.invoice.ExpenseDetail" %>

<g:hiddenField name="invoice.id" value="${params.invoiceId}" />

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseDetailInstance, field: 'expensetype', 'error')} required">
		<div class="row">
			<div class="col-md-3">
				<label for="expensetype">
					<g:message code="expenseDetail.expensetype.label" default="Expense Type" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-4">
				<div class="controls">
					<g:select id="expensetype" name="expensetype.id" from="${com.hero.ExpenseType.list()}" optionKey="id" required="" value="${expenseDetailInstance?.expensetype?.id}" class="with-search"/>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseDetailInstance, field: 'amount', 'error')} required">
		<div class="row">
			<div class="col-md-3">
				<label for="amount">
					<g:message code="expenseDetail.amount.label" default="Amount" />	
					<span class="required-indicator">*</span>				
				</label>
			</div>			
			<div class="col-md-4 has-icon">
				<input type="text" name="amount" class="form-control" value="${expenseDetailInstance?.amount}" >					
					<i class="cus-money-dollar"></i>
			</div>			
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseDetailInstance, field: 'quantity', 'error')} required">
		<div class="row">
			<div class="col-md-3">
				<label for="quantity">
					<g:message code="expenseDetail.quantity.label" default="Quantity" />
					<span class="required-indicator">*</span>				
				</label>
			</div>
			<div class="col-md-4">
				<div class="controls">
					<input type="text" name="quantity" class="form-control" value="${expenseDetailInstance?.quantity}" >					
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseDetailInstance, field: 'detailcode', 'error')} ">
		<div class="row">
			<div class="col-md-3">
				<label for="detailcode">
					<g:message code="expenseDetail.detailcode.label" default="Detail Code" />					
				</label>
			</div>
			<div class="col-md-4">
				<div class="controls">
					<input type="text" name="detailcode" class="form-control" value="${expenseDetailInstance?.detailcode}" >
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseDetailInstance, field: 'description', 'error')} ">
		<div class="row">
			<div class="col-md-3">
				<label for="description">
					<g:message code="expenseDetail.description.label" default="Description" />					
				</label>
			</div>
			<div class="col-md-4">
				<div class="controls">
					<input type="text" name="description" class="form-control" value="${expenseDetailInstance?.description}" >
				</div>
			</div>
		</div>
	</div>
</div>




