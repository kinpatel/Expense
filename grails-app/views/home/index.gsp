<!DOCTYPE html>
<%@page import="com.hero.ShiroRole" %>
<%@page import="com.hero.ShiroUser" %>
<%@page import="org.apache.shiro.SecurityUtils" %>

<html>

	<head>

		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
  													
	</head>
	<body>
	

								
		    <!--div id="controller-list" role="navigation">
					<g:each var="c" in="${grailsApplication.controllerClasses.findAll {it.fullName.contains('com.hero')}.sort { it.fullName.tokenize('.').last().minus('Controller').minus('Shiro') } }">
						<button type="button" class="btn btn-link btn-med"><g:link controller="${c.logicalPropertyName}">${c.fullName.tokenize('.').last().minus('Controller').minus('Shiro')}</g:link></button>
					</g:each>
					<br/>&nbsp;<br/>
			</div-->
			
<!-- Test received from Kinjal -->			
<shiro:hasRole name="administrator">
	<li class="">
		<a href="${createLink(controller:'Home', action:'index')}"><i class="icon-home"></i>Dashboard</a>
	</li>
</shiro:hasRole> 

								<article class="col-md-6 sortable-grid ui-sortable">

									<!-- new widget -->
									<div class="jarviswidget green jarviswidget-sortable" id="widget-id-2" role="widget">
									    <header role="heading">
									    <h2>Revenue</h2>                           
									    <div class="jarviswidget-ctrls" role="menu"> <a href="#" class="button-icon jarviswidget-delete-btn"><i class="trashcan-10"></i></a>  <a href="#" class="button-icon jarviswidget-edit-btn"><i class="icon-pencil "></i></a> <a href="#" class="button-icon jarviswidget-fullscreen-btn"><i class="fullscreen-10 "></i></a> <a href="#" class="button-icon jarviswidget-toggle-btn"><i class="min-10 "></i></a></div><span class="jarviswidget-loader"></span></header>
									    
									    <!-- widget div-->
									    <div role="content">
									    	<!-- widget edit box -->
									        <div class="jarviswidget-editbox">
									            <div>
									                <label>Title:</label>
									                <input type="text">
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
									        <!-- end widget edit box -->
									                    
									        <div class="inner-spacer widget-content-padding"> 
									        <!-- content goes here -->

												<!--code>class="jarviswidget <b>green</b>" id="widget-id-2"</code-->
												<!-- bar chart -->
												<script type="text/javascript">
													var chartRevenueData = ${chartRevenueData}	
													var chartRevenueMonthData = ${chartRevenueMonthData}
												</script>
												<div id="revenue-chart" class="chart"></div>
								   			</div>
									        
									    </div>
									    <!-- end widget div -->
									    

									</div>
									<!-- end widget -->
							</article>
							
								<article class="col-md-6 sortable-grid ui-sortable">

									<!-- new widget -->
									<div class="jarviswidget green jarviswidget-sortable" id="widget-id-2" role="widget">
									    <header role="heading">
									    <h2>Expense vs Revenue</h2>                           
									    <div class="jarviswidget-ctrls" role="menu"> <a href="#" class="button-icon jarviswidget-delete-btn"><i class="trashcan-10"></i></a>  <a href="#" class="button-icon jarviswidget-edit-btn"><i class="icon-pencil "></i></a> <a href="#" class="button-icon jarviswidget-fullscreen-btn"><i class="fullscreen-10 "></i></a> <a href="#" class="button-icon jarviswidget-toggle-btn"><i class="min-10 "></i></a></div><span class="jarviswidget-loader"></span></header>
									    
									    <!-- widget div-->
									    <div role="content">
									    	<!-- widget edit box -->
									        <div class="jarviswidget-editbox">
									            <div>
									                <label>Title:</label>
									                <input type="text">
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
									        <!-- end widget edit box -->
									                    
									        <div class="inner-spacer widget-content-padding"> 
									        <!-- content goes here -->

												<!--code>class="jarviswidget <b>green</b>" id="widget-id-2"</code-->
												<!-- bar chart -->
												<script type="text/javascript">
													var chartExpenseData = ${chartExpenseData}	
													var chartExpenseMonthData = ${chartExpenseMonthData}	
												</script>
												<div id="expenserevenue-chart" class="chart"></div>
												<!--div id="bar-chart" class="chart"></div-->
								   			</div>
									        
									    </div>
									    <!-- end widget div -->
									</div>
									<!-- end widget -->
									
									
									
							</article>							
							

		
	</body>
</html>