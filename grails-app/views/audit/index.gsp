
<%@ page import="com.hero.Audit" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'audit.label', default: 'Audit')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="index"><i class="icon-th-list"></i> <g:message code="default.list.label"  args="[entityName]" /></g:link>
		</div>


		<div>&nbsp;</div>
		
		<div class="fluid-container">
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0" data-widget-deletebutton="false" data-widget-editbutton="false">
							<header>
								<h2><g:message code="default.list.label" args="[entityName]" /></h2>                           
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
									<table class="table table-striped table-bordered responsive" id="dtable">
										<thead>
											<tr>
												<th> ${message(code: 'audit.actor.label', default: 'Actor')} </th>
												<th> ${message(code: 'audit.className.label', default: 'Class Name')} </th>
												<th> ${message(code: 'audit.eventName.label', default: 'Event Name')} </th>
												<th> ${message(code: 'audit.newValue.label', default: 'New Value')} </th>
												<th> ${message(code: 'audit.oldValue.label', default: 'Old Value')} </th>
												
												<th> ${message(code: 'audit.actor.label', default: 'Persisted Object Id')} </th>
												<th> ${message(code: 'audit.className.label', default: 'Persisted Object Version')} </th>
												<th> ${message(code: 'audit.eventName.label', default: 'Property Name')} </th>
												<th> ${message(code: 'audit.newValue.label', default: 'uri')} </th>
												<th> ${message(code: 'audit.oldValue.label', default: 'Date Created')} </th>
												<th> ${message(code: 'audit.oldValue.label', default: 'Last Updated')} </th>
												
												
											</tr>
										</thead>
										<tbody>
											
											
											<g:each in="${auditInstanceList}" status="i" var="auditInstance">
												<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
													<td>${fieldValue(bean: auditInstance, field: "actor")}</td>
					
													<td>${fieldValue(bean: auditInstance, field: "className")}</td>
					
													<td>${fieldValue(bean: auditInstance, field: "eventName")}</td>
					
													<td>${fieldValue(bean: auditInstance, field: "newValue")}</td>
					
													<td>${fieldValue(bean: auditInstance, field: "oldValue")}</td>
													
													<td>${fieldValue(bean: auditInstance, field: "persistedObjectId")}</td>
					
													<td>${fieldValue(bean: auditInstance, field: "persistedObjectVersion")}</td>
					
													<td>${fieldValue(bean: auditInstance, field: "propertyName")}</td>
					
													<td>${fieldValue(bean: auditInstance, field: "uri")}</td>
													
													<td>${fieldValue(bean: auditInstance, field: "dateCreated")}</td>
													<td>${fieldValue(bean: auditInstance, field: "lastUpdated")}</td>
					
												</tr>
											</g:each>
										</tbody>
									</table>
									
							</div>
						</div>
					</article>
				</div>
			</section>
		</div>
	</body>
</html>
