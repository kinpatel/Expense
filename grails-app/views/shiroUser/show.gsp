<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'shiroUser.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>
		
		<div>&nbsp;</div>
		
		<div id="show-shirouser" class="fluid-container" role="main">
			<!-- widget grid -->
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
						        <h2><g:message code="shirouser.show.label" default="User Info" /></h2>                           
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
						        	<g:if test="${flash.message}">
										<div class="message" role="status">${flash.message}</div>
									</g:if>
									
									<fieldset>	
										<g:if test="${shiroUserInstance?.username}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="username-label" class="property-label"><g:message code="shirorole.username.label" default="Username" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${shiroUserInstance}" field="username"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${shiroUserInstance?.image}">
											<div class="form-group">
											<div class="row">
												<div  class="col-md-2">
													<span id="image-label" class="property-label"><g:message code="shiroUser.image.label" default="Image:" /></span>
												</div>
												<div class="col-md-10">													
													<span>
														<g:link action="viewImage" target="_blank" id="${shiroUserInstance.id}">
															<img src="${createLink(action:'viewImage', id:shiroUserInstance?.id)}" width="38" height="38" />
														</g:link>
													</span>
												</div>
											</div>
										</div>
										</g:if>	
										
										
										<g:if test="${shiroUserInstance?.firstName}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="firstname-label" class="property-label"><g:message code="shirorole.firstname.label" default="First Name" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="firstname-label"><g:fieldValue bean="${shiroUserInstance}" field="firstName"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${shiroUserInstance?.lastName}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="lastname-label" class="property-label"><g:message code="shirorole.lastname.label" default="Last Name" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${shiroUserInstance}" field="lastName"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										<g:if test="${shiroUserInstance?.email}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="email-label" class="property-label"><g:message code="shirorole.email.label" default="EMail" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${shiroUserInstance}" field="email"/></span>
													</div>														
												</div>											
											</div>
										</g:if>
										
										
										<g:if test="${shiroUserInstance?.permissions}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="permissions-label" class="property-label"><g:message code="shirouser.permissions.label" default="Permissions" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="permission-label">
										                        <g:each in="${shiroUserInstance.permissions}" var="permission">
										                        <ul><li>${permission?.encodeAsHTML()}</li></ul>
										                        </g:each>
														</span>
													</div>														
												</div>											
											</div>
										</g:if>		
										
										<g:if test="${shiroUserInstance?.roles}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="roles-label" class="property-label"><g:message code="shirouser.roles.label" default="Roles" /></span>												
													</div>
													<div class="col-md-9">
														<ul>
						                                <g:each in="${shiroUserInstance.roles}" var="r">
						                                    <li><g:link controller="shiroRole" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
						                                </g:each>
						                                </ul>	
													</div>														
												</div>											
											</div>
										</g:if>		
										
										<g:if test="${shiroUserInstance?.hotels}">
											<div class="form-group">											
												<div class="row">														
													<div  class="col-md-3">
														<span id="hotels-label" class="property-label"><g:message code="shirouser.hotels.label" default="Hotels" /></span>												
													</div>
													<div class="col-md-9">
														<span class="property-value" aria-labelledby="hotels-label">
										                        <g:each in="${shiroUserInstance.hotels}" var="hotels">
										                        <ul><li>${hotels?.encodeAsHTML()}</li></ul>
										                        </g:each>
														</span>
													</div>														
												</div>											
											</div>
										</g:if>		
							
										
										<g:form url="[resource:shiroUserInstance, action:'delete']">
											<div class="form-actions">											
													<button type="submit" class="btn medium btn-danger" action="delete" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">
														<g:message code="default.button.delete.label" default="Delete" />
													</button>
													<span class="label">
													<g:link class="edit" action="edit" resource="${shiroUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
													</span>											
											</div>
										</g:form>
									</fieldset>									
						        </div>
							</div>
						</div>
					</article>
				</div>	
			</section>			
		</div>		
	</body>
</html>