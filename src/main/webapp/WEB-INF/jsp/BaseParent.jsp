<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<spring:url value="/resources/vendors/jquery/dist/jquery.min.js"
			var="coreJs" />
		<script src="${coreJs}"></script>
		
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		
		 <spring:url value="/resources/vendors/bootstrap/dist/css/bootstrap.min.css" var="bootstrapCss" />
		<spring:url value="/resources/vendors/font-awesome/css/font-awesome.min.css" var="fontCss" />
		
		<spring:url value="/resources/vendors/nprogress/nprogress.css" var="nProgressCss" />
		<spring:url value="/resources/vendors/iCheck/skins/flat/green.css" var="iCheckCss" />
		
		<spring:url value="/resources/vendors/google-code-prettify/bin/prettify.min.css" var="prettifyCss" />
		<spring:url value="/resources/vendors/select2/dist/css/select2.min.css" var="select2Css" />
		
		<spring:url value="/resources/vendors/switchery/dist/switchery.min.css" var="switcheryCss" />
		<spring:url value="/resources/vendors/starrr/dist/starrr.css" var="starrrCss" />
		
		<spring:url value="/resources/vendors/bootstrap-daterangepicker/daterangepicker.css" var="datepickerCss" />
		<spring:url value="/resources/vendors/bootstrap/dist/css/typeaheadjs.css" var="typeaheadjsCss" />
		
		<spring:url value="/resources/css/custom.min.css" var="coreCss" />
		<spring:url value="/resources/css/style.css" var="styleCss" />
		
		
		<link href="${bootstrapCss}" rel="stylesheet" />
		<link href="${fontCss}" rel="stylesheet" />
		<link href="${nProgressCss}" rel="stylesheet" />
		<link href="${iCheckCss}" rel="stylesheet" />
		<link href="${prettifyCss}" rel="stylesheet" />
		<link href="${select2Css}" rel="stylesheet" />
		<link href="${switcheryCss}" rel="stylesheet" />
		<link href="${starrrCss}" rel="stylesheet" />
		<link href="${datepickerCss}" rel="stylesheet" />
		<link href="${typeaheadjsCss}" rel="stylesheet" />
		<link href="${coreCss}" rel="stylesheet" />
		<link href="${styleCss}" rel="stylesheet" />
		<link href="${AdminLTEminCss}" rel="stlyesheet"/>
		
		<spring:url value="/resources/vendors/bootstrap/dist/js/bootstrap.min.js" var="bootstrapJs" />
		<script src="${bootstrapJs}"></script>
		<spring:url value="/resources/vendors/fastclick/lib/fastclick.js" var="fastclickJs" />
		<script src="${fastclickJs}"></script>
		<spring:url value="/resources/vendors/nprogress/nprogress.js" var="nprogressJs" />
		<script src="${nprogressJs}"></script>
		<spring:url value="/resources/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js" var="bootstrapprogressJs" />
		<script src="${bootstrapprogressJs}"></script>
		<spring:url value="/resources/vendors/iCheck/icheck.min.js" var="icheckJs" />
		<script src="${icheckJs}"></script>
		<spring:url value="/resources/vendors/moment/min/moment.min.js" var="momentJs" />
		<script src="${momentJs}"></script>
		<spring:url value="/resources/vendors/bootstrap-daterangepicker/daterangepicker.js" var="datepickerJs" />
		<script src="${datepickerJs}"></script>
		<spring:url value="/resources/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js" var="bootstrapwysiwygJs" />
		<script src="${bootstrapwysiwygJs}"></script>
		<spring:url value="/resources/vendors/jquery.hotkeys/jquery.hotkeys.js" var="hotkeysJs" />
		<script src="${hotkeysJs}"></script>
		
		<spring:url value="/resources/vendors/google-code-prettify/src/prettify.js" var="prettifyJs" />
		<script src="${prettifyJs}"></script>
		<spring:url value="/resources/vendors/jquery.tagsinput/src/jquery.tagsinput.js" var="tagsinputJs" />
		<script src="${tagsinputJs}"></script>
		
		<spring:url value="/resources/vendors/switchery/dist/switchery.min.js" var="switcheryJs" />
		<script src="${switcheryJs}"></script>
		<spring:url value="/resources/vendors/select2/dist/js/select2.full.min.js" var="select2Js" />
		<script src="${select2Js}"></script>
		<spring:url value="/resources/vendors/parsleyjs/dist/parsley.min.js" var="parsleyJs" />
		<script src="${parsleyJs}"></script>
		<spring:url value="/resources/vendors/autosize/dist/autosize.min.js" var="autosizeJs" />
		<script src="${autosizeJs}"></script>
		<spring:url value="/resources/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js" var="autocompleteJs" />
		<script src="${autocompleteJs}"></script>
		<spring:url value="/resources/vendors/starrr/dist/starrr.js" var="starrrJs" />
		<script src="${starrrJs}"></script>
		<spring:url value="/resources/vendors/bootstrap/dist/js/bootstrap3-typeahead.js" var="typeaheadJs" />
		<script src="${typeaheadJs}"></script>
		<spring:url value="/resources/js/adminlte.min.js" var="adminlteminJs" />
		<script src="${adminlteminJs}"></script>
		<spring:url value="/resources/js/adminlte.demo.js" var="adminltedemoJs" />
		<script src="${adminltedemoJs}"></script>
		<script src="./resources/js/bootstrap-datepicker.js"></script>
		<script src="${bootstrapDatepickerJs}"></script>
	</head>
	<body>
	
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="#" class="site_title" style="font-size: 21px"><img
							src="resources/images/logo.png" style="width: 40px;"> <span>SRI
								GANAPATHY <br/>ENTERPRISES
						</span></a>
					</div>

					<div class="clearfix"></div>

					<br />
	
	<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>General</h3>
							<ul class="nav side-menu">
								<li id="wrapper"><a><i class="fa fa-home"></i> Home</a></li>
								<li class="drop"><a><i class="fa fa-edit"></i> Purchase
										<span class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="purchaseentryscreen">Purchase
												Entry Level 1</a></li>
										<li><a href="purchaseentryscreen2">Purchase
												Entry Level 2</a></li>
										<li><a href="crusher_entry.html">Crusher Entry</a></li>

									</ul></li>
								<li><a><i class="fa fa-desktop"></i> Sales Order <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="salesentry">Sales Entry</a></li>
									</ul></li>
								<li><a><i class="fa fa-clipboard"></i> Others <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="cash_bill.html">Cash Bill</a></li>
										<li><a href="advance_amt.html">Advance Amount</a></li>
										<li><a href="fuel.html">Fuel</a></li>
										<li><a href="quotation.html">Quotation</a></li>
										<li><a href="own_vehicle_detail.html">Own Vehicle
												Detail</a></li>
									</ul></li>
								<li id="sec"><a><i class="fa fa-table"></i> Master<span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" id="child-show">
										<li><a href="customermasterscreen">Customer Master</a></li>
										<li id="se"><a href="vendormaster">Vendor Master<span class="fa fa-chevron-down"></span>
										</a>
											<ul class="nav child_menu" id="child-shows">
												<li><a href="crusher_master.html">Crusher Master</a></li>
											</ul></li>
										<li><a href="Item_master.html">Item Master</a></li>
										<li><a href="site_master.html">Site Master</a></li>
										<li><a href="transport_master.html">Transport Master</a></li>
										<li><a href="unit_master.html">Unit Master</a></li>
									</ul></li>

								<li><a><i class="fa fa-clone"></i>Reports <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="sales_invoice_report.html">Material
												Delivery Details</a></li>
										<li><a href="purchases_entry_report.html">Purchase
												Details</a></li>
										<li><a href="sales_details_report.html">Sales Details</a></li>
										<li><a href="vehicle_and_crusher_report.html">Vehicle
												Wise</a></li>
										<li><a href="transport_wise_report.html">Transporter
												wise rental Details</a></li>
										<li><a href="sales_quantity_report.html">Sales
												Quantity</a></li>
										<li><a href="pe_bookwise.html">PE Bookwise</a></li>
										<li><a href="total_pe_report.html">Total PE Report</a></li>
										<li><a href="unbilled_dc_details.html">UnBilled DC</a></li>
										<li><a href="vehicle_measurement_report.html">Vehicle
												Measurement Details</a></li>
										<li><a href="purchase_and_sales_report.html">Purchase
												And Sales Report</a></li>
										<!--<li><a href="cash_bill.html">Cash Bill</a></li>-->
										<li><a href="#">Tally Export Report</a></li>
									</ul></li>
							</ul>
						</div>

					</div>
					<!-- /sidebar menu -->
					
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
							href="login.html"> <span class="glyphicon glyphicon-off"
							aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">
				<div class="nav_menu">
					<nav>
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a>
						</div>
						<div class="form-name">SRI GANAPATHY ENTERPRISES</div>

					</nav>
				</div>
			</div>
			<!-- /top navigation -->
					
	
	</body>
</html>