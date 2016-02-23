
<%@ page import="com.hero.Hotel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"> 
		<g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>
		
		<div class="fluid-container">
			<a class="btn btn-info" href="${createLink(uri: '/')}"><i class="icon-home"></i> <g:message code="default.home.label"/></a>
			<g:link class="btn btn-info" action="create"><i class="icon-plus-sign"></i> <g:message code="default.new.label" args="[entityName]" /></g:link>
		</div>


		<div>&nbsp;</div>
		
		<div class="fluid-container">
		
<!-- Button trigger modal -->
<!--button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button-->

<!-- Modal -->
<!--div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div-->
<!-- Modal -->
   
		
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
												<th> ${message(code: 'hotel.name.label', default: 'Name')} </th>
												<th> ${message(code: 'hotel.prpertycode.label', default: 'Property Code')} </th>
												<th> ${message(code: 'hotel.phonenumber.label', default: 'Phone Number')} </th>
												<th> ${message(code: 'hotel.address1.label', default: 'Address')} </th>
												<th> ${message(code: 'hotel.city.label', default: 'City')} </th>
												<th> ${message(code: 'hotel.state.label', default: 'State')} </th>
												<th> ${message(code: 'hotel.totalrooms.label', default: 'Total Rooms')} </th>
												<th> ${message(code: 'hotel.lastyearrooms.label', default: 'Last Year Rooms')} </th>
												<th> ${message(code: 'hotel.statetaxrate.label', default: 'State Tax Rate')} </th>
												<th> ${message(code: 'hotel.countycitytaxrate.label', default: 'County/City Tax Rate')} </th>
												<th>  </th>
											</tr>
										</thead> 
										
										<tbody>
											<g:each in="${hotelInstanceList}" status="i" var="hotelInstance">
												<tr class="${(i % 2) == 0 ? 'gradeA' : 'gradeA'}">
													<td><g:link action="show" id="${hotelInstance.id}">${fieldValue(bean: hotelInstance, field: "name")}</g:link></td>
													<td>${fieldValue(bean: hotelInstance, field: "propertycode")}</td>
													<td>${fieldValue(bean: hotelInstance, field: "phonenumber")}</td>
													<td>${fieldValue(bean: hotelInstance, field: "address1")}</td>
													<td>${fieldValue(bean: hotelInstance, field: "city")}</td>
													<td>${fieldValue(bean: hotelInstance, field: "state")}</td>
													<td>${fieldValue(bean: hotelInstance, field: "totalrooms")}</td>
													<td>${fieldValue(bean: hotelInstance, field: "lastyearrooms")}</td>
													<td>${fieldValue(bean: hotelInstance, field: "statetaxrate")}</td>
													<td>${fieldValue(bean: hotelInstance, field: "countycitytaxrate")}</td>
													<td><g:link class="edit" action="edit" resource="${hotelInstance}"><i class="icon-edit"></i> </g:link></td>			
												</tr>
											</g:each>									
										</tbody>

									</table>

								</div>
								<!-- end content-->								
							</div>
							<!-- end wrap div --> 
						</div>
						<!-- end widget -->
					

					
					</article>
				</div>
			</section>
		</div>
		<!-- End fluid container -->
	</body>
</html>
