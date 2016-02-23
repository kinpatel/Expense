<!doctype html>
<html>
	<head>
		<meta name="layout" content="nMain">
		<g:set var="title" value="${message(code: 'lostPassword', default: 'Lost Password ?')}" />
		<title>${title}</title>
	</head>
	<body>
        
        <div class="body">
			<h1>${title}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form action="sendPasswordResetRequest" class="form-horizontal themed" >
                <div class="dialog">
				<fieldset >
				
				
				
				
				<div class="form-group" >You can reset your password here :</div>
					
					<div class="form-group">
					<div class="row">
					<div class="col-md-2 ">	
						<label for="username" class="control-label">
							<g:message code="shiroUser.username.label" default="Username" />
						</label></div>
						<div class="col-md-4"><div class="controls">
						<g:textField name="username" class="form-control"/>
					</div></div>
					</div>
					<div class="row">
					<br/><div class="control-label"><b>OR</b></div><br/>
					</div>
					
					<div class="row">
					<div class="col-md-2 ">	
						<label for="email"class="control-label">
							<g:message code="shiroUser.email.label" default="Email" />
						</label></div>
						<div class="col-md-4"><div class="controls">
						<g:textField name="email"  class="form-control" />
						</div></div>
					</div>
					
					</div>
					
					
				
				</fieldset>
				
						
				<fieldset  class="form-actions">
						<button name="sendRequest" class="btn medium btn-primary" >
									${message(code: 'password.reset.send.label', default: 'Send Request')}
						</button>
																							
					</fieldset>
				
				</div>
			</g:form>
		</div>
	</body>
</html>
