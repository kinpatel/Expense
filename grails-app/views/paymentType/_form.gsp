<%@ page import="com.hero.invoice.PaymentType" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: paymentTypeInstance, field: 'name', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="name">
					<g:message code="paymentType.name.label" default="Name:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-9">
				<input type="text" name="name" class="form-control" value="${paymentTypeInstance?.name}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: paymentTypeInstance, field: 'description', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="description">
					<g:message code="paymentType.description.label" default="Description" />					
				</label>
			</div>
			<div class="col-md-9">
				<input type="text" name="description" class="form-control" value="${paymentTypeInstance?.description}" >
			</div>
		</div>
	</div>
</div>


