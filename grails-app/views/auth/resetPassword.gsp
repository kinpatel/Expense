<!doctype html>
<html>
	<head>
		<meta name="layout" content="nMain">
		<g:set var="title" value="${message(code: 'resetPassword', default: 'Reset Password')}" />
		<title>${title}</title>
	</head>
	<body>
       
        <div class="body">
			<h1>${title}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form action="doResetPassword" class="form-horizontal themed" >
				<fieldset   class="form-group">
					<div class="fieldcontain">
						Hi ${resetRequest?.user?.username ?: ""}, please update your password here :<br/><br/><br/>
					</div>
					
					<div class="fieldcontain required">
					<div class="row">
						<div  class="col-md-2">
						<!-- label for="password1" -->
							<!-- g:message code="shiroUser.password1.label" default="New Password" /-->
							<label class="control-label" for="name"><g:message code="shiroUser.password1.label" default="New Password" /><span class="req">*</span></label>
						</div>
						<div class="col-md-4">
						<g:passwordField name="password1" required="" class="form-control"/>
						<g:if test="${params.id}"><g:hiddenField name="token" value="${params.id}"/></g:if>
						</div>
					</div>
					</div>
					
					<br/><br/>
					
					<div class="fieldcontain required">
					    <div class="row">
					    <div class="col-md-2">
						
							<!--g:message code="shiroUser.password2.label" default="Repeat Password" class="control-label" /-->
							<label class="control-label" for="name"><g:message code="shiroUser.password2.label" default="Repeat Password" /><span class="req">*</span></label>
						</div>
						<div class="col-md-4">
						<g:passwordField name="password2" required=""  class="form-control" />
					</div>
					</div>
					</div>
				</fieldset>
				
				
				<fieldset  class="form-actions">
						<button name="update" class="btn medium btn-danger" >
									${message(code: 'default.update.label', default: 'Update')}
						</button>
																							
					</fieldset>
										
				
				
				
				
				
				
				
			</g:form>
		</div>
	</body>
</html>


