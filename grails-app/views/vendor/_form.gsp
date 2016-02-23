<%@ page import="com.hero.invoice.Vendor" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'name', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="name">
					<g:message code="vendor.name.label" default="Name:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-9">
				<input type="text" name="name" class="form-control" value="${vendorInstance?.name}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'hotel', 'error')} required">
		<div class="row">
			<div class="col-md-3">
				<label class="control-label" for="hotel">
					<g:message code="vendor.hotel.label" default="Hotel:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-9">
				<div class="controls">
					<g:select class="with-search" id="hotel" from="${hotelsFiltered}" name="hotel.id" optionKey="id" value="${vendorInstance?.hotel?.id}"/>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: vendorInstance, field: 'name', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="description">
					<g:message code="vendor.description.label" default="Description:" />
				</label>
			</div>
			<div class="col-md-9">
				<input type="text" name="description" class="form-control" value="${vendorInstance?.description}" >
			</div>
		</div>
	</div>
</div>