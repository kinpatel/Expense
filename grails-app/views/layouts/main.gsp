<!DOCTYPE html>
<%@page import="com.hero.ShiroRole" %>
<%@page import="com.hero.ShiroUser" %>
<%@page import="org.apache.shiro.SecurityUtils" %>
<html lang="en">
  <head>
  	<!-- JQuery for Modals -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
  	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    
    <title>HERO</title>
    <meta name="description" content="">
    <meta name="author" content="">
    
	<!-- http://davidbcalhoun.com/2010/viewport-metatag -->
	<meta name="HandheldFriendly" content="True">
	<meta name="MobileOptimized" content="320">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	


	<!--// OPTIONAL & CONDITIONAL CSS FILES //-->   
	<!-- date picker css -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/datepicker.css?v=1">
	<!-- full calander css -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/fullcalendar.css?v=1">
	<!-- data tables extended CSS -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/TableTools.css?v=1">
	<!-- bootstrap wysimhtml5 editor -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/bootstrap-wysihtml5.css?v=1">
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/wysiwyg-color.css">
	<!-- custom/responsive growl messages -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/toastr.custom.css?v=1">
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/toastr-responsive.css?v=1">
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/jquery.jgrowl.css?v=1">
	
	<!-- // DO NOT REMOVE OR CHANGE ORDER OF THE FOLLOWING // -->
	<!-- bootstrap default css (DO NOT REMOVE) -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/bootstrap.min.css?v=1">
	<!--<link rel="stylesheet" href="${request.contextPath}/jarvis/css/bootstrap-responsive.min.css?v=1">-->
	<!-- font awsome and custom icons -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/font-awesome.min.css?v=1">
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/cus-icons.css?v=1">
	<!-- jarvis widget css -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/jarvis-widgets.css?v=1">
	<!-- Data tables, normal tables and responsive tables css -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/DT_bootstrap.css?v=1">
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/responsive-tables.css?v=1">
	<!-- used where radio, select and form elements are used -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/uniform.default.css?v=1">
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/select2.css?v=1">
	<!-- main theme files -->
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/theme.css?v=1">
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/theme-responsive.css?v=1">
    
	<!-- // THEME CSS changed by javascript: the CSS link below will override the rules above // -->
	<!-- For more information, please see the documentation for "THEMES" -->
    <link rel="stylesheet" id="switch-theme-js" href="${request.contextPath}/jarvis/css/themes/default.css?v=1">   
	
   	<!-- To switch to full width -->
    <link rel="stylesheet" id="switch-width" href="${request.contextPath}/jarvis/css/full-width.css?v=1">
    
	<!-- Webfonts -->
	<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Lato:300,400,700' type='text/css'>
	
	<!-- Print Invoice CSS -->
	<link rel="stylesheet" href="css/print-invoice.css">
	
	<!-- All javascripts are located at the bottom except for HTML5 Shim -->
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
   		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
   		<script src="${request.contextPath}/jarvis/js/include/respond.min.js"></script>
   	<![endif]-->

	<!-- For Modern Browsers -->
	<link rel="shortcut icon" href="${request.contextPath}/jarvis/img/favicons/favicon.png">
	<!-- For everything else -->
	<link rel="shortcut icon" href="${request.contextPath}/jarvis/img/favicons/favicon.ico">
	<!-- For retina screens -->
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${request.contextPath}/jarvis/img/favicons/apple-touch-icon-retina.png">
	<!-- For iPad 1-->
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${request.contextPath}/jarvis/img/favicons/apple-touch-icon-ipad.png">
	<!-- For iPhone 3G, iPod Touch and Android -->
	<link rel="apple-touch-icon-precomposed" href="${request.contextPath}/jarvis/img/favicons/apple-touch-icon.png">
	
	<!-- iOS web-app metas -->
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<!-- Add your custom home screen title: -->
	<meta name="apple-mobile-web-app-title" content="Jarvis"> 

	<!-- Startup image for web apps -->
	<link rel="apple-touch-startup-image" href="${request.contextPath}/jarvis/img/splash/ipad-landscape.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
	<link rel="apple-touch-startup-image" href="${request.contextPath}/jarvis/img/splash/ipad-portrait.png" media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
	<link rel="apple-touch-startup-image" href="${request.contextPath}/jarvis/img/splash/iphone.png" media="screen and (max-device-width: 320px)">
	
  </head>

  <body>
  	<!-- .height-wrapper -->
	<div class="height-wrapper">
		
		<!-- header -->
		<header>
			<!-- tool bar -->
			<div id="header-toolbar" class="container-fluid">
				<!-- .contained -->
				<div class="contained">
					
					<!-- theme name -->
					<h1> <a href="${createLink(controller:'Home', action:'index')}" class="hidden-xs">
					<img src="${request.contextPath}/jarvis/img/logo/H.E.R.O.Expert-01.png" alt="H.E.R.O Expert"  width="170" height="35" border="0"/>
					</a> </h1>
					<!-- end theme name -->
					
					<!-- span4 -->
					<div class="pull-right">
						<!-- demo theme switcher-->
						<div id="theme-switcher" class="btn-toolbar">
							
							<!-- search and log off button for phone devices -->
							<div class="btn-group pull-right visible-xs">
								<a href="javascript:void(0)" class="btn btn-inverse btn-sm"><i class="icon-search"></i></a>
								<a href="${request.contextPath}/jarvis/login.html" class="btn btn-inverse btn-sm"><i class="icon-off"></i></a>
							</div>
							<!-- end buttons for phone device -->
							
							<!-- dropdown mini-inbox--
							<div class="btn-group">
								<!-- new mail ticker -
								<a href="javascript:void(0)" class="btn btn-sm btn-inverse dropdown-toggle" data-toggle="dropdown">
									<span class="mail-sticker">3</span>
									<i class="cus-email"></i>
								</a>
								-- end new mail ticker -->
								
								<!-- email lists --
								<div class="dropdown-menu toolbar pull-right">
									<h3>Invoice</h3>
									<ul id="mailbox-slimscroll-js" class="mailbox">
										<li>
											<a href="javascript:void(0)" class="unread">
												<img src="${request.contextPath}/jarvis/img/email-important.png" alt="important mail">
												From: David Simpson
												<i class="icon-paper-clip"></i>
												<span>Dear Victoria, Congratulations! Your work has been uploaded to wrapbootstrap.com...</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" class="unread attachment">
												
												<img src="${request.contextPath}/jarvis/img/email-unread.png" alt="important mail">
												Re:Last Year sales
												<i class="icon-paper-clip"></i>
												<span>Hey Vicky, find attached! Thx :-)</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" class="unread">
												<img src="${request.contextPath}/jarvis/img/email-unread.png" alt="important mail">
												Company Party
												<i class="icon-paper-clip"></i>
												<span>Hi, You have been cordially invited to join new year after party.</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" class="read">
												<img src="${request.contextPath}/jarvis/img/email-read.png" alt="important mail">
												RE: 2 Bugs found...
												<i class="icon-paper-clip"></i>
												<span>I have found two more bugs in this your beta version, maybe its not working...</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" class="read">
												<img src="${request.contextPath}/jarvis/img/email-read.png" alt="important mail">
												2 Bugs found...
												<i class="icon-paper-clip"></i>
												<span>Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales.</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" class="read">
												<img src="${request.contextPath}/jarvis/img/email-read.png" alt="important mail">
												Welcome to Jarvis!
												<i class="icon-paper-clip"></i>
												<span>Feugiat a, tellus. Phasellus viverra nulla ut metus varius. Quisque rutrum. Aenean imperdiet... </span>
											</a>
										</li>
									</ul>
									<a href="javascript:void(0);" id="go-to-inbox">Go to Invoices <i class="icon-double-angle-right"></i></a>
								</div>
								-- end email lists --
							</div>
							-- end dropdown mini-inbox-->
							
							<!-- Tasks --
							<div class="btn-group hidden-xs">
								<a href="javascript:void(0)" class="btn btn-inverse btn-sm">My Tasks</a>
								<a href="javascript:void(0)" class="btn btn-inverse dropdown-toggle btn-sm" data-toggle="dropdown"><span class="caret"></span></a>
					
								<div class="dropdown-menu toolbar pull-right">
									<h3>Showing All Tasks</h3>
									<ul class="progressbox">
						                <li>
						                    <strong><i class="online pull-left"></i>Urgent Bug Fixes</strong><b>Complete</b>
						                    <div class="progress progress-success slim"><div class="bar" style="width: 100%;"></div></div>
						                </li>
						                <li>
						                    <strong>Added functionality</strong><b>70%</b>
						                    <div class="progress progress-info slim"><div class="bar" style="width: 70%;"></div></div>
						                </li>
						                <li>
						                    <strong>CAD Changes</strong><b>50%</b>
						                    <div class="progress progress-info slim"><div class="bar" style="width: 50%;"></div></div>
						                </li>
						                <li>
						                    <strong>Marketing Campaign Mocup</strong><b>22%</b>
						                    <div class="progress progress-danger slim"><div class="bar" style="width: 22%;"></div></div>
						                </li>
						                <li>
						                    <strong><i class="offline pull-left"></i>Proposal</strong><b>Pending</b>
						                    <div class="progress progress-info slim"><div class="bar" style="width: 0%;"></div></div>
						                </li>
						            </ul>
								</div>

							</div>
							-- end Tasks -->
							
							<!-- theme dropdown -->
							<div class="btn-group hidden-xs">
								<!--  a href="javascript:void(0)" class="btn btn-sm btn-inverse" id="reset-widget"><i class="icon-refresh"></i></a-->
								<a href="javascript:void(0)" class="btn btn-sm btn-inverse  dropdown-toggle" data-toggle="dropdown"> <i class="icon-user  icon-white"></i>   <shiro:principal/>    <span class="caret">        </span></a>
								<ul id="user" class="dropdown-menu toolbar pull-right">
									<li>
										<a href="${createLink(controller:'Auth', action:'updatePassword')}"><i class="icon-wrench  icon-white"></i>     Change Password</a>
									</li>
									<li>
										<a href="${createLink(controller:'Auth', action:'signOut')}"><i class="icon-off  icon-white"></i>     Logout</a>
									</li>
									
								</ul>
							</div>
							<!-- end theme dropdown-->
							
						</div>
					  	<!-- end demo theme switcher-->
					</div>
					<!-- end span4 -->
				</div>
				<!-- end .contained -->
			</div>
			<!-- end tool bar -->
			
		</header>
		<!-- end header -->
		
	    <div id="main" role="main" class="container-fluid">
			<div class="contained">
				<!-- aside -->	
				<aside>	
					
					<!-- search box -->
					<!--div class="main-search">
						<label for="main-search"><i class="icon-search"></i></label>
	                    <input id="main-search" type="text" placeholder="Search..." />
                	</div>
					<div class="divider"></div-->
					<!-- end search box -->
										
					<!-- aside item: Mini profile -->
					<div class="my-profile">
						<a href="javascript:void(0)" class="my-profile-pic">
						<g:set var="userID" value="${ShiroUser.findByUsername(SecurityUtils.subject?.principal).id}" />
						<g:set var="hasImage" value="${ShiroUser.findByUsername(SecurityUtils.subject?.principal).image}" />
							<g:if test="${hasImage}">
								<img src="${createLink(controller:'shiroUser', action:'viewImage', id:userID)}" width="38" height="38" />
							</g:if>
							<!--img src="${request.contextPath}/jarvis/img/avatar/avatar_0.jpg" alt="" /-->
						</a>
						<span class="first-child">Welcome  <strong> <shiro:principal/> <!-- g:message code="${flash.message}" args="${flash.args}" default="${flash.default}"/ --> !</strong></span>
						
					</div>
					<div class="divider"></div>
					<!-- end aside item: Mini profile -->

					<!-- aside item: Menu -->
					<div class="sidebar-nav-fixed">
						
						<ul class="menu" id="accordion-menu-js">
							<li class="">
								<a href="${createLink(controller:'Home', action:'index')}"><i class="icon-home"></i>Dashboard</a>
							</li>						
						
							<li class="">
								<a href="${createLink(controller:'ExpenseInvoice', action:'index')}"><i class="icon-envelope"></i>Invoices</a>
							</li>
							
							<li class="">
								<a href="javascript:void(0)"><i class="icon-briefcase"></i>OCC &amp; Rev<span class="badge">3</span></a>
								<ul>
									<li>
										<a href="${createLink(controller:'DailyOccupancy', action:'index')}">${message(code: 'dailyOccupancy.label', default: 'Daily Occupancy')}</a>
									</li>
									<li>
										<a href="${createLink(controller:'DailyRevenue', action:'index')}">${message(code: 'dailyRevenue.label', default: 'Daily Revenue')}</a>
									</li>
									<li>
										<a href="${createLink(controller:'RevenueDetail', action:'index')}">${message(code: 'revenueDetail.label', default: 'Revenue Detail')}</a>
									</li>
								</ul>
							</li>
							
							<!-- li class="">
								<a href="javascript:void(0)"><i class="icon-signal"></i>Reports<span class="badge">3</span></a>
								<ul>
									<li>
										<a href="${request.contextPath}/jarvis/interface.html">Interface Elements</a>
									</li>
									<li>
										<a href="${request.contextPath}/jarvis/buttons.html">Buttons &amp; Icons</a>
									</li>
									<li>
										<a href="${request.contextPath}/jarvis/tables.html">Tables</a>
									</li>
								</ul>
							</li-->
							<li class="">
								<a href="javascript:void(0)"><i class="icon-check"></i>Configuration<span class="badge">6</span></a>
								<ul>
									<li>
										<a href="${createLink(controller:'ExpenseCategory', action:'index')}">${message(code: 'expenseCategory.label', default: 'ExpenseCategory')}</a>
									</li>
									<li>
										<a href="${createLink(controller:'ExpenseType', action:'index')}">${message(code: 'expenseType.label', default: 'ExpenseTypes')}</a>
									</li>
									<li>
										<a href="${createLink(controller:'PaymentType', action:'index')}">${message(code: 'paymentType.label', default: 'PaymentTypes')}</a>
									</li>
									<li>
										<a href="${createLink(controller:'Vendor', action:'index')}">${message(code: 'vendor.label', default: 'Vendor')}</a>
									</li>
									<li>
										<a href="${createLink(controller:'RevenueType', action:'index')}">${message(code: 'revenueType.label', default: 'RevenueType')}</a>
									</li>
									<shiro:hasRole name="administrator">
									<li>
										<a href="${createLink(controller:'Hotel', action:'index')}">${message(code: 'Hotel.label', default: 'Hotel')}</a>
									</li>
									</shiro:hasRole>
									
								</ul>
							</li>
							
							<shiro:hasRole name="administrator">
							<li class="">
								<a href="javascript:void(0)"><i class="icon-user"></i>User<span class="badge">2</span></a>
								<ul>
									<li>
										<a href="${createLink(controller:'ShiroUser', action:'index')}">${message(code: 'ShiroUser.label', default: 'User')}</a>
									</li>
									<li>
										<a href="${createLink(controller:'ShiroRole', action:'index')}">${message(code: 'ShiroRole.label', default: 'Profile')}</a>
									</li>
								</ul>
							</li>
							
							<li class="">
								<a href="${createLink(controller:'Audit', action:'index')}"><i class="icon-list-alt"></i>Audit</a>
							</li>	
							
							
							
							</shiro:hasRole> 
							
						</ul>
						
					</div>
					<div class="divider"></div>
					<!-- end aside item: Menu -->
					

					<!-- aside buttons --
					<div class="aside-buttons">
		                <a href="javascript:void(0);" title="" class="btn btn-info">Add new table</a>
		                <a href="javascript:void(0);" title="" class="btn btn-success">Add a new row</a>
		                <a href="javascript:void(0);" title="" class="btn btn-warning">Update table</a>
		                <a href="javascript:void(0);" title="" class="btn btn-danger">Delete Table</a>
		            </div>
		            <div class="divider"></div>
		            -- end aside buttons -->
					
				</aside>
				<!-- aside end -->
				
				<!-- main content -->
				<div class="no-right-bar">
				<div id="page-content">
					<g:layoutBody/>
				</div>
				</div>
				<!-- end main content -->
			

			</div>
			
	    </div><!--/.fluid-container-->
		<div class="push"></div>
	</div>
	<!-- end .height-wrapper -->	
	
	<!-- footer -->
	
	<!-- if you like you can insert your footer here -->
	
	<!-- end footer -->

    <!--================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="${request.contextPath}/jarvis/js/libs/jquery.min.js"><\/script>')</script>
    	<!-- OPTIONAL: Use this migrate script for plugins that are not supported by jquery 1.9+ 
		<script src="${request.contextPath}/jarvis/js/libs/jquery.migrate-1.0.0.min.js"></script>-->
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
    <script>window.jQuery.ui || document.write('<script src="${request.contextPath}/jarvis/js/libs/jquery.ui.min.js"><\/script>')</script>
    
    <!-- IMPORTANT: Jquery Touch Punch is always placed under Jquery UI -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.ui.touch-punch.min.js"></script>
    
    <!-- REQUIRED: Mobile responsive menu generator -->
	<script src="${request.contextPath}/jarvis/js/include/selectnav.min.js"></script>

	<!-- REQUIRED: Datatable components -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.accordion.min.js"></script>

	<!-- REQUIRED: Toastr & Jgrowl notifications  -->
    <script src="${request.contextPath}/jarvis/js/include/toastr.min.js"></script>
    <script src="${request.contextPath}/jarvis/js/include/jquery.jgrowl.min.js"></script>
    
    <!-- REQUIRED: Sleek scroll UI  -->
    <script src="${request.contextPath}/jarvis/js/include/slimScroll.min.js"></script>
	
	<!-- REQUIRED: Datatable components -->
	<script src="${request.contextPath}/jarvis/js/include/jquery.dataTables.min.js"></script>
	<script src="${request.contextPath}/jarvis/js/include/DT_bootstrap.js"></script>

    <!-- REQUIRED: Form element skin  -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.uniform.min.js"></script> 

	<!-- REQUIRED: AmCharts  -->
    <script src="${request.contextPath}/jarvis/js/include/amchart/amcharts.js"></script>
	<script src="${request.contextPath}/jarvis/js/include/amchart/amchart-draw1.js"></script>
	
	<!-- REQUIRED: Application Main JAVASCRIPT -->
    <script src="${request.contextPath}/js/application.js"></script>

	<script type="text/javascript">
		var ismobile = (/iphone|ipad|ipod|android|blackberry|mini|windows\sce|palm/i.test(navigator.userAgent.toLowerCase()));	
	    if(!ismobile){
	    	
	    	/** ONLY EXECUTE THESE CODES IF MOBILE DETECTION IS FALSE **/
	    	
	    	/* REQUIRED: Datatable PDF/Excel output componant */
	    	
	    	document.write('<script src="${request.contextPath}/jarvis/js/include/ZeroClipboard.min.js"><\/script>');
	    	document.write('<script src="${request.contextPath}/jarvis/js/include/TableTools.min.js"><\/script>');
	    	document.write('<script src="${request.contextPath}/jarvis/js/include/select2.min.js"><\/script>');
	    	document.write('<script src="${request.contextPath}/jarvis/js/include/jquery.excanvas.min.js"><\/script>');
	    	document.write('<script src="${request.contextPath}/jarvis/js/include/jquery.placeholder.min.js"><\/script>');

	    }else{
	    	
	    	/** ONLY EXECUTE THESE CODES IF MOBILE DETECTION IS TRUE **/

	    	document.write('<script src="${request.contextPath}/jarvis/js/include/responsive-tables.min.js"><\/script>');
	    }

    	document.write('<script src="${request.contextPath}/jarvis/js/include/ZeroClipboard.min.js"><\/script>');
    	document.write('<script src="${request.contextPath}/jarvis/js/include/TableTools.min.js"><\/script>');
    	document.write('<script src="${request.contextPath}/jarvis/js/include/select2.min.js"><\/script>');
    	document.write('<script src="${request.contextPath}/jarvis/js/include/jquery.excanvas.min.js"><\/script>');
    	document.write('<script src="${request.contextPath}/jarvis/js/include/jquery.placeholder.min.js"><\/script>');
	    
	</script>

	<!-- REQUIRED: iButton -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.ibutton.min.js"></script>
	
	<!-- REQUIRED: Justgage animated charts -->
	<script src="${request.contextPath}/jarvis/js/include/raphael.2.1.0.min.js"></script>
    <script src="${request.contextPath}/jarvis/js/include/justgage.min.js"></script>
    
    <!-- REQUIRED: Morris Charts -->
    <script src="${request.contextPath}/jarvis/js/include/morris.min.js"></script> 
    <script src="${request.contextPath}/jarvis/js/include/morris-chart-settings.js"></script> 
    
    <!-- REQUIRED: Animated pie chart -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.easy-pie-chart.min.js"></script>
    
    <!-- REQUIRED: Functional Widgets -->
    <script src="${request.contextPath}/jarvis/js/include/jarvis.widget.min.js"></script>
    <script src="${request.contextPath}/jarvis/js/include/mobiledevices.min.js"></script>
    <!-- DISABLED (only needed for IE7 <script src="${request.contextPath}/jarvis/js/include/json2.js"></script> -->
	
	<!-- REQUIRED: Full Calendar -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.fullcalendar.min.js"></script>		
    
    <!-- REQUIRED: Flot Chart Engine -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.flot.cust.min.js"></script>			
    <script src="${request.contextPath}/jarvis/js/include/jquery.flot.resize.min.js"></script>		
    <script src="${request.contextPath}/jarvis/js/include/jquery.flot.tooltip.min.js"></script>		
    <script src="${request.contextPath}/jarvis/js/include/jquery.flot.orderBar.min.js"></script> 	
    <script src="${request.contextPath}/jarvis/js/include/jquery.flot.fillbetween.min.js"></script>	
    <script src="${request.contextPath}/jarvis/js/include/jquery.flot.pie.min.js"></script> 	 
    
    <!-- REQUIRED: Sparkline Charts -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.sparkline.min.js"></script>

	<!-- REQUIRED: Infinite Sliding Menu (used with inbox page) -->
	<script src="${request.contextPath}/jarvis/js/include/jquery.inbox.slashc.sliding-menu.js"></script> 

	<!-- REQUIRED: Form validation plugin -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.validate.min.js"></script>
    
    <!-- REQUIRED: Progress bar animation -->
    <script src="${request.contextPath}/jarvis/js/include/bootstrap-progressbar.min.js"></script>
    
    <!-- REQUIRED: wysihtml5 editor -->
    <script src="${request.contextPath}/jarvis/js/include/wysihtml5-0.3.0.min.js"></script>
    <script src="${request.contextPath}/jarvis/js/include/bootstrap-wysihtml5.min.js"></script>

	<!-- REQUIRED: Masked Input -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.maskedinput.min.js"></script>
    
    <!-- REQUIRED: Bootstrap Date Picker -->
    <script src="${request.contextPath}/jarvis/js/include/bootstrap-datepicker.min.js"></script>

    <!-- REQUIRED: Bootstrap Wizard -->
    <script src="${request.contextPath}/jarvis/js/include/bootstrap.wizard.min.js"></script> 
    
	<!-- REQUIRED: Bootstrap Color Picker -->
    <script src="${request.contextPath}/jarvis/js/include/bootstrap-colorpicker.min.js"></script>

    
	<!-- REQUIRED: Bootstrap Time Picker -->
    <script src="${request.contextPath}/jarvis/js/include/bootstrap-timepicker.min.js"></script> 
    
    <!-- REQUIRED: Bootstrap Prompt -->
    <script src="${request.contextPath}/jarvis/js/include/bootbox.min.js"></script>
    
    
    <!-- REQUIRED: Bootstrap engine -->
    <script src="${request.contextPath}/jarvis/js/include/bootstrap.min.js"></script>
    
    
    
    <!-- DO NOT REMOVE: Theme Config file -->
    <script src="${request.contextPath}/jarvis/js/config.js"></script>
    
    <!-- d3 library placed at the bottom for better performance -->
    <!-- DISABLED  <script src="${request.contextPath}/jarvis/js/include/d3.v3.min.js"></script> -->
    <!-- DISABLED  <script src="${request.contextPath}/jarvis/js/include/adv_charts/d3-chart-1.js"></script> -->
    <!-- DISABLED  <script src="${request.contextPath}/jarvis/js/include/adv_charts/d3-chart-2.js"></script> -->

    <!-- Google Geo Chart -->
    <!-- DISABLED <script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script> -->
    <!-- DISABLED <script type='text/javascript' src='https://www.google.com/jsapi'></script>-->
    <!-- DISABLED <script src="${request.contextPath}/jarvis/js/include/adv_charts/geochart.js"></script> -->
    
    <!-- end scripts -->
    <!-- This is crazy -->
  </body>
</html>