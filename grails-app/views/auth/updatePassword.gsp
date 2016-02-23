<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="title" value="${message(code: 'updatePassword', default: 'Update Password')}" />
		<title>${title}</title>
	</head>
	<body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
        </div>
        <div class="body">
			<h1>${title}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form action="doUpdatePassword" class="form-horizontal themed" >
				<fieldset >
				<div class="row">
					
					<div class="form-group">
						Please update your password here :<br/><br/>
					</div>
					
					<div class="form-group">
					<div class="col-md-3 ">					
						<label class="control-label" for="oldpassword">
							<g:message code="shiroUser.oldpassword.label" default="Old Password" /><span class="req">*</span>
						</label></div>
						<div class="col-md-4"><div class="controls">
						<g:passwordField name="oldpassword" required="" class="form-control"/>
					</div></div>
					</div>
			
					<div class="form-group">
					<div class="col-md-3 ">	
						<label class="control-label" for="password1">
							<g:message code="shiroUser.password1.label" default="New Password" /><span class="req">*</span>
						</label></div>
						<div class="col-md-4"><div class="controls">
						<g:passwordField name="password1" required="" class="form-control"/>
						</div></div>
					</div>
					<div class="form-group">
					<div class="col-md-3 ">	
						<label class="control-label" for="password2">
							<g:message code="shiroUser.password2.label" default="Repeat Password" /><span class="req">*</span>
						</label></div>
						<div class="col-md-4"><div class="controls">
						<g:passwordField name="password2" required="" class="form-control"/>
						</div></div>
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
