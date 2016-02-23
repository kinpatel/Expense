<%@ page import="com.hero.revenue.RevenueDetail" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: revenueDetailInstance, field: 'dailyrevenue', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="dailyrevenue"><g:message code="revenueDetail.dailyrevenue.label" default="Daily Revenue:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-9 has-icon">
			    <g:select class="with-search" id="dailyrevenue" from="${dailyRevenueFiltered}" name="dailyrevenue.id" optionKey="id" value="${dailyRevenueInstance?.dailyrevenue?.id}" class="many-to-one"/>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: revenueDetailInstance, field: 'revenuetype', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="revenuetype"><g:message code="revenueDetail.revenuetype.label" default="Revenue Type:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-9 has-icon">
				<g:select class="with-search" id="revenuetype" from="${revenueTypeFiltered}" name="revenuetype.id" optionKey="id" value="${dailyRevenueInstance?.revenuetype?.id}" class="many-to-one"/>
			</div>
		</div>
	</div>
</div>		

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: revenueDetailInstance, field: 'description', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="description"><g:message code="revenueDetail.description.label" default="Description:" /></label>
			</div>	
			<div class="col-md-9 has-icon">
				<input type="text" name="description" class="form-control" value="${revenueDetailInstance?.description}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: revenueDetailInstance, field: 'total', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="total"><g:message code="revenueDetail.total.label" default="Total:" /></label>
			</div>	
			<div class="col-md-9 has-icon">
				<input type="text" name="total" class="form-control" value="${revenueDetailInstance?.total}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: revenueDetailInstance, field: 'quantity', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="quantity"><g:message code="revenueDetail.quantity.label" default="Quantity:" /></label>
			</div>	
			<div class="col-md-9 has-icon">
				<input type="text" name="quantity" class="form-control" value="${revenueDetailInstance?.quantity}" >
			</div>
		</div>
	</div>
</div>


