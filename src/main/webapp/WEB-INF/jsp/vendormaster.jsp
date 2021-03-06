<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="BaseParent.jsp"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:set var="materialList" value="${materialList}"></c:set>
<title>Sri Ganapathy Enterprises! |</title>
<!-- jQuery -->

<style>
.table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th,
	.table>thead>tr>td, .table>thead>tr>th {
	padding: 8px;
	line-height: 1.42857143;
	vertical-align: top;
	border-top: 0px solid #ddd;
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

legend {
	/*  display: block;
    width: 9%;
    padding: 3px;
    margin-bottom: 20px;
    font-size: 15px;
    color: #004467;
    border: 0;*/
	
}

fieldset {
	border: 1px solid #b4adad;
	padding: 0px 6px;
	padding-bottom: 12px;
}

.legend {
	/*display: block;
    width: 14%;
    padding: 3px;
    margin-bottom: 20px;
    font-size: 15px;
    color: #004467;
    border: 0;*/
	
}

.x_panel {
	width: 100%;
	padding: 10px 17px;
	display: inline-block;
	background: #3e72d0;
	border: 1px solid #E6E9ED;
	-webkit-column-break-inside: avoid;
	-moz-column-break-inside: avoid;
	column-break-inside: avoid;
	opacity: 1;
	transition: all .2s ease;
}
</style>
<script>
    $(document).ready(function(){
      $("#sec").mouseover(function(){
	$("#child-show").css('display','block')
	});
      $("#sec").mouseout(function(){
	$("#child-show").css('display','none');
	});
    });

  </script>
<script>
    $(document).ready(function(){
      $("#se").mouseover(function(){
	$("#child-shows").css('display','block')
	});
      $("#se").mouseout(function(){
	$("#child-shows").css('display','none');
	});
    });

  </script>
  <script type="text/JavaScript" src="resources/js/state_district.js"></script>
<script>
$("document").ready(function(){
	 var i=1;
	 
      $('.addrow').click(function() 
     {
    	
    	$(".supplier_table").append('<tr id="remove_supplier"><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff;text-align: center;"><img src="resources/images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td></tr>'); 
    	  
    	
    	 i++;
	});  
      
    });

    function deleterow()
    {
    
    if($(".supplier_table tr").length != 1)
    {
        $("#remove_supplier").remove();
    }
    else
    {
        alert("You cannot delete first row");
    }
    }
    
    </script>

<script>
$("document").ready(function(){
	 var i=2;
	 
      $('.addbank').click(function() 
     {
    	
    	//$(".addbankrow").append('<tr><td class="text-sub22">Bank Details-Add Multiple Account '+i+'</td></tr><tr><td class="text-sub">A/C Holder Name</td><td><input type="text"></td><td class="text-sub">Relationship with</td><td><input type="text"></td></tr><tr><td class="text-sub">Bank A/C No</td><td><input type="text"></td><td class="text-sub">A/C Type</td><td><input type="text"></td></tr><tr><td class="text-sub">Name of the Bank</td><td><input type="text"></td><td class="text-sub">Branch Name</td><td><input type="text"></td></tr><tr><td class="text-sub">IFS Code</td><td><input type="text"></td><td class="text-sub">Pan No</td><td><input type="text"></td></tr><tr><td class="text-sub">Transaction Amount Limit</td><td><input type="text"></td></tr>'); 
    	 $(".addbankrow").append('<div class="open_blnc-sup"><fieldset><legend class="legend" id="supplier_legend2">Bank Details-Add Multiple Account '+i+'</legend><table><tbody><tr><td class="text-sub">A/C Holder Name</td><td><input type="text"></td><td class="text-sub">Relationship with</td><td><input type="text"></td></tr><tr><td class="text-sub">Bank A/C No</td><td><input type="text"></td><td class="text-sub">A/C Type</td><td><input type="text"></td></tr><tr><td class="text-sub">Name of the Bank</td><td><input type="text"></td><td class="text-sub">Branch Name</td><td><input type="text"></td></tr><tr><td class="text-sub">IFS Code</td><td><input type="text"></td><td class="text-sub">Pan No</td><td><input type="text"></td></tr><tr><td class="text-sub">Transaction Amount Limit</td><td><input type="text"></td></tr></tbody></table></fieldset></div>'); 
    	
    	 i++;
	});  
      
    });

    function deleterow()
    {
    
    if($(".supplier_table tr").length != 1)
    {
        $("#remove_supplier").remove();
    }
    else
    {
        alert("You cannot delete first row");
    }
    }
    
    </script>


<script>
         function mobilenumber() {
        	
        	  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
        	  var mobilephoneno = document.getElementById("mobilephoneno");
        	  if(mobilephoneno.value.match(phoneno)) {
        		 return true;
        	  }
        	  else {
        	    alert("Enter Correct Mobile Number");
		    document.getElementById("mobilephoneno").value="";
        	    return false;
        	  }
        	}
        </script>

<script>
         function mobilenumber1() {
        	
        	  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
        	  var mobilephonenumber1 = document.getElementById("mobilephoneno1");
        	  if(mobilephonenumber1.value.match(phoneno)) {
        		 return true;
        	  }
        	  else {
        	    alert("Enter Correct Mobile Number");
		    document.getElementById("mobilephoneno1").value="";
        	    return false;
        	  }
        	}
		
		function mobilenumber2() {
        	
        	  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
        	  var mobileno2 = document.getElementById("mobileno2");
        	  if(mobileno2.value.match(phoneno)) {
        		 return true;
        	  }
        	  else {
        	    alert("Enter Correct Mobile Number");
		    document.getElementById("mobileno2").value="";
        	    return false;
        	  }
        	}
		
		function mobilenumber3() {
        	
        	  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
        	  var mobileno3 = document.getElementById("mobileno3");
        	  if(mobileno2.value.match(phoneno)) {
        		 return true;
        	  }
        	  else {
        	    alert("Enter Correct Mobile Number");
		    document.getElementById("mobileno3").value="";
        	    return false;
        	  }
        	}
        </script>
<script>
       function validateEmail() {
    	    var mail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    	    var emailaddres=document.getElementById("emailaddres");
    	    if(emailaddres.value.match(mail)){
    	    	
    	    }
    	    else {
        	    alert("Enter Correct Email Address");
        	    document.getElementById("emailaddres").value="";
        	  }
    	    return mail.test(email);
    	}
       </script>
<script>
      $(document).ready(function() {
$('input:text:first').focus();
    
$('input:text').bind("keydown", function(e) {
   var n = $("input:text").length;
   if (e.which == 13) 
   { //Enter key
     e.preventDefault(); //to skip default behavior of the enter key
     var nextIndex = $('input:text').index(this) + 1;
     if(nextIndex < n)
       $('input:text')[nextIndex].focus();
     else
     {
       $('input:text')[nextIndex-1].blur();
       $('#btnSubmit').click();
     }
   }
});

$('#btnSubmit').click(function() {
    alert('Form Submitted');
});
});
      
    </script>


<script>

$("#saveVendor").click(function(event){

	var data = {};

    var purchaseDeptContact1 = {};
    var purchaseDeptContact2 = {};
    var accountsDeptContact1 = {};
    var accountsDeptContact2 = {};
    var siteDetails1 = {};
    var siteDetails2 = {};
    
	data["customerName"] = $("#customerName").val();
	data["customerShortName"] = $("#customerShortName").val();
	data["introducedBy"] = $("#customerIntroducedBy").val();
	data["address"] = $("#officeAddress").val();
	data["headOfficeAddress"] = $("#headOfficeAddress").val();
	data["regionalOfficeAddress"] = $("#regionalOfficeAddress").val();
	data["officeContact1"] = $("#officeContact1").val();
	data["officeContact2"] = $("#officeContact2").val();
	data["officeContact3"] = $("#officeContact3").val();
	data["officeContact4"] = $("#officeContact4").val();
	data["emailId1"] = $("#officeEmail1").val();
	data["emailId2"] = $("#officeEmail2").val();
	data["tinGstNo"] = $("#tinGstNo").val();
	data["cstNo"] = $("#cstNo").val();
	data["cpp"] = $("#cpp").val();
	data["cinNo"] = $("#cinNo").val();
	data["billingPeriod"] = $("#billingPeriod").val();
	data["paymentTerms"] = $("#paymentTerms").val();
	data["panNo"] = $("#panNo").val();
	data["isCustomerActive"] = $("#customerActive").val();
	
	purchaseDeptContact1["contactName"] = $("#purchaseContactName1").val();
	purchaseDeptContact2["contactName"] = $("#purchaseContactName2").val();
	purchaseDeptContact1["designation"] = $("#purchaseDesignation1").val();
	purchaseDeptContact2["designation"] = $("#purchaseDesignation2").val();
	purchaseDeptContact1["mobileNo1"] = $("#purchaseMobileNo11").val();
	purchaseDeptContact1["mobileNo2"] = $("#purchaseMobileNo12").val();
	purchaseDeptContact2["mobileNo1"] = $("#purchaseMobileNo21").val();
	purchaseDeptContact2["mobileNo2"] = $("#purchaseMobileNo22").val();
	purchaseDeptContact1["emailId"] = $("#purchaseEmailId").val();
    
	accountsDeptContact1["contactName"] = $("#accountsContactName1").val();
	accountsDeptContact2["contactName"] = $("#accountsContactName2").val();
	accountsDeptContact1["designation"] = $("#accountsDesignation1").val();
	accountsDeptContact2["designation"] = $("#accountsDesignation2").val();
	accountsDeptContact1["mobileNo"] = $("#accountsMobileNo1").val();
	accountsDeptContact2["mobileNo"] = $("#accountsMobileNo2").val();
	accountsDeptContact1["emailId"] = $("#accountsEmailId").val();

	siteDetails1["siteName"] = $("#siteName").val();
	siteDetails2["siteName"] = $("#siteName").val();
	siteDetails1["siteAddress"] = $("#siteAddress").val();
	siteDetails2["siteAddress"] = $("#siteAddress").val();
	siteDetails1["contactName"] = $("#siteContactName1").val();
	siteDetails2["contactName"] = $("#siteContactName2").val();
	siteDetails1["designation"] = $("#siteDesignation1").val();
	siteDetails2["designation"] = $("#siteDesignation2").val();
	siteDetails1["mobileNo"] = $("#siteMobileNo1").val();
	siteDetails2["mobileNo"] = $("#siteMobileNo2").val();
	siteDetails1["emailId"] = $("#siteEmailId").val();
	/* siteDetails1["transactionAmountLimit"] = $("#transactionAmountLimit").val(); */

    var purchaseDeptContact = [
    	purchaseDeptContact1,
    	purchaseDeptContact2
    ];

    var accountsDeptContact = [
    	accountsDeptContact1,
    	accountsDeptContact2
    ];

    var siteDetails = [
    	siteDetails1,
    	siteDetails2
    ];

	data["purchaseDeptContact"] = purchaseDeptContact;
	data["accountsDeptContact"] = accountsDeptContact;
	data["siteDetails"] = siteDetails;
    
	$.ajax({
        type: "POST",
        contentType: "application/json",
        url: "addcustomer",
        data: JSON.stringify(data),
        dataType: 'json',
        timeout: 600000,
        success: function (data) {
            $("#btn-update").prop("disabled", false);
           if( data.isCustomerAdded==true){
        	   alert("success");
               }else{
            	   alert("error");

                   }
            
            //...
        },
        error: function (e) {
            $("#btn-save").prop("disabled", false);
            //...
        }
});

		
});


</script>

</head>

<body class="nav-md">

	<!-- page content -->
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<!--<h3>SUPPLIER MASTER</h3>-->
				</div>


			</div>
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>VENDOR MASTER</h2>

							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<br />
							<form id="demo-form2" data-parsley-validate
								class="form-horizontal form-label-left">

								<div class="left-whole-design">
									<div class="form-design">
										<table class="table" id="supp_tabs">
											<tr>
												<td>P.E Date</td>
												<td><input type="text" id="cFrom"></td>
												<td style="width: 14%;">Vehicle Mode</td>
												<td><input type="text"></td>
											</tr>
										</table>
									</div>

									<div class="supplier-view" id="supplier">

										<table class="supplier_table">

											<tr>
												<!-- <th style="width:1%;"><img src="resources/images/Plus_Sign.png" class="addrow" style="width:21px;"></th>-->
												<th style="width: 1%;">S.No</th>
												<th>Vendor Type</th>
												<th>Vendor Company Name</th>
												<th>Material Supply</th>
												<th>Source</th>
												<th>Office Address</th>
												<th>Contact Person Name</th>
												<th>Mobile No1</th>
												<th>Email ID</th>
												<th>Factory Address</th>
												<th>Contact Person Name</th>
												<th>Factory Land Line No</th>
												<th>A/C Holder Name</th>
												<th>Relationship With</th>
												<th>Name of the Bank</th>
												<th>Branch Name</th>
												<th>IFC Code</th>
												<th>PAN No</th>
												<th style="border: none;">Transaction Amount Limit</th>
												<th style="border: none;"></th>
												<!--<th style="width: 2%;">Delete</th> -->
											</tr>
											<tr id="remove_supplier">
												<!--<td><input type="text"></td>-->
												<td><input type="text" value="1"
													style="text-align: center;"></td>
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
												<td><input type="text"></td>
												<td><input type="text"></td>
												<td><input type="text"></td>
												<td><input type="text"></td>
												<td><input type="text"></td>
												<td><input type="text"></td>
												<td><input type="text"></td>
												<td><input type="text"></td>
												<td style="width: 1px; border: none;"><input
													type="text" tabindex="19" name="last_1" class="inputss 2st"
													style="border-left: none;" id="last_1" readonly /></td>
												<!-- <td style="padding:0px; background: #fff;text-align: center;"><img src="resources/images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td> -->

											</tr>

										</table>

									</div>
									<script type="text/javascript">
 

  s=1;
  i=2;
  inc=20;
    //var i = $('#sub_multi_add'+s+' tr').length;
	
	 

$(document).on('keyup', '.2st', function(e) {
 
  
//var idtest = $(event.target).parent().parent().parent().parent();

  var code = (e.keyCode ? e.keyCode : e.which);

   
  if (code == 13) {
   
    html = '<tr id="remove_supplier">';
    //html +='<td style="background: #fff; border-right: 1px solid #bbb;"><input type="checkbox" style="width:55px; height:15px;margin-top:3px;"/></td>';
    html += '<td style="background: #fff; text-align: center;">' + i + '</td>';
   
    
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td><input type="text"></td>';
    html += '<td style="width: 1px;border: none;"><input type="text" tabindex="19" name="last_1" class="inputss 2st" style="border-left: none;" id="last_1" readonly/></td>';
    html += '</tr>';
     $('.supplier_table').append(html);
     $(this).focus().select();
    
    $('input:text:first').focus();
    
$('input:text').bind("keydown", function(e) {
   var n = $("input:text").length;
   if (e.which == 13) 
   { //Enter key
     e.preventDefault(); //to skip default behavior of the enter key
     var nextIndex = $('input:text').index(this) + 1;
     if(nextIndex < n)
       $('input:text')[nextIndex].focus();
     else
     {
       $('input:text')[nextIndex-1].blur();
       $('#btnSubmit').click();
     }
   }
});

$('#btnSubmit').click(function() {
    alert('Form Submitted');
});
		
    
    
    
    i++;
s++;
  }
 $('.cFrom').datepicker({
                    //format: "dd/mm/yyyy"
		   
			format: "dd/mm/yyyy"
			
                });
});

$(document).on('keydown', '.inputss', function(e) {
  var code = (e.keyCode ? e.keyCode : e.which);
  if (code == 13) {
    var index = $('.inputss').index(this) + 1;
    $('.inputss').eq(index).focus();
  }
});


    </script>
									<script>
		     function register(){
		      alert("cehck")
		     document.getElementById('unreg').style.display='none';
		      
		     }
		     }
		     </script>


									<!-- <ul class="nav nav-tabs" id="menus-nav">
    <li class="active"><a data-toggle="tab" onclick="register()" href="#home">Registered Vendor</a></li>
    <li><a data-toggle="tab" href="#menu1" id="unreg">UnRegistered Vendor</a></li>
   
  </ul>-->
									<table class="tab-ventor">
										<tr>
											<td class="tab-td">Choose Vendor
												</option>
											</td>
											<td><select style="padding: 5px;">
													<option>-- Choose --</option>
													<option>Registered Vendor</option>
													<option>UnRegistered Vendor</option>
											</select></td>
										</tr>
									</table>
									<div class="tab-content">
										<div id="home" class="tab-pane fade in active">
											<div class="supplier-list">


												<fieldset>
													<legend class="supplier_legend">
														<b>Registered Vendor</b>
													</legend>
													<div class="open_blnc-sup" style="margin: 0px;">
														<fieldset style="border: none;">
															<legend class="legend" style="margin: 0px;"
																id="supplier_legend22"></legend>
															<table>
																<tr>
																	<td class="text-sub">Vendor Type</td>
																	<td><input type="text"></td>
																	<td class="text-sub">Vendor Company Name</td>
																	<td><input type="text" id="vendorCompanyName" name="vendorCompanyName"></td>
																</tr>

																<tr>
																	<td class="text-sub">Material Supply</td>
																	<td>
																		<select name="materialList" id="materialList">
										                                	<c:forEach var="materialList" items="${materialList}">
										                                    	<option value="${materialList}"><c:out value= "${materialList}"/></option>
										                                	</c:forEach>
										                            	</select>
										                            </td>
																	<td class="text-sub">Source</td>
																	<td><input type="text" id="materialSource" name="materialSource"></td>
																</tr>

																<tr>
																	<td class="text-sub">Residential Address</td>
																	<td><input type="text" id="residentialAddress" name="residentialAddress"></td>
																	<td class="text-sub">Residential LandLine No</td>
																	<td><input type="text"></td>

																</tr>
																<tr>
																	<td class="text-sub">State</td>
																	<td><select id="stateList" onchange="selct_district(this.value)">
																			
																	</select></td>

																	<td class="text-sub">District</td>
																	<td><select id="districtList">
																	</select></td>

																</tr>
																<tr>
																	<td class="text-sub">City</td>
																	<td><input type="text"></td>

																	<td class="text-sub">Pin Code</td>
																	<td><input type="text"></td>

																</tr>
																<tr>

																	<td class="text-sub">Office Address</td>
																	<td><input type="text"></td>
																	<td class="text-sub">City</td>
																	<td><input type="text"></td>
																</tr>
																<tr>
																	<td class="text-sub">Contact Person Name</td>
																	<td><input type="text"></td>

																	<td class="text-sub">Mobile No</td>
																	<td><input type="text"></td>
																</tr>
																<tr>
																	<td class="text-sub">Office Land Line No</td>
																	<td><input type="text"></td>

																	<td class="text-sub">Mobile No</td>
																	<td><input type="text"></td>
																</tr>
																<tr>
																	<td class="text-sub">Email ID</td>
																	<td><input type="text"></td>

																	<td class="text-sub">Factory Address</td>
																	<td><input type="text"></td>
																</tr>
																<tr>
																	<td class="text-sub">Contact Person Name</td>
																	<td><input type="text"></td>

																	<td class="text-sub">Mobile No</td>
																	<td><input type="text"></td>
																</tr>

																<tr>
																	<td class="text-sub">Factory Land Line No</td>
																	<td><input type="text"></td>

																	<td class="text-sub">Mobile No</td>
																	<td><input type="text"></td>
																</tr>
															</table>
														</fieldset>
													</div>

													<!--<table class="addbankrow">
    
   </table>-->
													<div class="addbankrow">
														<div class="open_blnc-sup">
															<fieldset>
																<legend class="legend" id="supplier_legend2">Bank
																	Details-Add Multiple Account 1</legend>
																<table>
																	<tr>
																		<td class="text-sub">A/C Holder Name</td>
																		<td><input type="text"></td>

																		<td class="text-sub">Relationship with</td>
																		<td><input type="text"></td>


																	</tr>
																	<tr>
																		<td class="text-sub">Bank A/C No</td>
																		<td><input type="text"></td>

																		<td class="text-sub">A/C Type</td>
																		<td><input type="text"></td>


																	</tr>
																	<tr>
																		<td class="text-sub">Name of the Bank</td>
																		<td><input type="text"></td>

																		<td class="text-sub">Branch Name</td>
																		<td><input type="text"></td>


																	</tr>
																	<tr>
																		<td class="text-sub">IFS Code</td>
																		<td><input type="text"></td>

																		<td class="text-sub">Pan No</td>
																		<td><input type="text"></td>


																	</tr>
																	<tr>
																		<td class="text-sub">Transaction Amount Limit</td>
																		<td><input type="text"></td>

																	</tr>

																</table>

															</fieldset>

														</div>
													</div>
													<div class="open_blnc-sup">
														<fieldset>
															<legend class="legend" id="supplier_legend21">Opening
																Balance</legend>
															<table class="vendor-tabs">
																<tr>
																	<td style="width: 1%;">Date</td>
																	<td style="width: 4%;"><input type="text"
																		id="cTo1"></td>
																	<td style="width: 1%;">Balance</td>
																	<td style="width: 4%;"><input type="text"></td>
																</tr>

															</table>

														</fieldset>

													</div>
												</fieldset>





											</div>
										</div>
										<div id="menu1" class="tab-pane fade">
											<div class="supplier-list">


												<fieldset>
													<legend class="supplier_legend">
														<b>UnRegistered Vendor</b>
													</legend>
													<table class="sub-table-cust1">
														<tr>
															<td class="text-sub">Vendor Type</td>
															<td>
																<!--<select>
	<option></option>
	<option></option>
	<option></option>
	<option></option>
<option></option>
<option></option>
	
      </select>--> <input type="text">
															</td>

															<td class="text-sub">Vendor Company Name</td>
															<td><input type="text"></td>

														</tr>

														<tr>
															<td class="text-sub">Material Supply</td>
															<td><input type="text"></td>

															<td class="text-sub">Source</td>
															<td><input type="text"></td>
														</tr>
														<tr>

															<td class="text-sub">Office Address</td>
															<td><input type="text"></td>
															<td class="text-sub">City</td>
															<td><input type="text"></td>
														</tr>
														<tr>
															<td class="text-sub">Contact Person Name</td>
															<td><input type="text"></td>

															<td class="text-sub">Mopbile No</td>
															<td><input type="text"></td>
														</tr>
														<tr>
															<td class="text-sub">Office Land Line No</td>
															<td><input type="text"></td>

															<td class="text-sub">Mopbile No</td>
															<td><input type="text"></td>
														</tr>
														<tr>
															<td class="text-sub">Email ID</td>
															<td><input type="text"></td>

															<td class="text-sub">Factory Address</td>
															<td><input type="text"></td>
														</tr>
														<tr>
															<td class="text-sub">Contact Person Name</td>
															<td><input type="text"></td>

															<td class="text-sub">Mobile No</td>
															<td><input type="text"></td>
														</tr>

														<tr>
															<td class="text-sub">Factory Land Line No</td>
															<td><input type="text"></td>

															<td class="text-sub">Mobile No</td>
															<td><input type="text"></td>
														</tr>
														<tr>
															<td class="text-sub22">Bank Details-Add Multiple
																Account</td>

														</tr>
														<tr>
															<td class="text-sub">A/C Holder Name</td>
															<td><input type="text"></td>

															<td class="text-sub">Relationship with</td>
															<td><input type="text"></td>


														</tr>
														<tr>
															<td class="text-sub">Bank A/C No</td>
															<td><input type="text"></td>

															<td class="text-sub">A/C Type</td>
															<td><input type="text"></td>


														</tr>
														<tr>
															<td class="text-sub">Name of the Bank</td>
															<td><input type="text"></td>

															<td class="text-sub">Branch Name</td>
															<td><input type="text"></td>


														</tr>
														<tr>
															<td class="text-sub">IFS Code</td>
															<td><input type="text"></td>

															<td class="text-sub">Pan No</td>
															<td><input type="text"></td>


														</tr>
														<tr>
															<td class="text-sub">Transaction Amount Limit</td>
															<td><input type="text"></td>

														</tr>
													</table>


													<div class="open_blnc">
														<fieldset>
															<legend class="legend" id="supplier_legend2">opening
																Balance</legend>
															<table>
																<tr>
																	<td>Date</td>
																	<td><input type="text" id="cTo1"></td>
																	<td>Balance</td>
																	<td><input type="text"></td>
																</tr>

															</table>

														</fieldset>

													</div>
												</fieldset>





											</div>
										</div>

									</div>
								</div>
								<div class="right-whole-design-suppliers" style="float: left;">
									<table>
										<tr>
											<td><button type="button" class="button-suppliers" id="saveVendor" name="saveVendor">
													<img src="resources/images/add.png" style="width: 53%;"></br>Save
												</button></td>

										</tr>
										<tr>
											<td><button type="button" class="button-suppliers">
													<img src="resources/images/printing.png"></br>Print</
													<button></td>

										</tr>

										<tr>
											<td><button type="button" class="button-suppliers">
													<img src="resources/images/exit.png"></br>Exit
												</button></td>

										</tr>

									</table>


								</div>

								<div class="whole-payment">




									<div class="right-whole-design-sales" style="margin-left: 31%;">
										<table>
											<tr>
												<td><button type="button" class="button-sales">
														<img src="resources/images/add.png" class="addbank"></br>Add Row
													</button></td>

											</tr>
											<tr>
												<td><button type="button" class="button-sales">
														<img src="resources/images/edit.png"></br>Edit
													</button></td>

											</tr>
											<tr>
												<td><button type="button" class="button-sales">
														<img src="resources/images/remove.png"></br>Delete</
														<button></td>

											</tr>
											<tr>
												<td><button type="button" class="button-sales">
														<img src="resources/images/update.png"></br>Update
													</button></td>

											</tr>
											<tr>
												<td><button type="button" class="button-sales">
														<img src="resources/images/cancel.png"></br>Cancel
													</button></td>

											</tr>


										</table>


									</div>

								</div>
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

	<script type="text/javascript">
            $(function() {

                //Timepicker
                $(".timepicker").timepicker({
                    showInputs: false;
                });
            });
        </script>
	<script type="text/javascript">
            $(document).ready(function () {
                
                $('#cFrom').datepicker({
                    //format: "dd/mm/yyyy"
					format: "dd/mm/yyyy"
                });  
				
				$('#cTo').datepicker({
                    //format: "dd/mm/yyyy"
					format: "dd/mm/yyyy"
                });
				
				$('#cTo1').datepicker({
                  //format: "dd/mm/yyyy"
					format: "dd/mm/yyyy"
               });
				$('#cTo2').datepicker({
                  //format: "dd/mm/yyyy"
					format: "dd/mm/yyyy"
               });
				$('#cTo3').datepicker({
                  //format: "dd/mm/yyyy"
					format: "dd/mm/yyyy"
               });  
          
            });
        </script>
	<div class="datepicker dropdown-menu">
		<div class="datepicker-days" style="display: block; line-height: 0px;">
			<table class="table-condensed">
				<thead>
					<tr>
						<th class="prev">?</th>
						<th colspan="5" class="switch">June 2016</th>
						<th class="next">?</th>
					</tr>
					<tr>
						<th class="dow">Su</th>
						<th class="dow">Mo</th>
						<th class="dow">Tu</th>
						<th class="dow">We</th>
						<th class="dow">Th</th>
						<th class="dow">Fr</th>
						<th class="dow">Sa</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="day  old">29</td>
						<td class="day  old">30</td>
						<td class="day  old">31</td>
						<td class="day  active">1</td>
						<td class="day ">2</td>
						<td class="day ">3</td>
						<td class="day ">4</td>
					</tr>
					<tr>
						<td class="day ">5</td>
						<td class="day ">6</td>
						<td class="day ">7</td>
						<td class="day ">8</td>
						<td class="day ">9</td>
						<td class="day ">10</td>
						<td class="day ">11</td>
					</tr>
					<tr>
						<td class="day ">12</td>
						<td class="day ">13</td>
						<td class="day ">14</td>
						<td class="day ">15</td>
						<td class="day ">16</td>
						<td class="day ">17</td>
						<td class="day ">18</td>
					</tr>
					<tr>
						<td class="day ">19</td>
						<td class="day ">20</td>
						<td class="day ">21</td>
						<td class="day ">22</td>
						<td class="day ">23</td>
						<td class="day ">24</td>
						<td class="day ">25</td>
					</tr>
					<tr>
						<td class="day ">26</td>
						<td class="day ">27</td>
						<td class="day ">28</td>
						<td class="day ">29</td>
						<td class="day ">30</td>
						<td class="day  new">1</td>
						<td class="day  new">2</td>
					</tr>
					<tr>
						<td class="day  new">3</td>
						<td class="day  new">4</td>
						<td class="day  new">5</td>
						<td class="day  new">6</td>
						<td class="day  new">7</td>
						<td class="day  new">8</td>
						<td class="day  new">9</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="datepicker-months" style="display: none;">
			<table class="table-condensed">
				<thead>
					<tr>
						<th class="prev">?</th>
						<th colspan="5" class="switch">2016</th>
						<th class="next">?</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="month">Jan</span> <span
							class="month">Feb</span> <span class="month">Mar</span> <span
							class="month">Apr</span> <span class="month">May</span> <span
							class="month active">Jun</span> <span class="month">Jul</span> <span
							class="month">Aug</span> <span class="month">Sep</span> <span
							class="month">Oct</span> <span class="month">Nov</span> <span
							class="month">Dec</span></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="datepicker-years" style="display: none;">
			<table class="table-condensed">
				<thead>
					<tr>
						<th class="prev">?</th>
						<th colspan="5" class="switch">2010-2019</th>
						<th class="next">?</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="7"><span class="year old">2009</span> <span
							class="year">2010</span> <span class="year">2011</span> <span
							class="year">2012</span> <span class="year">2013</span> <span
							class="year">2014</span> <span class="year">2015</span> <span
							class="year active">2016</span> <span class="year">2017</span> <span
							class="year">2018</span> <span class="year">2019</span> <span
							class="year old">2020</span></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

</body>