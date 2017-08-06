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

	$("body")
			.on(
					"click",
					".customertypeahead",
					function() {
						var assigned_id = $(this).attr('id');
						$('#' + assigned_id)
								.typeahead(
										{
											source : function(query, process) {
												return $
														.ajax({
															url : 'customerName',
															type : 'post',
															data : {
																customerName : query
															},
															dataType : 'json',
															success : function(
																	result) {

																var resultList = result
																		.map(function(
																				item) {
																			var aItem = {
																				name : item.customerName
																			};
																			return JSON
																					.stringify(aItem);
																		});

																return process(resultList);

															}
														});
											},

											matcher : function(obj) {
												var item = JSON.parse(obj);
												return ~item.name
														.toLowerCase()
														.indexOf(
																this.query
																		.toLowerCase())
											},

											sorter : function(items) {
												var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
												while (aItem = items.shift()) {
													var item = JSON
															.parse(aItem);
													if (!item.name
															.toLowerCase()
															.indexOf(
																	this.query
																			.toLowerCase()))
														beginswith
																.push(JSON
																		.stringify(item));
													else if (~item.name
															.indexOf(this.query))
														caseSensitive
																.push(JSON
																		.stringify(item));
													else
														caseInsensitive
																.push(JSON
																		.stringify(item));
												}

												return beginswith.concat(
														caseSensitive,
														caseInsensitive)

											},

											highlighter : function(obj) {
												var item = JSON.parse(obj);
												var query = this.query
														.replace(
																/[\-\[\]{}()*+?.,\\\^$|#\s]/g,
																'\\$&')
												return item.name
														.replace(
																new RegExp('('
																		+ query
																		+ ')',
																		'ig'),
																function($1,
																		match) {
																	return '<strong>'
																			+ match
																			+ '</strong>'
																})
											},

											updater : function(obj) {
												var item = JSON.parse(obj);
												return item.name;
											}
										});
					});

	$("body")
			.on(
					"click",
					".deliverytypeahead",
					function() {

						var assigned_id = $(this).attr('id');

						var lastChar = assigned_id[assigned_id.length - 1];

						$('#' + assigned_id)
								.typeahead(
										{
											source : function(query, process) {
												return $
														.ajax({
															url : 'deliveryPlace',
															type : 'post',
															data : {
																customerName : $(
																		'#customerName'
																				+ lastChar)
																		.val(),
																deliveryPlace : query
															},
															dataType : 'json',
															success : function(
																	result) {

																var resultList = result
																		.map(function(
																				item) {
																			var aItem = {
																				name : item.siteName
																			};
																			return JSON
																					.stringify(aItem);
																		});

																return process(resultList);

															}
														});
											},

											matcher : function(obj) {
												var item = JSON.parse(obj);
												return ~item.name
														.toLowerCase()
														.indexOf(
																this.query
																		.toLowerCase())
											},

											sorter : function(items) {
												var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
												while (aItem = items.shift()) {
													var item = JSON
															.parse(aItem);
													if (!item.name
															.toLowerCase()
															.indexOf(
																	this.query
																			.toLowerCase()))
														beginswith
																.push(JSON
																		.stringify(item));
													else if (~item.name
															.indexOf(this.query))
														caseSensitive
																.push(JSON
																		.stringify(item));
													else
														caseInsensitive
																.push(JSON
																		.stringify(item));
												}

												return beginswith.concat(
														caseSensitive,
														caseInsensitive)

											},

											highlighter : function(obj) {
												var item = JSON.parse(obj);
												var query = this.query
														.replace(
																/[\-\[\]{}()*+?.,\\\^$|#\s]/g,
																'\\$&')
												return item.name
														.replace(
																new RegExp('('
																		+ query
																		+ ')',
																		'ig'),
																function($1,
																		match) {
																	return '<strong>'
																			+ match
																			+ '</strong>'
																})
											},

											updater : function(obj) {
												var item = JSON.parse(obj);
												return item.name;
											}
										});
					});

	$("body")
			.on(
					"click",
					".itemtypeahead",
					function() {

						var assigned_id = $(this).attr('id');
						$('#' + assigned_id)
								.typeahead(
										{
											source : function(query, process) {
												return $
														.ajax({
															url : 'itemDetail',
															type : 'post',
															data : {
																itemName : query
															},
															dataType : 'json',
															success : function(
																	result) {

																var resultList = result
																		.map(function(
																				item) {
																			var aItem = {
																				name : item.itemName
																			};
																			return JSON
																					.stringify(aItem);
																		});

																return process(resultList);

															}
														});
											},

											matcher : function(obj) {
												var item = JSON.parse(obj);
												return ~item.name
														.toLowerCase()
														.indexOf(
																this.query
																		.toLowerCase())
											},

											sorter : function(items) {
												var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
												while (aItem = items.shift()) {
													var item = JSON
															.parse(aItem);
													if (!item.name
															.toLowerCase()
															.indexOf(
																	this.query
																			.toLowerCase()))
														beginswith
																.push(JSON
																		.stringify(item));
													else if (~item.name
															.indexOf(this.query))
														caseSensitive
																.push(JSON
																		.stringify(item));
													else
														caseInsensitive
																.push(JSON
																		.stringify(item));
												}

												return beginswith.concat(
														caseSensitive,
														caseInsensitive)

											},

											highlighter : function(obj) {
												var item = JSON.parse(obj);
												var query = this.query
														.replace(
																/[\-\[\]{}()*+?.,\\\^$|#\s]/g,
																'\\$&')
												return item.name
														.replace(
																new RegExp('('
																		+ query
																		+ ')',
																		'ig'),
																function($1,
																		match) {
																	return '<strong>'
																			+ match
																			+ '</strong>'
																})
											},

											updater : function(obj) {
												var item = JSON.parse(obj);
												return item.name;
											}
										});
					});
</script>


<script>
	$(document)
			.ready(
					function() {
						$("#savePurchaseEntry")
								.click(
										function(event) {

											var data = {};

											var romanSize = 1;

											romanSize = $("#romanValue").val();

											//alert(romanSize);

											var purchaseVendorModel = {};
											var purchaseCustomer = {};
											var purchaseCustomerList = new Array();
											var purchaseDC = {};
											var purchaseDCDetails = new Array();
											var purchasePaymentDetails = {};
											var siteDetails1 = {};
											var siteDetails2 = {};

											purchaseVendorModel["vendorName"] = $(
													"#vendorName").val();
											purchaseVendorModel["rtgsDetail"] = $(
													"#rtgsDetail").val();
											purchaseVendorModel["purchaseDate"] = $(
													"#purchaseDate").val();
											purchaseVendorModel["purchaseNo"] = $(
													"#purchaseNo").val();
											purchaseVendorModel["poNo"] = $(
													"#poNo").val();

											var i = 1;
											var k = 0;

											for (i = 0; i != romanSize; i++) {

												k = i + 1;
												purchaseCustomer["contactName"] = $(
														"#customerName" + k)
														.val();
												purchaseCustomer["deliveryPlace"] = $(
														"#deliveryPlace" + k)
														.val();
												purchaseCustomer["itemOfModel"] = $(
														"#itemOfModel" + k)
														.val();

												purchaseDC["dcDate"] = $(
														"#dcDate" + k).val();
												purchaseDC["customerMRNNo"] = $(
														"#customerMRNNo" + k)
														.val();
												purchaseDC["vehicleDCNo"] = $(
														"#vehicleDCNo" + i)
														.val();
												purchaseDC["uom"] = $(
														"#uom" + k).val();
												purchaseDC["rate"] = $(
														"#rate" + k).val();
												purchaseDC["amount"] = $(
														"#amount" + k).val();
												purchaseDC["contactName"] = $(
														"#customerName" + k)
														.val();

												purchaseCustomerList
														.push(purchaseCustomer);
												purchaseDCDetails
														.push(purchaseDC);
											}

											purchasePaymentDetails["paymentDate"] = $(
													"#paymentDate").val();
											purchasePaymentDetails["paymentMode"] = $(
													"#paymentMode").val();
											purchasePaymentDetails["amount"] = $(
													"#amount").val();
											purchasePaymentDetails["voucherNo"] = $(
													"#voucherNo").val();
											purchasePaymentDetails["receiverName"] = $(
													"#receiverName").val();
											purchasePaymentDetails["receiverMobileNo"] = $(
													"#receiverMobileNo").val();
											purchasePaymentDetails["ChequeRTGSNo"] = $(
													"#ChequeRTGSNo").val();
											purchasePaymentDetails["chequeDate"] = $(
													"#chequeDate").val();
											purchasePaymentDetails["neft"] = $(
													"#neft").val();

											purchasePaymentDetails["bankName"] = $(
													"#bankName").val();
											purchasePaymentDetails["accountNo"] = $(
													"#accountNo").val();
											purchasePaymentDetails["remarks"] = $(
													"#remarks").val();
											purchasePaymentDetails["vat"] = $(
													"#vat").val();
											purchasePaymentDetails["gst"] = $(
													"#gst").val();
											purchasePaymentDetails["discount"] = $(
													"#discount").val();
											purchasePaymentDetails["roundOff"] = $(
													"#roundOff").val();

											purchasePaymentDetails["netAmount"] = $(
													"#netAmount").val();
											purchasePaymentDetails["advanceAmount"] = $(
													"#advanceAmount").val();
											purchasePaymentDetails["paidAmount"] = $(
													"#paidAmount").val();
											purchasePaymentDetails["BalanceAmount"] = $(
													"#BalanceAmount").val();
											purchasePaymentDetails["invNo"] = $(
													"#invNo").val();
											purchasePaymentDetails["invDate"] = $(
													"#invDate").val();
											purchasePaymentDetails["invRemarks"] = $(
													"#invRemarks").val();

											data["purchaseVendorModel"] = purchaseVendorModel;
											data["purchaseCustomerList"] = purchaseCustomerList;
											data["purchaseDCDetails"] = purchaseDCDetails;
											data["purchasePaymentDetails"] = purchasePaymentDetails;

											$
													.ajax({
														type : "POST",
														contentType : "application/json",
														url : "purchaseentrysubmit",
														data : JSON
																.stringify(data),
														dataType : 'json',
														timeout : 600000,
														success : function(data) {
															$("#btn-update")
																	.prop(
																			"disabled",
																			false);
															if (data.customerAdded == true) {
																alert("success");
															} else {
																alert("error");

															}

															//...
														},
														error : function(e) {
															$("#btn-save")
																	.prop(
																			"disabled",
																			false);
															//...
														}
													});

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



.col-md-3 {
    width: 82%;
}


div.box {
    height: 219px;
    padding: 10px;
    overflow: auto;
    border: 1px #696969;
    background-color: #696969;
}


.left-whole-design {
    width: 86%;
    height: auto;
    float: left;
    position: relative;
    bottom: -15px;
}

h3 {
font-family: Verdana;
color: #f5f5f5;
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
	$(document).ready(function() {
		$("#se").mouseover(function() {
			$("#child-shows").css('display', 'block')
		});
		$("#se").mouseout(function() {
			$("#child-shows").css('display', 'none');
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
															'<tr><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px; background: #fff;"><img src="images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td></tr>');

											/*  $(".innertable1").append('<tr><td colspan="5" style="padding: 0px;border: none;"><div style="width:100%; margin: 0px;padding: 0px;border: 0px solid #919b9c;width: 100%; height: 250px;text-align: left;overflow: auto;font-size: 12px;"><table class="table innertable1" style="border: none;"><tr><td width="3%" style="padding: 0px;"></td><td width="25%" style="padding: 0px;"><select class="input"  name="siteallocation[${status.index}].category" id="${status.index}category" value="" style="border: none;" onchange="changeItem(${status.index})"><option value="">Select</option><c:forEach var="categoryList" items="${map.categoryList}"><option>${categoryList.category_name}</option></c:forEach></select></td><td width="25%" style="padding: 0px;"><select class="input"   name="siteallocation[${status.index}].item"     id="item${status.index}" value="" style="border: none;"><option>Select</option></select></td><td width="25%" style="padding: 0px;"><input type="text" class="input" placeholder="Quantity"  name="siteallocation[${status.index}].qty" value="" style="border: none;"></td><td width="3%" style="padding: 0px;text-align: center;"><a href="#" class="input"><img src="images/cancel.png" width=18 class="cancelbtn" style="cursor: pointer;" onclick="deleterow1()"></a></td></tr></table></div></td></tr>'); */

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
															'<tr id="remove_row1"><td><input type="text" style="width:60px;"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff; text-align: center;"><img src="images/cancel_tab.png" onclick="deleterow2()" style="width:18px;"></td></tr>');

											/*  $(".innertable1").append('<tr><td colspan="5" style="padding: 0px;border: none;"><div style="width:100%; margin: 0px;padding: 0px;border: 0px solid #919b9c;width: 100%; height: 250px;text-align: left;overflow: auto;font-size: 12px;"><table class="table innertable1" style="border: none;"><tr><td width="3%" style="padding: 0px;"></td><td width="25%" style="padding: 0px;"><select class="input"  name="siteallocation[${status.index}].category" id="${status.index}category" value="" style="border: none;" onchange="changeItem(${status.index})"><option value="">Select</option><c:forEach var="categoryList" items="${map.categoryList}"><option>${categoryList.category_name}</option></c:forEach></select></td><td width="25%" style="padding: 0px;"><select class="input"   name="siteallocation[${status.index}].item"     id="item${status.index}" value="" style="border: none;"><option>Select</option></select></td><td width="25%" style="padding: 0px;"><input type="text" class="input" placeholder="Quantity"  name="siteallocation[${status.index}].qty" value="" style="border: none;"></td><td width="3%" style="padding: 0px;text-align: center;"><a href="#" class="input"><img src="images/cancel.png" width=18 class="cancelbtn" style="cursor: pointer;" onclick="deleterow1()"></a></td></tr></table></div></td></tr>'); */

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
															'<tr id="remove_row3"><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff; text-align: center;"><img src="images/cancel_tab.png" onclick="deleterow3()" style="width:18px;"></td></tr>');

											/*  $(".innertable1").append('<tr><td colspan="5" style="padding: 0px;border: none;"><div style="width:100%; margin: 0px;padding: 0px;border: 0px solid #919b9c;width: 100%; height: 250px;text-align: left;overflow: auto;font-size: 12px;"><table class="table innertable1" style="border: none;"><tr><td width="3%" style="padding: 0px;"></td><td width="25%" style="padding: 0px;"><select class="input"  name="siteallocation[${status.index}].category" id="${status.index}category" value="" style="border: none;" onchange="changeItem(${status.index})"><option value="">Select</option><c:forEach var="categoryList" items="${map.categoryList}"><option>${categoryList.category_name}</option></c:forEach></select></td><td width="25%" style="padding: 0px;"><select class="input"   name="siteallocation[${status.index}].item"     id="item${status.index}" value="" style="border: none;"><option>Select</option></select></td><td width="25%" style="padding: 0px;"><input type="text" class="input" placeholder="Quantity"  name="siteallocation[${status.index}].qty" value="" style="border: none;"></td><td width="3%" style="padding: 0px;text-align: center;"><a href="#" class="input"><img src="images/cancel.png" width=18 class="cancelbtn" style="cursor: pointer;" onclick="deleterow1()"></a></td></tr></table></div></td></tr>'); */

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

<script>
	$("document")
			.ready(
					function() {
						var n = 2;
						var j = $('.append_div tr').length;
						k = 2;
						$('#add_roman')
								.click(
										function() {

											$(".append_div")
													.append(
															'<tr id="roman_inc'+j+'"><td><div class="form-design-first"><table id="purchase_tab1"><tr><th style="padding: 8px;">Roman Letter</th></tr><tr><td style="padding:0px;"><input type="text" value="'+k+'" readonly></td></tr></table><table class="table form-field" id="tabs_entry1"><tr><th style="width: 28%;">Customer Name</th><th style="width: 28%;">City Name</th><th>Delivery Place</th><th>Item of Metal</th></tr><tr id="remove_row"><td style="padding:0px;"><input type="text" id="customerName'+k+'" name="customerName'+k+'"  tabindex="10" class="customertypeahead"></td><td style="padding:0px;"><input type="text" id="cityName'+k+'" name="cityName'+k+'"  tabindex="10" ></td><td style="padding:0px;"><input type="text" id="deliveryPlace'+k+'" name="deliveryPlace1'+k+'"  tabindex="11" class="deliverytypeahead"></td><td style="padding:0px;"><input type="text" name="itemOfMetal'+k+'" id="itemOfMetal'+k+'" class="itemtypeahead"></td></tr></table></div><div class="grid-view"><table class="add_table" id="multi_add'+n+'"><tr><th style="width:60px;">S.No</th><th style="width:9%;">D.C Date</th><th>Customer MRN No</th><th>Vehicle DC No</th><th>UOM</th><th>Qty</th><th>Rate</th><th style="width:12%;border:none;">Amount</th><th style="border:none;"></th></tr><tr id="remove_row_'+n+'"><td style="background: #fff; text-align: center;">1</td><td><input type="text" class="cFrom" onclick="check_date()" id="dcDate'
																	+ k
																	+ '" name="dcDate'
																	+ k
																	+ '"></td><td><input type="text" id="customerMRNNo'+k+'" name="customerMRNNo'+k+'"/></td><td><input type="text" id="vehicleDCNo'+k+'" name="vehicleDCNo'+k+'"/></td><td><input type="text" id="uom'+k+'" name="uom'+k+'"/></td><td><input type="text" id="quantity'+k+'" name="quantity'+k+'"/></td><td><input type="text" id="rate'+k+'" name="rate'+k+'"/></td><td><input type="text" id="amount'+k+'" name="amount'+k+'"/></td><td style="width: 1px;border: none;"><input type="text" name="phone_1" class="inputs lst" style="border-left: none;" id="phone_1" readonly/></td></tr></table></div><div class="total-pay"><table style="float:right; width:44%;"><tr><td class="tab_total">Total</td><td><input type="text" style="border:none; text-align: center;;" value="800.00"></td><td><input type="text" style="border:none;" value="6,800.00"></td></tr></table></div></td></tr>');

											$('#romanValue').val(k)

											$('.cFrom').datepicker({
												//format: "dd/mm/yyyy"

												format : "dd/mm/yyyy"

											});

											k++;
											n++
										});

					});
</script>
<script>
	
</script>

<!--<table class="add_table" id="multi_add'+s+'"><tr><th
  style="width:60px;">S.No</th><th style="width:9%;">D.C Date</th><th>Customer
  MRN No</th><th>Vehicle DC No</th><th>UOM</th><th>Qty</th><th>Rate</th><th
  style="width:12%;">Amount</th></tr><tr id="remove_row_'+i+'"><td
  style="background: #fff; text-align: center;">1</td><td><input type="text"
  id="cFrom_1"></td><td><input type="text"/></td><td><input
  type="text"/></td><td><input type="text"/></td><td><input
  type="text"/></td><td><input type="text"/></td><td><input type="text"
  name="phone_'+i+'" class="inputs lst" id="phone_'+i+'"/></td></tr></table>-->
<!--  <script type="text/javascript">
  k=1;
        var i = $('.add_table'+k+' tr').length;

$(document).on('keyup', '.lst', function(e) {
  
  var code = (e.keyCode ? e.keyCode : e.which);
  
  if (code == 13) {
    html = '<tr>';
    html += '<td style="background: #fff; text-align: center;">' + i + '</td>';
    html += '<td><input type="text" id="cFrom'+i+'"/></td>';
    html += '<td><input type="text"/></td>';
    html += '<td><input type="text"/></td>';
    html += '<td><input type="text"/></td>';
    html += '<td><input type="text"/></td>';
    html += '<td><input type="text"/></td>';
    html += '<td><input type="text" class="inputs lst" name="phone_' + i + '" id="phone_' + i + '" /></td>';
    html += '</tr>';
    $('.add_table').append(html);
    $(this).focus().select();
    i++;
     k++;
  }
 
});

$(document).on('keydown', '.inputs', function(e) {
  var code = (e.keyCode ? e.keyCode : e.which);
  if (code == 13) {
    var index = $('.inputs').index(this) + 1;
    $('.inputs').eq(index).focus();
  }
});
    </script>
-->
<script>
	function mobilenumber1() {

		var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
		var mobilephoneno = document.getElementById("mobilephoneno1");
		if (mobilephoneno.value.match(phoneno)) {
			// return true;
		} else {

			alert("Enter Correct Mobile Number1");
			document.getElementById("mobilephoneno1").value = "";
			//return false;
		}
	}
</script>

<script>
	function mobilenumber2() {

		var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
		var mobilephoneno2 = document.getElementById("mobilephoneno2");
		if (mobilephoneno2.value.match(phoneno)) {
			return true;
		} else {
			alert("Enter Correct Mobile Number2");
			document.getElementById("mobilephoneno2").value = "";
			return false;
		}
	}
</script>

<script>
	function validateEmail() {
		var mail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		var emailaddres = document.getElementById("emailaddres");
		if (emailaddres.value.match(mail)) {

		} else {
			alert("Enter Correct Email Address");
			document.getElementById("emailaddres").value = "";
		}
		return mail.test(email);
	}
</script>
</head>

<body class="nav-md">

	<script type="text/javascript">
		$(document)
				.ready(
						function() { // Will only run once the page Document Object Model (DOM) is ready for JavaScript code 
							// Create a jQuery object containing the html element 'input'
							// Create a .not() method to exclude buttons for keypress event
							$(":input:not(:disabled)")
									.not($(":button"))
									.keypress(
											function(evt) {
												// If the keypress event code is 13 (Enter)
												if (evt.keyCode == 13) {
													// get the attribute type and if the type is not submit
													itype = $(this)
															.prop('type');
													if (itype !== 'submit') {
														currentTabindex = $(
																this).attr(
																'tabindex');
														if (currentTabindex) {
															nextInput = $('input[tabindex^="'
																	+ (parseInt(currentTabindex) + 1)
																	+ '"]');
															if (nextInput.length) {
																nextInput
																		.focus();
																return false;
															}
														}
													}
												}
											});
						});
	</script>
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
									<h2 style="color: orangered; text-shadow: 1px 1px 1px #000;">
										PURCHASE ENTRY <span class="levels">LEVEL 1</span>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form id="demo-form2" data-parsley-validate
										class="form-horizontal form-label-left">
										<div class="col-md-3">
											<div class="box box-default collapsed-box">
												<div class="box-header with-border">
													<h3 class="box-title">Vendor Details</h3>
													<div class="box-tools pull-right">
														<button class="btn btn-box-tool" type="button"
															data-widget="collapse">
															<i class="fa fa-plus"></i>
														</button>
													</div>
													<!-- /.box-tools -->
												</div>
												<!-- /.box-header -->

												<div class="box-body" style="display: none;">
													<div class="left-whole-design">
														<div class="form-design">
															<table class="table" id="purchase_entry">
																<tr>
																	<td style="width: 13%; padding-right: 0px;">Vendor
																		Name</td>
																	<td><input type="text" tabindex="1"
																		id="vendorName" name="vendorName"></td>
																	<td style="padding-right: 0px; width: 10%;">RTGS
																		Details</td>
																	<td><input type="text" tabindex="9"
																		id="rtgsDetail" name="rtgsDetail"></td>


																	<td style="padding-right: 0px;">Mail Id</td>
																	<td><input type="text" tabindex="3"
																		onblur="validateEmail()" id="emailaddres"></td>



																</tr>

																<tr>

																	<td style="padding-right: 0px;">Mobile 1</td>
																	<td><input type="text" tabindex="4"
																		onblur="mobilenumber1()" id="mobilephoneno1"></td>
																	<td style="padding-right: 0px;">Mobile 2</td>
																	<td><input type="text" tabindex="5"
																		onblur="mobilenumber2()" id="mobilephoneno2"></td>


																	<td style="padding-right: 0px;">Adress</td>
																	<td><input type="text" tabindex="6" id="address1"></td>



																</tr>
																<tr>

																	<td style="width: 15%;">Purchase Date</td>
																	<td><input type="text" id="cTo1" tabindex="7"
																		name="purchaseDate"></td>

																	<td style="padding-right: 0px;">Purchase No.</td>
																	<td><input type="text" tabindex="7"
																		id="purchaseNo" name="purchaseNo" value=${peNo}></td>




																	<td style="width: 9%;">P.O No.</td>
																	<td><input type="text" tabindex="8" id="poNo"
																		name="poNo"></td>

																</tr>


															</table>


														</div>
													</div>
												</div>
											</div>
										</div>

										<input type="hidden" name="romanValue" id="romanValue"
											value="1">


                                     <div class="left-whole-design">
										<div class="whole-append">
											<table class="append_div">
												<tr id="roman_inc_1">
													<td>
														<div class="form-design-first">
															<table id="purchase_tab1">
																<tr>
																	<th style="padding: 8px;">Roman Letter</th>
																</tr>
																<tr>
																	<td style="padding: 0px;"><input type="text"
																		value="I" readonly></td>
																</tr>

															</table>
															<table class="table form-field" id="tabs_entry1">
																<tr>

																	<th style="width: 28%;">Customer Name</th>
																	<th>City Name</th>
																	<th>Delivery Place</th>
																	<th>Item of Metal</th>

																</tr>
																<tr id="remove_row">

																	<td style="padding: 0px;"><input type="text"
																		id="customerName1" name="customerName1"
																		class="customertypeahead" tabindex="10"></td>
																		<td style="padding: 0px;"><input type="text"
																		id="cityName1" name="cityName1"
																		class="customertypeahead" tabindex="10"></td>
																	<td style="padding: 0px;"><input type="text"
																		id="deliveryPlace1" name="deliveryPlace1"
																		class="deliverytypeahead" tabindex="11"></td>
																	<td style="padding: 0px;"><input type="text"
																		id="itemOfMetal1" name="itemOfMetal1"
																		class="itemtypeahead" tabindex="12"></td>
																	<!--<td style="padding:0px;"><input type="text"></td>-->

																</tr>

															</table>

														</div>


														<div class="grid-view">

															<table class="add_table" id="multi_add1">

																<tr>

																	<th style="width: 60px;">S.No</th>
																	<th style="width: 9%;">D.C Date</th>

																	<th>Customer MRN No</th>
																	<th>Vehicle DC No</th>
																	<th>UOM</th>
																	<th>Qty</th>
																	<th>Rate</th>
																	<th style="width: 12%; border: none;">Amount</th>
																	<!-- <th style="border: none;"></th>  -->
																</tr>
																<tr id="remove_row_1">

																	<td style="background: #fff; text-align: center;"
																		class="check_hover">
																		<!--<img src="images/arr.png">-->1
																	</td>
																	<td><input type="text" class="cFrom" tabindex="13"
																		id="dcDate1" name="dcDate1"></td>
																	<td><input type="text" tabindex="14"
																		id="customerMRNNo1" name="customerMRNNo1" /></td>
																	<td><input type="text" tabindex="15"
																		id="vehicleDCNo1" name="vehicleDCNo1" /></td>
																	<td><input type="text" tabindex="16" id="uom1"
																		name="uom1" /></td>
																	<td><input type="text" tabindex="17"
																		id="quantity1" name="quantity1" /></td>
																	<td><input type="text" tabindex="18" id="rate1"
																		name="rate1" /></td>
																	<td><input type="text" tabindex="19" id="amount1"
																		name="amount1" /></td>
																	<!-- <td style="width: 1px;border: none;"><input type="text" tabindex="19" name="phone_1" class="inputs lst" style="border-left: none;" id="phone_1" readonly/></td> -->

																</tr>

															</table>

															<script type="text/javascript">
																// $(document).ready(function () { // Will only run once the page Document Object Model (DOM) is ready for JavaScript code 
																//    // Create a jQuery object containing the html element 'input'
																//    // Create a .not() method to exclude buttons for keypress event
																//    $(":input:not(:disabled)").not($(":button")).keypress(function(evt) {
																//        // If the keypress event code is 13 (Enter)
																//        if (evt.keyCode == 13) {
																//            // get the attribute type and if the type is not submit
																//            itype = $(this).prop('type');
																//            if (itype !== 'submit') {
																//                currentTabindex = $(this).attr('tabindex');
																//                if (currentTabindex) {
																//                    nextInput = $('input[tabindex^="'+ (parseInt(currentTabindex)+1) +'"]');
																//                    if (nextInput.length) {
																//                        nextInput.focus();
																//                        return false;
																//                    }
																//                }
																//            }
																//        }
																//    });
																//});

																s = 1;

																inc = 20;

																$(document)
																		.on(
																				'keyup',
																				'.lst',
																				function(
																						e) {

																					var idtest = $(
																							event.target)
																							.parent()
																							.parent()
																							.parent()
																							.parent();
																					var idtest1 = idtest
																							.attr('id');
																					//alert(idtest1);

																					//var i = $('#multi_add'+s+' tr').length;

																					var i = $('#'
																							+ idtest1
																							+ ' '
																							+ 'tr').length;
																					//alert(i)

																					var code = (e.keyCode ? e.keyCode
																							: e.which);

																					if (code == 13) {

																						html = '<tr id="remove_row_'+i+'">';
																						//html +='<td style="background: #fff; border-right: 1px solid #bbb;"><input type="checkbox" style="width:55px; height:15px;margin-top:3px;"/></td>';
																						html += '<td style="background: #fff; text-align: center;">'
																								+ i
																								+ '</td>';
																						html += '<td><input type="text" class="cFrom" tabindex="'+inc+'"/></td>';
																						html += '<td><input type="text"  tabindex="'
																								+ (inc + 1)
																								+ '"/></td>';
																						html += '<td><input type="text" tabindex="'
																								+ (inc + 2)
																								+ '"/></td>';
																						html += '<td><input type="text" tabindex="'
																								+ (inc + 3)
																								+ '"/></td>';
																						html += '<td><input type="text" tabindex="'
																								+ (inc + 4)
																								+ '"/></td>';
																						html += '<td><input type="text" tabindex="'
																								+ (inc + 5)
																								+ '"/></td>';
																						html += '<td><input type="text" tabindex="'
																								+ (inc + 6)
																								+ '"/></td>';
																						html += '<td style="width: 1px;border: none;"><input type="text" name="phone_1" tabindex="'
																								+ (inc + 7)
																								+ '" class="inputs lst" style="border-left: none;" id="phone_1" readonly/></td>';
																						html += '</tr>';
																						$(
																								'#'
																										+ idtest
																												.attr('id'))
																								.append(
																										html);
																						$(
																								this)
																								.focus()
																								.select();

																						$(
																								'.cFrom')
																								.datepicker(
																										{
																											//format: "dd/mm/yyyy"

																											format : "dd/mm/yyyy"

																										});

																						s++;
																					}
																					i++;
																				});

																$(document)
																		.on(
																				'keydown',
																				'.inputs',
																				function(
																						e) {
																					var code = (e.keyCode ? e.keyCode
																							: e.which);
																					if (code == 13) {
																						var index = $(
																								'.inputs')
																								.index(
																										this) + 1;
																						$(
																								'.inputs')
																								.eq(
																										index)
																								.focus();
																					}
																				});
															</script>

															<script>
																// register jQuery extension
																jQuery
																		.extend(
																				jQuery.expr[':'],
																				{
																					focusable : function(
																							el,
																							index,
																							selector) {
																						return $(
																								el)
																								.is(
																										'a, button, :input, [tabindex]');
																					}
																				});

																$(document)
																		.on(
																				'keypress',
																				'input,select',
																				function(
																						e) {
																					if (e.which == 13) {
																						e
																								.preventDefault();
																						// Get all focusable elements on the page
																						var $canfocus = $(':focusable');
																						var index = $canfocus
																								.index(document.activeElement) + 1;
																						if (index >= $canfocus.length)
																							index = 0;
																						$canfocus
																								.eq(
																										index)
																								.focus();
																					}
																				});
															</script>

														</div>
														<div class="total-pay">
															<table style="float: right; width: 44%;">
																<tr>
																	<td class="tab_total">Total</td>
																	<td><input type="text"
																		style="border: none; text-align: center;"
																		value="800.00"></td>
																	<td><input type="text" style="border: none;"
																		value="6,800.00"></td>
																</tr>

															</table>

														</div>
													</td>
												</tr>
											</table>
										</div>

										<div class="whole-payment">
											<div class="payment">
												<div class="payment-input"
													style="border: 1px solid #bbb; padding: 7px; background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #0E658E), color-stop(.5, #0C577A), color-stop(.5, #014D71), to(#003E5C)); color: #fff;">Payment
													Details</div>

												<div class="grid-view-second">

													<table class="add_table" id="next-tables">

														<tr>
															<th style="width: 1%;"><img
																src="/sge_services/resources/images/Plus_Sign.png"
																class="addrow3" style="width: 21px;"></th>
															<th style="width: 1%">S.No</th>
															<th>Payment Date</th>
															<th style="width: 6%;">Payment Mode</th>
															<th>Amount</th>
															<th>Voucher No</th>
															<th style="width: 7%;">Receiver Name</th>
															<th style="width: 7%;">Receiver Mobile No</th>
															<th style="width: 7%;">Cheque/Rtgs No</th>
															<th style="width: 7%;">Cheque/Rtgs Date</th>
															<th>Neft</th>
															<th>Bank Name</th>
															<th>Account No</th>
															<th style="border: none">Remarks</th>
															<th style="border: none"></th>
															<!--<th style="width: 3%;">Delete</th> -->
														</tr>
														<tr id="level1">
															<td><input type="text" value="1"
																style="text-align: center;"></td>
															<td><input type="text" id=""></td>
															<td><input type="text" id="cTo" name="paymentDate"></td>
															<td><select class="select-pay" name="paymentMode">
																	<option>Cash</option>
																	<option>Cheque</option>
																	<option>Rtgs</option>
																	<option>Neft</option>

															</select></td>
															<td><input type="text" id="amount" name="amount"></td>
															<td><input type="text" id="voucherNo"
																name="voucherNo"></td>
															<td><input type="text" id="receiverName"
																name="receiverName"></td>
															<td><input type="text" id="receiverMobileNo"
																name="receiverMobileNo"></td>
															<td><input type="text" id="ChequeRTGSNo"
																name="ChequeRTGSNo"></td>
															<td><input type="text" id="chequeDate"
																name="chequeDate"></td>
															<td><input type="text" id="neft" name="neft"></td>
															<td><input type="text" id="bankName" name="bankName"></td>
															<td><input type="text" id="accountNo"
																name="accountNo"></td>
															<td><input type="text" id="remarks" name="remarks"></td>
															<td style="width: 1px; border: none;"><input
																type="text" name="last_1" tabindex="'+(inc+7)+'"
																class="inputssss 2st" style="border-left: none;"
																id="last_1" readonly /></td>
															<!--<td style="padding:0px; background: #fff; text-align: center;"><img src="images/cancel_tab.png" onclick="deleterow3()" style="width:18px;"></td>-->
														</tr>

													</table>

												</div>
											</div>


											<script type="text/javascript">
												s = 1;
												i = 2;
												j = 2;
												inc = 20;
												//var i = $('#multi_add'+s+' tr').length;

												$(document)
														.on(
																'keyup',
																'.2st',
																function(e) {

																	var id2test = $(
																			event.target)
																			.parent()
																			.parent()
																			.parent()
																			.parent();

																	var code = (e.keyCode ? e.keyCode
																			: e.which);

																	if (code == 13) {
																		html = '<tr id="level1">';
																		//html +='<td style="background: #fff; border-right: 1px solid #bbb;"><input type="checkbox" style="width:55px; height:15px;margin-top:3px;"/></td>';
																		html += '<td style="background: #fff; text-align: center; color:#000;">'
																				+ j
																				+ '</td>';
																		html += '<td><input type="text"></td>';
																		html += '<td><input type="text" class="cFrom"></td>';
																		html += '<td><select class="select-pay"><option>Cash</option><option>Cheque</option><option>Rtgs</option><option>Neft</option></select></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td><input type="text"></td></td>';
																		html += '<td style="width: 1px;border: none;"><input type="text" name="last_1" tabindex="'
																				+ (inc + 7)
																				+ '" class="inputssss 2st" style="border-left: none;" id="last_1" readonly/></td>';
																		html += '</tr>';
																		$(
																				'#'
																						+ id2test
																								.attr('id'))
																				.append(
																						html);
																		$(this)
																				.focus()
																				.select();

																		$(
																				'.cFrom')
																				.datepicker(
																						{
																							//format: "dd/mm/yyyy"

																							format : "dd/mm/yyyy"

																						});

																		i++;
																		j++;
																		s++;
																	}

																});

												$(document)
														.on(
																'keydown',
																'.inputs',
																function(e) {
																	var code = (e.keyCode ? e.keyCode
																			: e.which);
																	if (code == 13) {
																		var index = $(
																				'.inputs')
																				.index(
																						this) + 1;
																		$(
																				'.inputs')
																				.eq(
																						index)
																				.focus();
																	}
																});
											</script>
											<div class="grid-view-text">

												<table class="first-grid">
													<!--<tr>
			  <td class="left-grid"><input type="text" style="color: #000;"></td>
			  <td class="right-grid"><input type="text"></td> 
			</tr>-->
													<tr>
														<td class="left-grid">VAT @ <input type="text"
															style="width: 56px; color: #000;"></td>
														<td class="right-grid"><input type="text" id="vat"
															name="vat"></td>
													</tr>
													<tr>
														<td class="left-grid">CST @ <input type="text"
															style="width: 56px; color: #000;"></td>
														<td class="right-grid"><input type="text" id="cst"
															name="cst"></td>
													</tr>
													<tr>
														<td class="left-grid" style="margin-top: 7px;">Discount</td>
														<td class="right-grid"><input type="text"
															id="discount" name="discount"></td>
													</tr>
													<tr>
														<td class="left-grid" style="margin-top: 11px;">Round
															Off</td>
														<td class="right-grid"><input type="text"
															id="roundOff" name="roundOff"></td>
													</tr>
													<tr>
														<td style="margin-top: 13px;" class="left-grid">Net
															Amount</td>
														<td class="right-grid"><input type="text"
															id="netAmount" name="netAmount"></td>
													</tr>
													<tr>
														<td style="margin-top: 12px;" class="left-grid">Advance
															Amount</td>
														<td class="right-grid"><input type="text"
															id="advanceAmount" name="advanceAmount"></td>
													</tr>
													<tr>
														<td style="margin-top: 11px;" class="left-grid">Paid
															Amount</td>
														<td class="right-grid"><input type="text"
															id="paidAmount" name="paidAmount"></td>
													</tr>
													<tr>
														<td style="margin-top: 13px; line-height: 16px;"
															class="left-grid">Balance Amount</br>
														<span style="font-size: 10px;">(Payable /
																Receivable)</span></td>
														<td class="right-grid"><input type="text"
															id="BalanceAmount" name="BalanceAmount"></td>
													</tr>



												</table>


											</div>

										</div>

										<div class="bottom-table">
											<table>
												<tr>
													<td>Remarks</td>
													<td><input type="text" class="remarks-level1"
														id="invRemarks" name="invRemarks"></td>
													<td style="padding-left: 10px;">Inv Date</td>
													<td style="padding-left: 5px;"><input type="text"
														style="width: 88px;" id="cTo2" name="invDate"></td>
													<td style="margin-left: 25px; padding-left: 7px;">Inv.No</td>
													<td><input type="text" style="width: 87px;" id="invNo"
														name="invNo"></td>
												</tr>

											</table>
                                         </div>
										</div>
										
								<div class="right-whole-design">
									<table>
										<tr>
											<td><button type="button" class="button"
													id="savePurchaseEntry" name="savePurchaseEntry">Save</button></td>

										</tr>
										<tr>
											<td><button type="button" class="button">
													Invoice Print</
													<button></td>

										</tr>
										<tr>
											<td><button type="button" id="add_roman" class="button">Add
													RomanLetter</button></td>

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
											<td><button type="button" class="button">Voucher
													Print</button></td>

										</tr>
										<tr>
											<td><button type="button" class="button">Advance
													Showing</button></td>

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
