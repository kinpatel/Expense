
<%@ page import="com.hero.invoice.Vendor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'vendor.label', default: 'Vendor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>

		<div>&nbsp;</div>
		
		<div class="fluid-container">
			<section id="widget-grid" class="">
				<div class="row">
					<article class="col-md-12">
						<div class="jarviswidget" id="widget-id-0">
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
												<th>${message(code: 'vendor.name.label', default: 'Name')}</th>
												<th><g:message code="vendor.hotel.label" default="Hotel" /></th>
												<th>${message(code: 'vendor.description.label', default: 'Description')}</th>
												<th></th>
											</tr>
										</thead>
										
										<tbody>
											<g:each in="${vendorInstanceList}" status="i" var="vendorInstance">
												<tr class="${(i % 2) == 0 ? 'gradeA' : 'gradeA'}">
													<td><g:link action="show" id="${vendorInstance.id}">${fieldValue(bean: vendorInstance, field: "name")}</g:link></td>
													<td>${fieldValue(bean: vendorInstance, field: "hotel")}</td>
													<td>${fieldValue(bean: vendorInstance, field: "description")}</td>
													<td><g:link class="edit" action="edit" resource="${vendorInstance}"><i class="icon-edit"></i> </g:link></td>
												</tr>
											</g:each>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</article>
				</div>
			</section>
		</div>
	</body>
</html>