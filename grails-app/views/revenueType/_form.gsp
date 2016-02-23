<%@ page import="com.hero.revenue.RevenueType" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: revenueTypeInstance, field: 'name', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="name"><g:message code="revenueType.name.label" default="Name:" /><span class="req">*</span></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="name" class="form-control" value="${revenueTypeInstance?.name}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: revenueTypeInstance, field: 'description', 'error')}">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="description"><g:message code="revenueType.description.label" default="Description:" /></label>
			</div>	
			<div class="col-md-9 has-icon">
				<input type="text" name="description" class="form-control" value="${revenueTypeInstance?.description}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: revenueTypeInstance, field: 'hotel', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="hotel"><g:message code="revenueType.hotel.label" default="Hotel:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-9 has-icon">
				<!--g:select id="hotel" name="hotel.id" from="${com.hero.Hotel.list()}" optionKey="id" required="" value="${revenueTypeInstance?.hotel?.id}" class="many-to-one"/-->
				<g:select class="with-search" id="hotel" from="${hotelsFiltered}" name="hotel.id" optionKey="id" value="${revenueTypeInstance?.hotel?.id}"/>
			</div>
		</div>
	</div>
</div>

