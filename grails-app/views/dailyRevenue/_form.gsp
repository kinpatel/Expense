<%@ page import="com.hero.revenue.DailyRevenue" %>



<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'day', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label for="day">
					<g:message code="dailyRevenue.day.label" default="Day:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-9">			
				<div class="input-append date" id="datepicker-js" >
					<input class="datepicker-input" size="16" type="text" name="day" value="${dailyRevenueInstance?.day}" placeholder="Select a date" />
					<span class="add-on"><i class="cus-calendar-2"></i></span>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'hotel', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="hotel"><g:message code="dailyRevenue.hotel.label" default="Hotel:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-9 has-icon">
				<g:select class="with-search" id="hotel" from="${hotelsFiltered}" name="hotel.id" optionKey="id" value="${dailyRevenueInstance?.hotel?.id}"/>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'total', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label for="total">
					<g:message code="dailyRevenue.total.label" default="Total:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="total" class="form-control" value="${dailyRevenueInstance?.total}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'taxexempt', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="taxexempt">
					<g:message code="dailyRevenue.taxexempt.label" default="Tax Exempt:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="taxexempt" class="form-control" value="${dailyRevenueInstance?.taxexempt}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'taxabletotal', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="taxabletotal">
					<g:message code="dailyRevenue.taxabletotal.label" default="Taxable Total:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="taxabletotal" class="form-control" value="${dailyRevenueInstance?.taxabletotal}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'countycitytax', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="countycitytax">
					<g:message code="dailyRevenue.countycitytax.label" default="County/City Tax:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="countycitytax" class="form-control" value="${dailyRevenueInstance?.countycitytax}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'statetax', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="statetax">
					<g:message code="dailyRevenue.statetax.label" default="State Tax:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="statetax" class="form-control" value="${dailyRevenueInstance?.statetax}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'cashcheck', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="cashcheck">
					<g:message code="dailyRevenue.cashcheck.label" default="Cash/Check:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="cashcheck" class="form-control" value="${dailyRevenueInstance?.cashcheck}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'visa', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="visa">
					<g:message code="dailyRevenue.tax.label" default="Visa:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="visa" class="form-control" value="${dailyRevenueInstance?.visa}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'mastercard', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="tax">
					<g:message code="dailyRevenue.mastercard.label" default="Mastercard:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="mastercard" class="form-control" value="${dailyRevenueInstance?.mastercard}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'amex', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="amex">
					<g:message code="dailyRevenue.amex.label" default="Amex:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="amex" class="form-control" value="${dailyRevenueInstance?.amex}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'discovery', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="discovery">
					<g:message code="dailyRevenue.discovery.label" default="Discovery:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="discovery" class="form-control" value="${dailyRevenueInstance?.discovery}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyRevenueInstance, field: 'diners', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="diners">
					<g:message code="dailyRevenue.diners.label" default="Diners:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="diners" class="form-control" value="${dailyRevenueInstance?.diners}" >
				<i class="cus-money-dollar"></i>
			</div>
		</div>
	</div>
</div>

