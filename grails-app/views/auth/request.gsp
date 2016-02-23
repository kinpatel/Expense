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
			
				
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
						
				
				
			
		</div>
	</body>
</html>
