<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	  
    <title>Sri Ganapathy Enterprises! | </title>
    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <script src="../build/js/bootstrap.min.js"></script>
    
    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome --><link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- bootstrap-wysiwyg -->
    <link href="../vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
    <!-- Select2 -->
    <link href="../vendors/select2/dist/css/select2.min.css" rel="stylesheet">
    <!-- Switchery -->
    <link href="../vendors/switchery/dist/switchery.min.css" rel="stylesheet">
    <!-- starrr -->
    <link href="../vendors/starrr/dist/starrr.css" rel="stylesheet">
    <!-- bootstrap-daterangepicker -->
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="../build/css/custom.min.css" rel="stylesheet">
      <link href="../build/css/style.css" rel="stylesheet">
	<link rel="stylesheet" href="../build/css/datepicker.css" type="text/css">
	<style>
	  .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;
      border-top: 0px solid #ddd;  
}
.form-field tr td input{
  padding:0px;
}
.form-field tr td{
  padding:0px;
}
.drop{
  diplay:none;
  
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
fieldset{
      border: 1px solid #b4adad;
    padding: 0px 6px;
    padding-bottom: 12px;
}	
  .legend{
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
    background: cadetblue;
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
    	
    	$(".supplier_table").append('<tr id="remove_supplier"><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff;text-align: center;"><img src="images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td></tr>'); 
    	  
    	
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
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title" style="font-size:21px"><img src="images/logo.png" style="width:40px;"> <span>SRI GANAPATHY </br>ENTERPRISES</span></a>
            </div>

            <div class="clearfix"></div>

             

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li id="wrapper"><a><i class="fa fa-home"></i> Home </a>
                     
                  </li>
                  <li class="drop"><a><i class="fa fa-edit"></i> Purchase <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="purchase_entry_level1.html">Purchase Entry Level 1</a></li>
		      <li><a href="purchase_entry_level2.html">Purchase Entry Level 2</a></li>
		      <li><a href="crusher_entry.html">Crusher Entry</a></li> 
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> Sales Order <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     <li><a href="sales_entry.html">Sales Entry</a></li>
                    </ul>
                  </li>
		  <li><a><i class="fa fa-clipboard"></i> Others <span class="fa fa-chevron-down"></span></a>
		    <ul class="nav child_menu">
		      <li><a href="cash_bill.html">Cash Bill</a></li>
		      <li><a href="advance_amt.html">Advance Amount</a></li>
		      <li><a href="fuel.html">Fuel</a></li>
		      <li><a href="quotation.html">Quotation</a></li>
		      <li><a href="own_vehicle_detail.html">Own Vehicle Detail</a></li>
		      
		    </ul>
		  
		  
		  </li> 
                  <li id="sec"><a><i class="fa fa-table"></i> Master<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" id="child-show">
		      <li><a href="customer_master.html">Customer Master</a></li>
                     <li id="se"><a href="vendor_master.html">Vendor Master<span class="fa fa-chevron-down"></span></a>
		     <ul class="nav child_menu" id="child-shows">
		   <li><a href="crusher_master.html">Crusher Master</a></li>
		     </ul>
		     
		     </li>
		     <li><a href="Item_master.html">Item Master</a></li>
                      <li><a href="site_master.html">Site Master</a></li>
		      <li><a href="transport_master.html">Transport Master</a></li>
		      <li><a href="unit_master.html">Unit Master</a></li>
                    </ul>
                  </li>
                   
                  <li><a><i class="fa fa-clone"></i>Reports <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     <li><a href="sales_invoice_report.html">Material Delivery Details</a></li>
		      <li><a href="purchases_entry_report.html">Purchase Details</a></li>
		      <li><a href="sales_details_report.html">Sales Details</a></li>
		      <li><a href="vehicle_and_crusher_report.html">Vehicle Wise</a></li>
                      <li><a href="transport_wise_report.html">Transporter wise rental Details</a></li>
		      <li><a href="sales_quantity_report.html">Sales Quantity</a></li>
		      <li><a href="pe_bookwise.html">PE Bookwise</a></li>
		      <li><a href="total_pe_report.html">Total PE Report</a></li>
		      <li><a href="unbilled_dc_details.html">UnBilled DC</a></li>
		      <li><a href="vehicle_measurement_report.html">Vehicle Measurement Details</a></li>
		      <li><a href="purchase_and_sales_report.html">Purchase And Sales Report</a></li>
		      <!--<li><a href="cash_bill.html">Cash Bill</a></li>-->
		      <li><a href="#">Tally Export Report</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
               

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
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
                    <h2>CRUSHER MASTER</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                    
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
			 <!-- <th style="width:1%;"><img src="images/Plus_Sign.png" class="addrow" style="width:21px;"></th>-->
			  <th style="width:1%;">S.No</th>
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
			<th style="border:none;">Transaction Amount Limit</th>
			<th style="border:none;"></th>
			<!--<th style="width: 2%;">Delete</th> -->
                        </tr>
			 <tr id="remove_supplier">
			  <!--<td><input type="text"></td>-->
			  <td><input type="text" value="1" style="text-align:center;"></td>
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
				  <td style="width: 1px;border: none;"><input type="text" tabindex="19" name="last_1" class="inputss 2st" style="border-left: none;" id="last_1" readonly/></td>
				 <!-- <td style="padding:0px; background: #fff;text-align: center;"><img src="images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td> -->
				     
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
		     
		     
		     <!--<ul class="nav nav-tabs" id="menus-nav">
    <li class="active"><a data-toggle="tab" onclick="register()" href="#home">Registered Vendor</a></li>
    <li><a data-toggle="tab" href="#menu1" id="unreg">UnRegistered Vendor</a></li>
   
  </ul>-->

  <div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <div class="supplier-list">
		      
		       
			 <fieldset>
  <legend class="supplier_legend" id="sub-legend"><b>Crusher Vendor</b></legend>
   <table class="sub-table-cust1">
    <tr>
      <td class="text-sub">Crusher Type</td>
      <td><select><option>-- Select --</option><option>Manufacturing</option><option>Trading</option></select></td>
      <td class="text-sub">Crusher Model</td>
      <td><select><option>-- Select --</option><option>VSI</option><option>Cone</option></select></td>
 
    
    <tr>
     <td class="text-sub">Crusher Registered Name</td>
      <td><input type="text"></td>
       
      
<td class="text-sub">Alais Name</td>
      <td><input type="text"></td>
       
    </tr>
    
    <tr>
      
      <td class="text-sub">Materials</td>
      <td><input type="text"></td>
      <td class="text-sub">Location</td>
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
    <tr>
      <td class="text-sub">Residential Address</td>
      <td><input type="text"></td>
      
      <td class="text-sub">Residential Land Line No</td>
      <td><input type="text"></td>
    </tr>
     <tr>
      <td class="text-sub">Proprietor / Partnership / Company Ltd</td>
      <td><input type="text"></td>
      
     </tr>
    <tr>
      <td class="text-sub">TIN / GST No</td>
      <td><input type="text"></td>
      
      <td class="text-sub">CST No</td>
      <td><input type="text"></td>
 
      
    </tr>
    <tr>
      <td class="text-sub">CIN No</td>
      <td><input type="text"></td>
      
      <td class="text-sub">Email ID</td>
      <td><input type="text"></td>
 
      
    </tr>
     <tr>
      <td class="text-sub22">Bank Details-Add Multiple Account</td>
     
     </tr>
     <tr>
      <td class="text-sub">A/c Holder Name</td>
      <td><input type="text"></td>
      
      <td class="text-sub">A/c No</td>
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
   <tr>
      <td class="text-sub">Crusher Active</td>
      <td><input type="text"></td>
      
    </tr>
   </table>
    
   
   
   <div class="open_blnc">
			<fieldset>
  <legend class="legend" id="supplier_legend2">Opening Balance</legend>
  <table>
    <tr>
      <td style="text-align:end;">Date</td>
      <td><input type="text" id="cTo1"></td>
      <td style="text-align:end;">Balance</td>
      <td><input type="text"></td>
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
  <legend class="supplier_legend"><b>UnRegistered Vendor</b></legend>
   <table class="sub-table-cust1">
    <tr>
      <td class="text-sub">Vendor Type</td>
      <td><!--<select>
	<option></option>
	<option></option>
	<option></option>
	<option></option>
<option></option>
<option></option>
	
      </select>-->
	
	
	<input type="text"></td>
      
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
      <td class="text-sub22">Bank Details-Add Multiple Account</td>
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
  <legend class="legend" id="supplier_legend2">opening Balance</legend>
  <table>
    <tr>
      <td style="text-align:end;">Date</td>
      <td><input type="text" id="cTo1"></td>
      <td style="text-align:end;">Balance</td>
      <td><input type="text"></td>
    </tr>
    
  </table>
  
 </fieldset>
			
		      </div> 
 </fieldset>
			
		      
		      
		      
		      
		     </div>
    </div>
     
  </div>
</div> <div class="right-whole-design-suppliers" style="float:left;">
		      <table>
			<tr>
			  <td><button type="button" class="button-suppliers"><img src="images/add.png" style="width: 53%;"></br>Save</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-suppliers"><img src="images/printing.png"></br>Print</<button></td>
			  
			</tr>
			 
			<tr>
			  <td><button type="button" class="button-suppliers"><img src="images/exit.png"></br>Exit</button></td>
			  
			</tr>
			
		      </table>
		      
		      
		    </div>
		     
		    <div class="whole-payment">
		     
		    
		
		    
		    <div class="right-whole-design-sales" style="margin-left: 31%;">
		      <table>
			<tr>
			  <td><button type="button" class="button-sales"><img src="images/edit.png"></br>Edit</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="images/remove.png"></br>Delete</<button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="images/update.png"></br>Update</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="images/cancel.png"></br>Cancel</button></td>
			  
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
          <div class="pull-right">
             
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- Bootstrap -->
    <script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="../vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="../vendors/moment/min/moment.min.js"></script>
    <script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- bootstrap-wysiwyg -->
    <script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="../vendors/google-code-prettify/src/prettify.js"></script>
    <!-- jQuery Tags Input -->
    <script src="../vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
    <!-- Switchery -->
    <script src="../vendors/switchery/dist/switchery.min.js"></script>
    <!-- Select2 -->
    <script src="../vendors/select2/dist/js/select2.full.min.js"></script>
    <!-- Parsley -->
    <script src="../vendors/parsleyjs/dist/parsley.min.js"></script>
    <!-- Autosize -->
    <script src="../vendors/autosize/dist/autosize.min.js"></script>
    <!-- jQuery autocomplete -->
    <script src="../vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
    <!-- starrr -->
    <script src="../vendors/starrr/dist/starrr.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="../build/js/custom.min.js"></script>
<script src="../build/js/bootstrap-datepicker.js"></script>
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
	<div class="datepicker-days" style="display: block;line-height: 0px;">
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
					<td class="day  new">3</td
					><td class="day  new">4</td>
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
					<td colspan="7">
						<span class="month">Jan</span>
						<span class="month">Feb</span>
						<span class="month">Mar</span>
						<span class="month">Apr</span>
						<span class="month">May</span>
						<span class="month active">Jun</span>
						<span class="month">Jul</span>
						<span class="month">Aug</span>
						<span class="month">Sep</span>
						<span class="month">Oct</span>
						<span class="month">Nov</span>
						<span class="month">Dec</span>
					</td>
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
					<td colspan="7">
						<span class="year old">2009</span>
						<span class="year">2010</span>
						<span class="year">2011</span>
						<span class="year">2012</span>
						<span class="year">2013</span>
						<span class="year">2014</span>
						<span class="year">2015</span>
						<span class="year active">2016</span>
						<span class="year">2017</span>
						<span class="year">2018</span>
						<span class="year">2019</span>
						<span class="year old">2020</span>
					</td>
				</tr>
			</tbody>
		</table>
		</div>
          </div>
	
  </body>
</html>