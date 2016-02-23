<%@ page import="com.hero.Hotel" %>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'name', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="name"><g:message code="hotel.name.label" default="Name:" /><span class="req">*</span></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="name" class="form-control" value="${hotelInstance?.name}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'propertycode', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="propertycode"><g:message code="hotel.propertycode.label" default="Property Code:" /></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="propertycode" class="form-control" value="${hotelInstance?.propertycode}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'phonenumber', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="phonenumber"><g:message code="hotel.phonenumber.label" default="Phone Number:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-9">
				<div class="controls">
					<input type="text" name="phonenumber" class="col-md-12 form-control phone-masked" value="${hotelInstance?.phonenumber}" >
					<p class="help-block">
						(999) 999-9999
					</p>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'address1', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="address1"><g:message code="hotel.address1.label" default="Address1:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-9 has-icon">
				<input type="text" name="address1" class="form-control" value="${hotelInstance?.address1}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'address2', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="address2"><g:message code="hotel.address2.label" default="Address2:" /></label>
			</div>	
			<div class="col-md-9 has-icon">
				<input type="text" name="address2" class="form-control" value="${hotelInstance?.address2}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'city', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="city"><g:message code="hotel.city.label" default="City:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-9">
				<input type="text" name="city" class="form-control" value="${hotelInstance?.city}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'state', 'error')} required">
		<div class="row">	
			<div class="col-md-3">
				<label class="control-label" for="state"><g:message code="hotel.state.label" default="State:" /><span class="req">*</span></label>
			</div>	
			<div class="col-md-9">
				
				<div class="controls">
					<select class="with-search" name="state" value="${hotelInstance?.state}">		                
		                <option value="AK">Alaska</option>
		                <option value="HI">Hawaii</option>
		                <option value="CA">California</option>
		                <option value="NV">Nevada</option>
		                <option value="OR">Oregon</option>
		                <option value="WA">Washington</option>
		                <option value="AZ">Arizona</option>
		                <option value="CO">Colorado</option>
		                <option value="ID">Idaho</option>
		                <option value="MT">Montana</option>
		                <option value="NE">Nebraska</option>
		                <option value="NM">New Mexico</option>
		                <option value="ND">North Dakota</option>
		                <option value="UT">Utah</option>
		                <option value="WY">Wyoming</option>
		                <option value="AL">Alabama</option>
		                <option value="AR">Arkansas</option>
		                <option value="IL">Illinois</option>
		                <option value="IA">Iowa</option>
		                <option value="KS">Kansas</option>
		                <option value="KY">Kentucky</option>
		                <option value="LA">Louisiana</option>
		                <option value="MN">Minnesota</option>
		                <option value="MS">Mississippi</option>
		                <option value="MO">Missouri</option>
		                <option value="OK">Oklahoma</option>
		                <option value="SD">South Dakota</option>
		                <option value="TX">Texas</option>
		                <option value="TN">Tennessee</option>
		                <option value="WI">Wisconsin</option>
		                <option value="CT">Connecticut</option>
		                <option value="DE">Delaware</option>
		                <option value="FL">Florida</option>
		                <option value="GA">Georgia</option>
		                <option value="IN">Indiana</option>
		                <option value="ME">Maine</option>
		                <option value="MD">Maryland</option>
		                <option value="MA">Massachusetts</option>
		                <option value="MI">Michigan</option>
		                <option value="NH">New Hampshire</option>
		                <option value="NJ">New Jersey</option>
		                <option value="NY">New York</option>
		                <option value="NC">North Carolina</option>
		                <option value="OH">Ohio</option>
		                <option value="PA">Pennsylvania</option>
		                <option value="RI">Rhode Island</option>
		                <option value="SC">South Carolina</option>
		                <option value="VT">Vermont</option>
		                <option value="VA">Virginia</option>
		                <option value="WV">West Virginia</option> 
			        </select>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'zip', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="zip"><g:message code="hotel.zip.label" default="Zip:" /><span class="req">*</span></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="zip" class="form-control" value="${hotelInstance?.zip}" >
				<p class="help-block">
					99999
				</p>
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'country', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="country"><g:message code="hotel.country.label" default="Country:" /><span class="req">*</span></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="country" class="form-control" value="${hotelInstance?.country}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'totalrooms', 'error')} required">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="totalrooms"><g:message code="hotel.totalrooms.label" default="Number of Rooms:" /></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="totalrooms" class="form-control" value="${hotelInstance?.totalrooms}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'lastyearrooms', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="lastyearrooms"><g:message code="hotel.lastyearrooms.label" default="Last Year Rooms:" /></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="lastyearrooms" class="form-control" value="${hotelInstance?.lastyearrooms}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'statetaxrate', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="statetaxrate"><g:message code="hotel.statetaxrate.label" default="State Tax Rate:" /></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="statetaxrate" class="form-control" value="${hotelInstance?.statetaxrate}" >
			</div>
		</div>
	</div>
</div>

<div class="form-group">
	<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'countycitytaxrate', 'error')}">
		<div class="row">
			<div  class="col-md-3">
				<label class="control-label" for="countycitytaxrate"><g:message code="hotel.countycitytaxrate.label" default="County City Tax Rate:" /></label>
			</div>
			<div class="col-md-9">			
				<input type="text" name="countycitytaxrate" class="form-control" value="${hotelInstance?.countycitytaxrate}" >
			</div>
		</div>
	</div>
</div>