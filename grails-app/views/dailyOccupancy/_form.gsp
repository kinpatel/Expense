<%@ page import="com.hero.revenue.DailyOccupancy" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'day', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label for="invoicedate">
					<g:message code="expenseInvoice.day.label" default="Day:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-9">			
				<div class="input-append date" id="datepicker-js" >
					<input class="datepicker-input" size="16" type="text" name="day" value="${dailyOccupancyInstance?.day}" placeholder="Select a date" />
					<span class="add-on"><i class="cus-calendar-2"></i></span>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'hotel', 'error')} required">		
		<div class="row">
			<div class="col-md-3">
				<label for="hotel">
					<g:message code="dailyOccupancyInstance.hotel.label" default="Hotel:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-9">
				<div class="controls">
					<g:select class="with-search" id="hotel" name="hotel.id" from="${hotelsFiltered}" optionKey="id" value="${dailyOccupancyInstance?.hotel?.id}" noSelection="['null':'-Select Hotel-']" />
				</div>
			</div>
		</div>		
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'totalrevenuerooms', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label for="totalrevenuerooms">
					<g:message code="dailyOccupancyInstance.totalrevenuerooms.label" default="Total Revenue Rooms:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="totalrevenuerooms" class="form-control" value="${dailyOccupancyInstance?.totalrevenuerooms}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'totalnonrevenuerooms', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="totalnonrevenuerooms">
					<g:message code="dailyOccupancyInstance.totalnonrevenuerooms.label" default="Total Non Revenue Rooms:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="totalnonrevenuerooms" class="form-control" value="${dailyOccupancyInstance?.totalnonrevenuerooms}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'totaloccupiedrooms', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label for="totaloccupiedrooms">
					<g:message code="dailyOccupancyInstance.totaloccupiedrooms.label" default="Total Occupied Rooms:" />
					<span class="required-indicator">*</span>
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="totaloccupiedrooms" class="form-control" value="${dailyOccupancyInstance?.totaloccupiedrooms}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'totalnoofadults', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="totalnoofadults">
					<g:message code="dailyOccupancyInstance.totalnoofadults.label" default="Total #Adults" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="totalnoofadults" class="form-control" value="${dailyOccupancyInstance?.totalnoofadults}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'totalnoofchildren', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="totalnoofchildren">
					<g:message code="dailyOccupancyInstance.totalnoofchildren.label" default="Total #Children:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="totalnoofchildren" class="form-control" value="${dailyOccupancyInstance?.totalnoofchildren}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'withreservation', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="withreservation">
					<g:message code="dailyOccupancyInstance.withreservation.label" default="With Reservation:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="withreservation" class="form-control" value="${dailyOccupancyInstance?.withreservation}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'walkins', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="walkins">
					<g:message code="dailyOccupancyInstance.walkins.label" default="Walkins:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="walkins" class="form-control" value="${dailyOccupancyInstance?.walkins}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'noshows', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="noshows">
					<g:message code="dailyOccupancyInstance.noshows.label" default="No Shows:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="noshows" class="form-control" value="${dailyOccupancyInstance?.noshows}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'cancelationsfortodayarrival', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label for="cancelationsfortodayarrival">
					<g:message code="dailyOccupancyInstance.cancelationsfortodayarrival.label" default="Cancelations for Today Arrival" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="cancelationsfortodayarrival" class="form-control" value="${dailyOccupancyInstance?.cancelationsfortodayarrival}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: dailyOccupancyInstance, field: 'checkedouttoday', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label for="checkedouttoday">
					<g:message code="dailyOccupancyInstance.checkedouttoday.label" default="Checked Out Today:" />
				</label>
			</div>
			<div class="col-md-9 has-icon">
				<input type="text" name="checkedouttoday" class="form-control" value="${dailyOccupancyInstance?.checkedouttoday}" >
			</div>
		</div>
	</div>
</div>