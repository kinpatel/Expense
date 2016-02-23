
<%@ page import="com.hero.invoice.ExpenseDetail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'expenseDetail.label', default: 'ExpenseDetail')}" />
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
												<th> ${message(code: 'expenseDetail.expensetype.label', default: 'Expense Type')} </th>
												<th> ${message(code: 'expenseDetail.description.label', default: 'Description')} </th>
												<th> ${message(code: 'expenseDetail.detailcode.label', default: 'Detail Code')} </th>
												<th> ${message(code: 'expenseDetail.quantity.label', default: 'Quantity')} </th>
												<th> ${message(code: 'expenseDetail.amount.label', default: 'Amount')} </th>
											</tr>
										</thead>
										<tbody>
											<g:each in="${expenseDetailInstanceList}" status="i" var="expenseDetailInstance">
												<tr class="${(i % 2) == 0 ? 'gradeA' : 'gradeA'}">
													<td>${fieldValue(bean: expenseDetailInstance, field: "expensetype")}</td>
													<td>${fieldValue(bean: expenseDetailInstance, field: "description")}</td>
													<td>${fieldValue(bean: expenseDetailInstance, field: "detailcode")}</td>
													<td>${fieldValue(bean: expenseDetailInstance, field: "quantity")}</td>
													<td>${fieldValue(bean: expenseDetailInstance, field: "amount")}</td>
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
