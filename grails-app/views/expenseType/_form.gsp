<%@ page import="com.hero.ExpenseType" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseTypeInstance, field: 'name', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="name"><g:message code="expenseType.name.label" default="Name:" /><span class="req">*</span></label>
			</div>
			<div class="col-md-4">			
				<input type="text" name="name" class="form-control" value="${expenseTypeInstance?.name}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseTypeInstance, field: 'description', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="description"><g:message code="expenseType.description.label" default="Description:" /></label>
			</div>	
			<div class="col-md-4 has-icon">
				<input type="text" name="description" class="form-control" value="${expenseTypeInstance?.description}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseTypeInstance, field: 'expensecategory', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="expensecategory"><g:message code="expenseType.expensecategory.label" default="Expense Category:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-4 has-icon">
				<g:select id="expensecategory" name="expensecategory.id" from="${com.hero.ExpenseCategory.list()}" optionKey="id" required="" value="${expenseTypeInstance?.expensecategory?.id}" class="with-search" noSelection="['null':'-Select ExpenseCategory-']"/>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseTypeInstance, field: 'hotel', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="hotel"><g:message code="expenseType.hotel.label" default="Hotel:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-4 has-icon">
				<!--g:select id="hotel" name="hotel.id" from="${com.hero.Hotel.list()}" optionKey="id" required="" value="${expenseTypeInstance?.hotel?.id}" class="many-to-one"/-->
				<g:select class="with-search" id="hotel" from="${hotelsFiltered}" name="hotel.id" optionKey="id" value="${expenseTypeInstance?.hotel?.id}"/>
			</div>
		</div>
	</div>
</div>