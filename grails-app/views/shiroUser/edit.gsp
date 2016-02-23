<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shiroUser.label', default: 'User')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>			
		</div>
		
		<div>&nbsp;</div>
	
			<div class="fluid-container">
			<!-- widget grid -->
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
						        <h2><g:message code="shirorole.edit.label" default="User Edit"  /></h2>
						    </header>
						    <!-- wrap div -->
							<div>
								<div class="jarviswidget-editbox">
						            <div>
						                <label>Title:</label>
						                <input type="text" />
						            </div>
						            <div>
						                <label>Styles:</label>
						                <span data-widget-setstyle="purple" class="purple-btn"></span>
						                <span data-widget-setstyle="navyblue" class="navyblue-btn"></span>
						                <span data-widget-setstyle="green" class="green-btn"></span>
						                <span data-widget-setstyle="yellow" class="yellow-btn"></span>
						                <span data-widget-setstyle="orange" class="orange-btn"></span>
						                <span data-widget-setstyle="pink" class="pink-btn"></span>
						                <span data-widget-setstyle="red" class="red-btn"></span>
						                <span data-widget-setstyle="darkgrey" class="darkgrey-btn"></span>
						                <span data-widget-setstyle="black" class="black-btn"></span>
						            </div>
						        </div>
						        
						        
						        <div class="inner-spacer"> 
						        <!-- content goes here -->
						        	<g:hasErrors bean="${shiroUserInstance}">
										<ul class="errors" role="alert">
											<g:eachError bean="${shiroUsreInstance}" var="error">
											<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
											</g:eachError>
										</ul>
									</g:hasErrors>
									<g:form url="[resource:shiroUserInstance, action:'update']" enctype="multipart/form-data">
										<fieldset class="form-horizontal themed" id="masked-inputs-js">

											<div class="form-group">
												<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'username', 'error')} required">
													<div class="row">
														<div  class="col-md-3">
															<label class="control-label" for="username"><g:message code="shiroUser.username.label" default="Username:" /><span class="req">*</span></label>
														</div>
														<div class="col-md-9">			
															<input type="text" name="username" class="form-control" value="${shiroUserInstance?.username}" >
														</div>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'image', 'error')} ">
													<div class="row">
														<div class="col-md-3">
															<label for="image">
																<g:message code="shiroUser.image.label" default="Image" />
															</label>
														</div>
														<div class="col-md-9">
															<div class="controls">
																<input class="file" id="image" name="image" type="file" />
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'firstName', 'error')} required">
													<div class="row">
														<div  class="col-md-3">
															<label class="control-label" for="firstName"><g:message code="shiroUser.firstname.label" default="First Name:" /><span class="req">*</span></label>
														</div>
														<div class="col-md-9">			
															<input type="text" name="firstName" class="form-control" value="${shiroUserInstance?.firstName}" >
														</div>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'lastName', 'error')} required">
													<div class="row">
														<div  class="col-md-3">
															<label class="control-label" for="lastName"><g:message code="shiroUser.lastname.label" default="Last Name:" /><span class="req">*</span></label>
														</div>
														<div class="col-md-9">			
															<input type="text" name="lastName" class="form-control" value="${shiroUserInstance?.lastName}" >
														</div>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'email', 'error')} required">
													<div class="row">
														<div  class="col-md-3">
															<label class="control-label" for="email"><g:message code="shiroUser.email.label" default="EMail:" /><span class="req">*</span></label>
														</div>
														<div class="col-md-9">			
															<input type="text" name="email" class="form-control" value="${shiroUserInstance?.email}" >
														</div>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'phonenumber', 'error')} required">
													<div class="row">	
														<div class="col-md-3">
															<label class="control-label" for="phonenumber"><g:message code="hotel.phonenumber.label" default="Phone Number:" /></label>
														</div>	
														<div class="col-md-9">
															<div class="controls">
																<input type="text" name="phonenumber" class="col-md-12 form-control phone-masked" value="${shiroUserInstance?.phonenumber}" >
																<p class="help-block">
																	(999) 999-9999
																</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'roles', 'error')} required">
													<div class="row">
														<div  class="col-md-3">
															<label class="control-label" for=roles><g:message code="shiroUser.roles.label" default="Roles:" /><span class="req">*</span></label>
														</div>
														<div class="col-md-9">			
															<shiroui:roleSelect name="roles" size="10" value="${shiroUserInstance?.roles}"/>
														</div>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'permissions', 'error')} required">
													<div class="row">
														<div  class="col-md-3">
															<label class="control-label" for="permissions"><g:message code="shiroUser.email.label" default="Permissions:" /><span class="req">*</span></label>
														</div>
														<div class="col-md-9">			
															<shiroui:permissionSelect name="permissions" size="10" value="${shiroUserInstance?.permissions}"/>
														</div>
													</div>
												</div>
											</div>
											
											<div class="form-group">
												<div class="fieldcontain ${hasErrors(bean: shiroUserInstance, field: 'hotels', 'error')} required">
													<div class="row">
														<div  class="col-md-3">
															<label class="control-label" for="hotels"><g:message code="shiroUser.hotels.label" default="Hotels:" /><span class="req">*</span></label>
														</div>
														<div class="col-md-9">
															<div class="controls">
																<g:select class="many-to-many" id="hotel" name="hotels" multiple="true" from="${com.hero.Hotel.list()}" optionKey="id" value="${shiroUserInstance?.hotels}"/>
															</div>
														</div>
													</div>
												</div>
											</div>


											<div class="form-actions">
												<button type="submit" class="btn medium btn-primary" >
													${message(code: 'default.button.update.label', default: 'Update')}
												</button>
											
											</div>
										</fieldset>	
									</g:form>
								</div>	
							</div>
						</div>
					</article>
				</div>
			</section>
		</div>
	</body>
</html>
