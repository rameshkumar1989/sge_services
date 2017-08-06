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

<title>Sri Ganapathy Enterprises! |</title>
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
	display: block;
	width: 10%;
	padding: 3px;
	margin-bottom: 20px;
	font-size: 15px;
	color: #004467;
	border: 0;
}

fieldset {
	border: 1px solid #b4adad;
	padding: 0px 6px;
	padding-bottom: 12px;
}
/* .legend{
  display: block;
    width: 14%;
    padding: 3px;
    margin-bottom: 20px;
    font-size: 15px;
    color: #004467;
    border: 0;
  }*/
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
<script>
$("document").ready(function(){
	 var i=1;
	 
      $('.addrow').click(function() 
     {
    	
    	$(".customer_table").append('<tr id="remove_customer"><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff;text-align: center;"><img src="images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td></tr>'); 
    	  
    	
    	 i++;
	});  
      
    });

    function deleterow()
    {
    
    if($(".customer_table tr").length != 1)
    {
        $("#remove_customer").remove();
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
        	  var mobilephonenumber = document.getElementById("mobilephonenumber");
        	  if(mobilephonenumber.value.match(phoneno)) {
        		 return true;
        	  }
        	  else {
        	    alert("Enter Correct Mobile Number");
		    document.getElementById("mobilephonenumber").value="";
        	    return false;
        	  }
        	}
        </script>

<script>
         function mobileno1() {
        	
        	  var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
        	  var mobilephonenumber1 = document.getElementById("mobilephonenumber1");
        	  if(mobilephonenumber1.value.match(phoneno)) {
        		 return true;
        	  }
        	  else {
        	    alert("Enter Correct Mobile Number");
		    document.getElementById("mobilephonenumber1").value="";
        	    return false;
        	  }
        	}
        </script>
<script>
       function validateEmail1() {
    	    var mail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    	    var emailaddres1=document.getElementById("emailaddres1");
    	    if(emailaddres1.value.match(mail)){
    	    	
    	    }
    	    else {
        	    alert("Enter Correct Email Address");
        	    document.getElementById("emailaddres1").value="";
        	  }
    	    return mail.test(email);
    	}
       </script>

<script>
       function validateEmail2() {
    	    var mail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    	    var emailaddres2=document.getElementById("emailaddres2");
    	    if(emailaddres2.value.match(mail)){
    	    	
    	    }
    	    else {
        	    alert("Enter Correct Email Address");
        	    document.getElementById("emailaddres2").value="";
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

$("#saveCustomer").click(function(event){

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

$("#updateCustomer").click(function(event){

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
	data["headOfficeAddress"] = $("#headOfficeAddress").val();
	data["regionalOfficeAddress"] = $("#regionalOfficeAddress").val();
	data["officeContact1"] = $("#officeContact1").val();
	data["officeContact2"] = $("#officeContact2").val();
	data["officeContact3"] = $("#officeContact3").val();
	data["officeContact4"] = $("#officeContact4").val();
	data["officeEmail1"] = $("#officeEmail1").val();
	data["officeEmail2"] = $("#officeEmail2").val();
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
           if( data.status=="Customer Added Successfully"){
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


});
      
    </script>

<script>
$(function() {
$('#searchCustomer').typeahead({
    source: function (query, process) {
        return $.ajax({
            url: 'searchCustomer',
            type: 'post',
            data: { customerNameOrId : query },
            dataType: 'json',
            success: function (result) {
                var resultList = result.map(function (item) {

                	var purchase=item["purchaseDeptContact"];
                	var purdesignation1=null;
                	var purdesignation2=null;
                	var purcontactName1=null;
                	var purcontactName2=null;
                	var purMobileNo11=null;
                	var purMobileNo12=null;
                	var purMobileNo21=null;
                	var purMobileNo22=null;
                	var puremailId=null;
                	
                	var account=item["accountsDeptContact"];
                	var accdesignation1=null;
                	var accdesignation2=null;
                	var acccontactName1=null;
                	var acccontactName2=null;
                	var accMobileNo1=null;
                	var accMobileNo2=null;
                	var accemailId=null

                	var siteDetail=item["siteDetails"];
                	var siteName=null;
                	var siteAddress=null;
                	var sitedesignation1=null;
                	var sitedesignation2=null;
                	var sitecontactName1=null;
                	var sitecontactName2=null
                	var siteMobileNo1=null;
                	var siteMobileNo2=null;
                	var siteemailId=null;
                	var transactionLimit=null;
                	
                	

                	
                	var size = Object.keys(account).length;
                	for(i=0;i<size;i++){
                    	if(item.customerId==item.accountsDeptContact[i].customerId){
                        	if(purdesignation1==null){
                        		purdesignation1=item.purchaseDeptContact[i].designation
                        		accdesignation1=item.accountsDeptContact[i].designation
                        		sitedesignation1=item.siteDetails[i].designation
                        		purcontactName1=item.purchaseDeptContact[i].contactName
                        		acccontactName1=item.accountsDeptContact[i].contactName
                        		sitecontactName1=item.siteDetails[i].contactName
                        		purMobileNo11=item.purchaseDeptContact[i].mobileNo1
                        		purMobileNo12=item.purchaseDeptContact[i].mobileNo2 
                        		accMobileNo1=item.accountsDeptContact[i].mobileNo
                        		siteMobileNo1=item.siteDetails[i].mobileNo
                        		puremailId=item.purchaseDeptContact[i].emailId
                        		accemailId=item.accountsDeptContact[i].emailId
                        		siteemailId=item.siteDetails[i].emailId
                        		transactionLimit=item.siteDetails[i].transactionLimit
                        		siteName=item.siteDetails[i].siteName
                        		siteAddress=item.siteDetails[i].siteAddress
                        		
                        	}else{
                        		purdesignation2=item.purchaseDeptContact[i].designation
                        		accdesignation2=item.accountsDeptContact[i].designation
                        		sitedesignation2=item.siteDetails[i].designation 
                        		purcontactName2=item.purchaseDeptContact[i].contactName
                        		acccontactName2=item.accountsDeptContact[i].contactName
                        		sitecontactName2=item.siteDetails[i].contactName 
                        		purMobileNo21=item.purchaseDeptContact[i].mobileNo1 
                        		purMobileNo22=item.purchaseDeptContact[i].mobileNo2 
                        		accMobileNo2=item.accountsDeptContact[i].mobileNo
                        		siteMobileNo2=item.siteDetails[i].mobileNo
                        		if(puremailId==null){
                        		puremailId=item.purchaseDeptContact[i].emailId
                        		}if(accemailId==null){
                        		accemailId=item.accountsDeptContact[i].emailId
                        		}if(siteemailId==null){
                        		siteemailId=item.siteDetails[i].emailId
                        		}
                        		transactionLimit=item.siteDetails[i].transactionLimit                      		
                        		siteName=item.siteDetails[i].siteName
                        		siteAddress=item.siteDetails[i].siteAddress
                        		

	                        	}
                        	}           	
                	}
                    var aItem = {id:item.customerId, customerName: item.customerName, customerShortName: item.customerShortName , emailId1: item.emailId1 , 
                            emailId2: item.emailId2, introducedBy: item.introducedBy, officeContact1: item.officeContact1, officeContact2: item.officeContact2,
                            officeContact3: item.officeContact3, officeContact4: item.officeContact4, tinGstNo:item.tinGstNo, cinNo: item.cinNo, cstNo: item.cstNo, 
                            address: item.address, registeredOfficeAddress: item.registeredOfficeAddress, headOfficeAddress: item.headOfficeAddress,
                            purdesignation1:purdesignation1,purdesignation2:purdesignation2,purcontactName1:purcontactName1,purcontactName2:purcontactName2,purMobileNo11:purMobileNo11,purMobileNo21:purMobileNo21,
                            purMobileNo12:purMobileNo12,purMobileNo22:purMobileNo22,puremailId:puremailId,accdesignation1:accdesignation1,accdesignation2:accdesignation2,
                            acccontactName1:acccontactName1,acccontactName2:acccontactName2,accMobileNo1:accMobileNo1,accMobileNo2:accMobileNo2,accemailId:accemailId,sitedesignation1:sitedesignation1,
                            sitedesignation2:sitedesignation2,sitecontactName1:sitecontactName1,sitecontactName2:sitecontactName2,siteMobileNo1:siteMobileNo1,siteMobileNo2:siteMobileNo2,
                            siteemailId:siteemailId,transactionLimit:transactionLimit,siteName:siteName,siteAddress:siteAddress
                            

                            };
                    return JSON.stringify(aItem);
                });
                return process(resultList);
            }
        });
    },

 matcher: function (obj) {
        var item = JSON.parse(obj);
        return ~item.customerName.toLowerCase().indexOf(this.query.toLowerCase())
    },

    sorter: function (items) {          
       var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
        while (aItem = items.shift()) {
            var item = JSON.parse(aItem);
            if (!item.customerName.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(JSON.stringify(item));
            else if (~item.customerName.indexOf(this.query)) caseSensitive.push(JSON.stringify(item));
            else caseInsensitive.push(JSON.stringify(item));
        }
        return beginswith.concat(caseSensitive, caseInsensitive)
    },


    highlighter: function (obj) {
        var item = JSON.parse(obj);
        var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
        return item.customerName.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
            return '<strong>' + match + '</strong>'
        })
    } ,

    updater: function (obj) {
        var item = JSON.parse(obj);
        $('#customerName').val(item.customerName);
        $('#customerShortName').val(item.customerShortName);
        $('#customerIntroducedBy').val(item.introducedBy);
        $('#officeAddress').val(item.address);
		$('#officeContact1').val(item.officeContact1);
		$('#officeContact2').val(item.officeContact2);
		$('#officeContact3').val(item.officeContact3);
		$('#officeContact4').val(item.officeContact4);
		$('#tinGstNo').val(item.tinGstNo);
		$('#cinNo').val(item.cinNo);
		$('#cstNo').val(item.cstNo);
		$('#officeEmail1').val(item.emailId1);
		$('#officeEmail2').val(item.emailId2);
		$('#headOfficeAddress').val(item.headOfficeAddress);
		$('#regionalOfficeAddress').val(item.registeredOfficeAddress);


		 $('#purchaseDesignation1').val(item.purdesignation1);
	        $('#purchaseDesignation2').val(item.purdesignation2);
	        $('#purchaseContactName1').val(item.purcontactName1);
	        $('#purchaseContactName2').val(item.purcontactName2);
	        $('#purchaseMobileNo11').val(item.purMobileNo11);
			$('#purchaseMobileNo12').val(item.purMobileNo12);
			$('#purchaseMobileNo21').val(item.purMobileNo21);
			$('#purchaseMobileNo22').val(item.purMobileNo22);
			$('#purchaseEmailId').val(item.puremailId);

			
			$('#accountsDesignation1').val(item.accdesignation1);
			$('#accountsDesignation2').val(item.accdesignation2);
			$('#accountsContactName1').val(item.acccontactName1);
			$('#accountsContactName2').val(item.acccontactName2);
			$('#accountsMobileNo1').val(item.accMobileNo1);
			$('#accountsMobileNo1').val(item.accMobileNo2);
			$('#accountsEmailId').val(item.accemailId);

			$('#siteName').val(item.siteName);
			$('#siteAddress').val(item.siteAddress);
			$('#siteDesignation1').val(item.sitedesignation1);
			 $('#siteDesignation2').val(item.sitedesignation2);
		        $('#siteContactName1').val(item.sitecontactName1);
		        $('#siteContactName2').val(item.sitecontactName2);
		        $('#siteMobileNo1').val(item.siteMobileNo1);
		        $('#siteMobileNo2').val(item.siteMobileNo2);
				$('#siteEmailId').val(item.siteemailId);
				$('#transactionAmountLimit').val(item.transactionLimit);
				
		
        return item.name;
    }  
});
});
</script>


</head>

<body class="nav-md">
	
					<!-- /menu footer buttons -->
					
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<!--<h3>CUSTOMER MASTER</h3>-->
						</div>


					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>CUSTOMER MASTER</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<br />
									<form id="demo-form2" data-parsley-validate
										class="form-horizontal form-label-left">

										<div class="left-whole-design">
											<div class="form-design">
												<table class="table" style="width: 57%; float: right;">
													<tr>
														<td style="width: 70%; text-align: end;">Search By
															Customer Code/Name</td>
														<td><input type="text" id="searchCustomer"
															name="searchCustomer"></td>
													</tr>
												</table>
											</div>

											<div class="supplier-view" id="customer">
												<table class="customer_table">
													<tr>
														<!--<th style="width:1%;"><img src="images/Plus_Sign.png" class="addrow" style="width:21px;"></th>-->
														<th style="width: 1%;">S.No</th>
														<th>Customer Code</th>
														<th>Customer Name</th>
														<th>Customer Alais Name</th>
														<th>Address1</th>
														<th>Address2</th>
														<th>Pin Code</th>
														<th>Office Phone</th>
														<th>Contact Person</th>
														<th>Mobile</th>
														<th>Fax</th>
														<th>E-Mail</th>
														<th>Tin No</th>
														<th>CST No</th>
														<th style="border: none;">CST Date</th>
														<th style="border: none;"></th>
														<!--<th style="width: 2%;">Delete</th> -->
													</tr>
													<tr id="remove_customer">
														<!--<td><input type="text"></td>-->
														<td><input type="text" value="1"
															style="text-align: center;"></td>
														<td><input type="text" id="gridCustomerCode"
															name="gridCustomerCode"></td>
														<td><input type="text" id="gridCustomerName"
															name="gridCustomerName"></td>
														<td><input type="text" id="gridCustomerAlias"
															name="gridCustomerAlias"></td>
														<td><input type="text" id="gridAddress1"
															name="gridAddress1"></td>
														<td><input type="text" id="gridAddress2"
															name="gridAddress2"></td>
														<td><input type="text" id="gridPinCode"
															name="gridPinCode"></td>
														<td><input type="text" id="gridOfficePhone"
															name="gridOfficePhone"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text"></td>
														<td><input type="text" class="cFrom"></td>
														<td style="width: 1px; border: none;"><input
															type="text" tabindex="19" name="last_1"
															class="inputss 2st" id="last_1" readonly /></td>
														<!--<td style="padding:0px; background: #fff;text-align: center;"><img src="images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td> -->
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
   
    html = '<tr id="remove_customer">';
    //html +='<td style="background: #fff; border-right: 1px solid #bbb;"><input type="checkbox" style="width:55px; height:15px;margin-top:3px;"/></td>';
    html += '<td style="background: #fff; text-align: center;">' + i + '</td>';
   
    html += '<td><input type="text"></td></td>';
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
 
    html += '<td><input type="text" class="cFrom"></td>';
    html += '<td style="width: 1px; border: none;"><input type="text" tabindex="19" name="last_1" class="inputss 2st" id="last_1" readonly/></td>';
    html += '</tr>';
     $('.customer_table').append(html);
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
											<div class="whole-payment">
												<div class="supplier-list">
													<fieldset>
														<legend class="customer_legend">
															<b>Customer Master</b>
														</legend>
														<table class="sub-table-cust1">
															<tr>
																<td class="text-sub">Customer Register Name</td>
																<td><input type="text" id="customerName"
																	name="customerName"></td>

																<td class="text-sub">Customer Short Cut Name</td>
																<td><input type="text" id="customerShortName"
																	name="customerShortName"></td>
															</tr>

															<tr>
																<td class="text-sub">Customer Introduced by</td>
																<td><input type="text" id="customerIntroducedBy"
																	name="customerIntroducedBy"></td>
																<td class="text-sub">Office Address</td>
																<td><input type="text" id="officeAddress"
																	name="officeAddress"></td>
															</tr>

															<tr>
																<td class="text-sub">Head Office Address</td>
																<td><input type="text" id="headOfficeAddress"
																	name="headOfficeAddress"></td>

																<td class="text-sub">Regional Office Address</td>
																<td><input type="text" id="regionalOfficeAddress"
																	name="regionalOfficeAddress"></td>

															</tr>

															<tr>
																<td class="text-sub">Office Contact No-1</td>
																<td><input type="text" id="officeContact1"
																	name="officeContact1"></td>

																<td class="text-sub">Office Contact No-2</td>
																<td><input type="text" id="officeContact2"
																	name="officeContact2"></td>
															</tr>

															<tr>
																<td class="text-sub">Office Contact No-3</td>
																<td><input type="text" id="officeContact3"
																	name="officeContact3"></td>

																<td class="text-sub">Office Contact No-4</td>
																<td><input type="text" id="officeContact4"
																	name="officeContact4"></td>
															</tr>

															<tr>
																<td class="text-sub">Office Email ID-1</td>
																<td><input type="text" id="officeEmail1"></td>

																<td class="text-sub">Office Email ID-2</td>
																<td><input type="text" id="officeEmail2"></td>
															</tr>

															<tr>
																<td class="text-sub">Web Site Address</td>
																<td><input type="text"></td>

																<td class="text-sub">TIN / GST No.</td>
																<td><input type="text" id="tinGstNo"
																	name="tinGstNo"></td>
															</tr>

															<tr>
																<td class="text-sub">CST No</td>
																<td><input type="text" id="cstNo" name="cstNo"></td>

																<td class="text-sub">Company / Proprietor /
																	Partnership</td>
																<td><input type="text" id="cpp" name="cpp"></td>
															</tr>

															<tr>
																<td class="text-sub">CIN No</td>
																<td><input type="text" id="cinNo" name="cinNo"></td>
																<td class="text-sub">Billing Period</td>
																<td><input type="text" id="billingPeriod"
																	name="billingPeriod"></td>
															</tr>
															<tr>
																<td class="text-sub">Payment Terms</td>
																<td><input type="text" id="paymentTerms"
																	name="paymentTerms"></td>
																<td class="text-sub">PAN No.</td>
																<td><input type="text" id="panNo" name="panNo"></td>
															</tr>
														</table>
														<div class="open_blnc">
															<fieldset>
																<legend class="legend" id="open_legend-pur">Purchase
																	Department:</legend>
																<table>
																	<tr>
																		<td class="text-sub">Contact Person Name-1</td>
																		<td><input type="text" id="purchaseContactName1"
																			name="purchaseContactName1"></td>
																		<td class="text-sub">Contact Person Name-2</td>
																		<td><input type="text" id="purchaseContactName2"
																			name="purchaseContactName2"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Designation</td>
																		<td><input type="text" id="purchaseDesignation1"
																			name="purchaseDesignation1"></td>
																		<td class="text-sub">Designation</td>
																		<td><input type="text" id="purchaseDesignation2"
																			name="purchaseDesignation2"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Mobile No1.</td>
																		<td><input type="text" id="purchaseMobileNo11"
																			name="purchaseMobileNo11"></td>
																		<td class="text-sub">Mobile No1.</td>
																		<td><input type="text" id="purchaseMobileNo21"
																			name="purchaseMobileNo21"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Mobile No1.</td>
																		<td><input type="text" id="purchaseMobileNo12"
																			name="purchaseMobileNo12"></td>
																		<td class="text-sub">Mobile No1.</td>
																		<td><input type="text" id="purchaseMobileNo22"
																			name="purchaseMobileNo22"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Email Id</td>
																		<td><input type="text" id="purchaseEmailId"
																			name="purhcaseEmailId"></td>
																	</tr>
																</table>
															</fieldset>
														</div>

														<div class="open_blnc">
															<fieldset>
																<legend class="legend" id="open_legend-pur">Account
																	Department:</legend>
																<table>
																	<tr>
																		<td class="text-sub">Contact Person Name-1</td>
																		<td><input type="text" id="accountsContactName1"
																			name="accountsContactName1"></td>
																		<td class="text-sub">Contact Person Name-2</td>
																		<td><input type="text" id="accountsContactName2"
																			name="accountsContactName2"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Designation</td>
																		<td><input type="text" id="accountsDesignation1"
																			name="accountsDesignation1"></td>
																		<td class="text-sub">Designation</td>
																		<td><input type="text" id="accountsDesignation2"
																			name="accountsDesignation2"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Mobile No.</td>
																		<td><input type="text" id="accountsMobileNo1"
																			name="accountsMobileNo1"></td>
																		<td class="text-sub">Mobile No.</td>
																		<td><input type="text" id="accountsMobileNo2"
																			name="accountsMobileNo2"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Email Id</td>
																		<td><input type="text" id="accountsEmailId"
																			name="accountsEmailId"></td>
																	</tr>
																</table>
															</fieldset>
														</div>

														<div class="open_blnc">
															<fieldset>
																<legend class="legend" id="open_legend">Site
																	Office Details:</legend>
																<table>
																	<tr>
																		<td class="text-sub">Site / Project Name</td>
																		<td><input type="text" id="siteName"
																			name="siteName"></td>
																		<td class="text-sub">Site Delivery Address</td>
																		<td><input type="text" id="siteAddress"
																			name="siteAddress"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Contact Person Name-1</td>
																		<td><input type="text" id="siteContactName1"
																			name="siteContactName1"></td>
																		<td class="text-sub">Contact Person Name-2</td>
																		<td><input type="text" id="siteContactName2"
																			name="siteContactName2"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Designation</td>
																		<td><input type="text" id="siteDesignation1"
																			name="siteDesignation1"></td>
																		<td class="text-sub">Designation</td>
																		<td><input type="text" id="siteDesignation2"
																			name="siteDesignation2"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Mobile No.</td>
																		<td><input type="text" id="siteMobileNo1"
																			name="siteMobileNo1"></td>
																		<td class="text-sub">Mobile No.</td>
																		<td><input type="text" id="siteMobileNo2"
																			name="siteMobileNo2"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Email Id</td>
																		<td><input type="text" id="siteEmailId"
																			name="siteEmailId"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Transaction Amount Limit</td>
																		<td><input type="text"
																			id="transactionAmountLimit"
																			name="transactionAmountLimit"></td>
																	</tr>
																	<tr>
																		<td class="text-sub">Customer Active</td>
																		<td><input type="text" id="customerActive"
																			name="customerActive"></td>

																	</tr>

																</table>

															</fieldset>

														</div>




														<div class="open_blnc">
															<fieldset>
																<legend class="legend" id="open_legend">Opening
																	Balance:</legend>
																<table>
																	<tr>
																		<td style="text-align: end;">Date</td>
																		<td><input type="text" class="cFrom"></td>
																		<td style="text-align: end;">Balance</td>
																		<td><input type="text"></td>
																	</tr>

																</table>

															</fieldset>

														</div>
												</div>


												<div class="right-whole-design-sales"
													style="margin-left: 31%;">
													<table>
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
															<td><button type="button" class="button-sales"
																	id="updateCustomer" name="updateCustomer">
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

										<div class="right-whole-design-suppliers">
											<table>
												<tr>
													<td><button type="button" class="button-suppliers"
															id="saveCustomer" name="saveCustomer">
															<img src="resources/images/add.png" style="width: 53%;"></br>Save
														</button></td>

												</tr>
												<tr>
													<td><button type="button" class="button-suppliers">
															<img src="resources/images/exit.png"></br>Exit
														</button></td>

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
			<script type="text/javascript">
           /*  $(function() {

                //Timepicker
                $(".timepicker").timepicker({
                    showInputs: false;
                });
            }); */
        </script>
			<script type="text/javascript">
           /*  $(document).ready(function () {
                
                $('.cFrom').datepicker({
                    //format: "dd/mm/yyyy"
					format: "dd/mm/yyyy"
                });  
				
				 
          
            }); */
        </script>
</body>
