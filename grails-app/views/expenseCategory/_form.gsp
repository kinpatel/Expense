<%@ page import="com.hero.ExpenseCategory" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseCategoryInstance, field: 'name', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="name"><g:message code="expenseCategory.name.label" default="Name:" /><span class="req">*</span></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="name" class="form-control" value="${expenseCategoryInstance?.name}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: expenseCategoryInstance, field: 'description', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="description"><g:message code="expenseCategory.description.label" default="Description:" /></label>
			</div>	
			<div class="col-md-9 has-icon">
				<input type="text" name="description" class="form-control" value="${expenseCategoryInstance?.description}" >
			</div>
		</div>
	</div>
</div>

