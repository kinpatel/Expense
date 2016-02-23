<!DOCTYPE html>
<html lang="en">
   <head>
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
	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/bootstrap.min.css">
<!--	<link rel="stylesheet" href="${request.contextPath}/jarvis/css/bootstrap-responsive.min.css?v=1">-->
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
	
	<!-- All javascripts are located at the bottom except for HTML5 Shim -->
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
   		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
   		<script src="${request.contextPath}/jarvis/js/include/respond.min.js"></script>
   	<![endif]-->
	
	<!-- For Modern Browsers -->
	<link rel="shortcut icon" href="${request.contextPath}/jarvis/img/favicons/logo.png">
	<!-- For everything else -->
	<link rel="shortcut icon" href="${request.contextPath}/jarvis/img/favicons/logo.ico">
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
				
					
					</a> 
					</h1>
					<!-- end theme name -->
					
					<!-- span4 -->
					<div class="pull-right">
						
					</div>
					<!-- end span4 -->
				</div>
				<!-- end .contained -->
			</div>
			<!-- end tool bar -->
			
		</header>
		<!-- end header -->	
			<div id="login-logo">
				
			</div>
			<div class="jarviswidget login">
				<header>
					<h2>HERO Login</h2>
				</header>
								
				<strong > <font color=red>${flash.message} </font></strong>			<br/>
					
					<!-- content goes here -->
					<div id="main-content">
						
						<form class="form-signin" id="target" action="signIn">
						<input type="hidden" name="targetUri" value="${targetUri}" />
							<div class="form-group">
								<!-- input type="text" class="input-block-level" autofocus placeholder="Username" value="Admin" -->
								<input type="text" autofocus placeholder="Username" name="username" onKeyPress="return submitenter(this,event)" value="${username}" >
							</div>
							<div class="form-group">
								<!-- input type="password" class="input-block-level" placeholder="Password" value="admin" -->
								<input type="password" placeholder="Password" name="password" onKeyPress="return submitenter(this,event)" value="" >
							</div>
							<div class="form-group">
							
							   <span>Remember me? </span>
								
								<input type="checkbox" id="optionsCheckbox-5" name="rememberMe" value="${rememberMe}">
								
								
													
								<a href="${createLink(controller:'Auth', action:'lostPassword')}">    Forgot Password?</a>
								
								
								
							</div>
							<div class="form-group no-border">
							
												
								<div style="text-align: right;">
									<input class="btn btn-primary" type="submit" value="Sign in" id="login-btn">
									
								</div> 
								
								
								
								
							</div>
						</form>
						
					</div>
					<!-- end content goes here -->
						
			</div>
		
	</div>
	<!-- end .height wrapper -->
	
	<!-- footer -->
	
	<!-- if you like you can insert your footer here -->
	
	<!-- end footer -->

    <!--================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="${request.contextPath}/jarvis/js/libs/jquery.min.js"><\/script>')</script>
    	<!-- OPTIONAL: Use this migrate script for plugins that are not supported by jquery 1.9+ -->
		<!-- DISABLED <script src="${request.contextPath}/jarvis/js/libs/jquery.migrate-1.0.0.min.js"></script> -->
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
	<script src="${request.contextPath}/jarvis/js/include/DT_bootstrap.min.js"></script>

    <!-- REQUIRED: Form element skin  -->
    <script src="${request.contextPath}/jarvis/js/include/jquery.uniform.min.js"></script>

	<!-- REQUIRED: AmCharts  -->
    <script src="${request.contextPath}/jarvis/js/include/amchart/amcharts.js"></script>
	<script src="${request.contextPath}/jarvis/js/include/amchart/amchart-draw1.js"></script>

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
	    	
			/** DEMO SCRIPTS **/
	       
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
  </body>
</html>

