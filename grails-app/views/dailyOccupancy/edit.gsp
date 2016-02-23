<%@ page import="com.hero.revenue.DailyOccupancy" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'dailyOccupancy.label', default: 'DailyOccupancy')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label" args="[entityName]" /></g:link>			
		</div>
		
		<div>&nbsp;</div>
		
		<div class="fluid-container">
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
							<header>
						        <h2><g:message code="default.edit.label" args="[entityName]" /></h2>                           
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
									<g:hasErrors bean="${dailyOccupancy}">
										<ul class="errors" role="alert">
											<g:eachError bean="${dailyOccupancy}" var="error">
											<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
											</g:eachError>
										</ul>
									</g:hasErrors>
									<g:form url="[resource:dailyOccupancyInstance, action:'updateDailyOccupancy']" method="PUT" >
										<g:hiddenField name="version" value="${dailyOccupancyInstance?.version}" />
										<fieldset class="form-horizontal themed" id="masked-inputs-js">
											<g:render template="form"/>
											<div class="form-actions">
												<button type="submit" class="btn medium btn-primary" name="update">
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
