<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="BaseParent.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Sri Ganapathy Enterprises! |</title>
<!-- jQuery -->

<c:set var="peNo" value="${peNo}"></c:set>
<script>
	$(function() {
		$('#vendorName')
				.typeahead(
						{
							source : function(query, process) {
								return $.ajax({
									url : 'vendorName',
									type : 'post',
									data : {
										name : query
									},
									dataType : 'json',
									success : function(result) {

										var resultList = result.map(function(
												item) {
											var aItem = {
												name : item.vendorName,
												address1 : item.address1,
												address2 : item.address2,
												mobile : item.mobile,
												email : item.email
											};
											return JSON.stringify(aItem);
										});

										return process(resultList);

									}
								});
							},

							matcher : function(obj) {
								var item = JSON.parse(obj);
								return ~item.name.toLowerCase().indexOf(
										this.query.toLowerCase())
							},

							sorter : function(items) {
								var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
								while (aItem = items.shift()) {
									var item = JSON.parse(aItem);
									if (!item.name.toLowerCase().indexOf(
											this.query.toLowerCase()))
										beginswith.push(JSON.stringify(item));
									else if (~item.name.indexOf(this.query))
										caseSensitive
												.push(JSON.stringify(item));
									else
										caseInsensitive.push(JSON
												.stringify(item));
								}

								return beginswith.concat(caseSensitive,
										caseInsensitive)

							},

							highlighter : function(obj) {
								var item = JSON.parse(obj);
								var query = this.query.replace(
										/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
								return item.name.replace(new RegExp('(' + query
										+ ')', 'ig'), function($1, match) {
									return '<strong>' + match + '</strong>'
								})
							},

							updater : function(obj) {
								var item = JSON.parse(obj);
								$('#autocomplete').attr('value', item.id);
								$('#address1').val(item.address1);
								$('#address2').val(item.address2);
								$('#email').val(item.email);
								$('#mobile').val(item.mobile);
								return item.name;
							}
						});
	});
</script>
<style>
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th,
	.table>thead>tr>td, .table>thead>tr>th {
	padding: 8px;
	line-height: 1.42857143;
	vertical-align: top;
	border-top: 0px solid #ddd;
	padding-right: 7px;
	text-align: center;
}

.form-field tr td input {
	padding: 0px;
}

.form-field tr td {
	padding: 0px;
}

.drop {
	diplay: none;
}

.drop:hover #child-show {
	display: block;
}

.x_panel {
	width: 100%;
	padding: 10px 17px;
	display: inline-block;
	background: dimgray;
	border: 1px solid #E6E9ED;
	-webkit-column-break-inside: avoid;
	-moz-column-break-inside: avoid;
	column-break-inside: avoid;
	opacity: 1;
	transition: all .2s ease;
}
</style>

<script>
	$(document).ready(function() {
		$("#sec").mouseover(function() {
			$("#child-show").css('display', 'block')
		});
		$("#sec").mouseout(function() {
			$("#child-show").css('display', 'none');
		});
	});
</script>

<script>
	$("document")
			.ready(
					function() {
						var i = 1;

						$('.addrow')
								.click(
										function() {

											$(".form-field")
													.append(
															'<tr id="remove_row"><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px; background: #fff;"><img src="/sge_services/resources/images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td></tr>');
											i++;
										});

					});

	$("document")
			.ready(
					function() {
						var i = 1;

						$('.addrow2')
								.click(
										function() {

											$(".add_table")
													.append(
															'<tr id="remove_row2"><td><input type="text" style="width:60px;"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff; text-align: center;"><img src="/sge_services/resources/images/cancel_tab.png" onclick="deleterow2()" style="width:18px;"></td></tr>');
											i++;
										});

					});

	$("document")
			.ready(
					function() {
						var i = 1;

						$('.addrow3')
								.click(
										function() {

											$(".add_table2")
													.append(
															'<tr id="remove_row3"><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff; text-align: center;"><img src="/resources/images/cancel_tab.png" onclick="deleterow3()" style="width:18px;"></td></tr>');
											i++;
										});

					});

	function deleterow3() {

		if ($(".add_table2 tr").length != 1) {
			$("#remove_row3").remove();
		} else {
			alert("You cannot delete first row");
		}
	}

	function deleterow2() {

		if ($(".add_table tr").length != 1) {
			$("#remove_row2").remove();
		} else {
			alert("You cannot delete first row");
		}
	}

	function deleterow() {

		if ($(".form-field tr").length != 1) {
			$("#remove_row").remove();
		} else {
			alert("You cannot delete first row");
		}
	}
</script>
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left"></div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										PURCHASE ENTRY <span class="levels">LEVEL 1</span>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
										<div class="col-md-3">
											<div class="box box-default">
												<div class="box-header with-border">
													<h3 class="box-title">Vendor Details</h3>
													<div class="box-tools pull-right">
														<button class="btn btn-box-tool" type="button" data-widget="collapse">
															<i class="fa fa-plus"></i>
														</button>
													</div>
													<!-- /.box-tools -->
												</div>
												<!-- /.box-header -->
												<div class="box-body">
													<div class="form-design">
														<table class="table">
															<tr>
																<td style="width: 13%; padding-right: 0px;">Vendor
																	Name</td>
																<td><input type="text" id="vendorName"></td>
																<td style="width: 9%;">P.E Date</td>
																<td><input type="text"></td>
																<td style="width: 13%; padding-right: 0px;">Vehicle
																	Mode</td>
																<td><input type="text"></td>
															</tr>
															<tr>
																<td style="padding-right: 0px;">Address</td>
																<td><input type="text" id="address1"></td>
																<td style="padding-right: 0px;">Address2</td>
																<td><input type="text" id="address2"></td>
																<td style="padding-right: 0px;">P.E No</td>
																<td><input type="text" value=${peNo}></td>
															</tr>
															<tr>
																<td style="padding-right: 0px;">Mobile 1</td>
																<td><input type="text" id="mobile"></td>
																<td style="padding-right: 0px;">Mail Id</td>
																<td><input type="text" id="email"></td>
																<td style="padding-right: 0px;">RTGS Det.</td>
																<td><input type="text"></td>
															</tr>
														</table>
													</div>
												</div>
												<!-- /.box-body -->
											</div>
											<!-- /.box -->
										</div>

										<div class="left-whole-design">
											<div class="form-design-first">
												<table class="table form-field">
													<tr>
														<th style="width: 13%;">Roman Letter</th>
														<th style="width: 16%;">Customer Name</th>
														<th>Project Name</th>
														<th>Delivery Place</th>
														<th>Item of Metal</th>
													</tr>
													<tr id="remove_row">
														<td style="padding: 0px;"><input type="text"></td>
														<td style="padding: 0px;"><input type="text"></td>
														<td style="padding: 0px;"><input type="text"></td>
														<td style="padding: 0px;"><input type="text"></td>
														<td style="padding: 0px;"><input type="text"></td>
													</tr>
												</table>
											</div>
											<div class="grid-view">
												<table class="add_table">
													<tr>
														<th style="width: 1%;"><img
															src="/sge_services/resources/images/Plus_Sign.png"
															class="addrow2" style="width: 21px;"></th>
														<th style="width: 60px;">S.No</th>
														<th style="width: 9%;">D.C Date</th>
														<!--<th style="width:9%;">Sales Date</th>-->
														<th>Customer MRN No</th>
														<th>Vehicle DC No</th>
														<th>Vehicle No</th>
														<th>UOM</th>
														<th>Qty</th>
														<th>Rate</th>
														<th style="width: 12%;">Amount</th>
														<th style="width: 12%;">P.O No</th>
													</tr>
													<tr id="remove_row2">
														<td><input type="text" style="width: 60px;"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
													</tr>
												</table>
											</div>
											<div class="total-pay">
												<table style="float: right; width: 44%;">
													<tr>
														<td class="tab_total">Total</td>
														<td><input type="text"
															style="border: none; text-align: center;" value="800.00"></td>
														<td><input type="text" style="border: none;"
															value="6,800.00"></td>
													</tr>

												</table>

											</div>
											<div class="whole-payment">
												<div class="grid-view-text">
													<table class="first-grid">
														<tr>
															<td class="left-grid">VAT @ <input type="text"
																style="width: 56px; color: #000;"></td>
															<td class="right-grid"><input type="text"></td>
														</tr>
														<tr>
															<td class="left-grid">CST @ <input type="text"
																style="width: 56px; color: #000;"></td>
															<td class="right-grid"><input type="text"></td>
														</tr>
														<tr>
															<td class="left-grid" style="margin-top: 7px;">Discount</td>
															<td class="right-grid"><input type="text"></td>
														</tr>
														<tr>
															<td class="left-grid" style="margin-top: 11px;">Round
																Off</td>
															<td class="right-grid"><input type="text"></td>
														</tr>
														<tr>
															<td style="margin-top: 13px;" class="left-grid">Net
																Amount</td>
															<td class="right-grid"><input type="text"></td>
														</tr>
														<tr>
															<td style="margin-top: 12px;" class="left-grid">Advance
																Amount</td>
															<td class="right-grid"><input type="text"></td>
														</tr>
														<tr>
															<td style="margin-top: 11px;" class="left-grid">Payment
																Amount</td>
															<td class="right-grid"><input type="text"></td>
														</tr>
														<tr>
															<td style="margin-top: 13px;" class="left-grid">Balance
																Amount</td>
															<td class="right-grid"><input type="text"></td>
														</tr>
													</table>
												</div>
											</div>

											<div class="bottom-table">
												<table>
													<tr>
														<td>Remarks</td>
														<td><input type="text" style="width: 419px;"></td>
														<td style="margin-left: 25px; padding-left: 7px;">Inv.No</td>
														<td><input type="text" style="width: 87px;"></td>
														<td style="padding-left: 10px;">Inv Date</td>
														<td style="padding-left: 5px;"><input type="text"
															style="width: 88px;"></td>
													</tr>
												</table>
											</div>
										</div>

										<div class="right-whole-design">
											<table>
												<tr>
													<td><button type="button" class="button">Save</button></td>
												</tr>
												<tr>
													<td><button type="button" class="button">Print</button></td>
												</tr>
												<tr>
													<td><button type="button" class="button">Add Products</button></td>
												</tr>
												<tr>
													<td><button type="button" class="button">Preview</button></td>
												</tr>
												<tr>
													<td><button type="button" class="button">Previous</button></td>
												</tr>
												<tr>
													<td><button type="button" class="button">Clear</button></td>
												</tr>
												<tr>
													<td><button type="button" class="button">Delete</button></td>
												</tr>
												<tr>
													<td><button type="button" class="button">Print Payment</button></td>
												</tr>
												<tr>
													<td><button type="button" class="button">Show Advance</button></td>
												</tr>
												<tr>
													<td><button type="button" class="button">Exit</button></td>
												</tr>
											</table>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>




					<!-- /page content -->

					<!-- footer content -->
					<footer>
					<div class="pull-right"></div>
					<div class="clearfix"></div>
					</footer>
					<!-- /footer content -->
				</div>
			</div>
</body>
</html>
