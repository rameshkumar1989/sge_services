<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="BaseParent.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	  
    <title>Sri Ganapathy Enterprises! | </title>

	<c:set var="customerCode" value="${customerCode}"/>
	
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
    display: block;
    width: 10%;
    padding: 3px;
    margin-bottom: 20px;
    font-size: 15px;
    color: #004467;
    border: 0;
}
fieldset{
      border: 1px solid #b4adad;
    padding: 0px 6px;
    padding-bottom: 12px;
}	
  .legend{
  display: block;
    width: 14%;
    padding: 3px;
    margin-bottom: 20px;
    font-size: 15px;
    color: #004467;
    border: 0;
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
$("document").ready(function(){
	 var i=1;
	 
      $('.addrow').click(function() 
     {
    	
    	$(".customer_table").append('<tr id="remove_customer"><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff;text-align: center;"><img src="resources/images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td></tr>'); 
    	  
    	
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
    </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="#" class="site_title" style="font-size:21px"><img src="resources/images/logo.png" style="width:40px;"> <span>SRI GANAPATHY </br>ENTERPRISES</span></a>
            </div>

            <div class="clearfix"></div>
 
            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li id="wrapper"><a><i class="fa fa-home"></i> Home</a>
                     
                  </li>
                  <li class="drop"><a><i class="fa fa-edit"></i> Purchase <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="purchase_entry_screen.html">Purchase Entry Level 1</a></li>
		      <li><a href="purchase_entry.html">Purchase Entry Level 2</a></li>
		      <li><a href="crusher_entry.html">Crusher Entry</a></li>
                       
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> Sales Order <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     <li><a href="sales_entry.html">Sales Entry</a></li>
                    </ul>
                  </li>
                  <li id="sec"><a><i class="fa fa-table"></i> Master<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" id="child-show">
		      <li><a href="customer_master.html">Customer Master</a></li>
                     <li><a href="supplier_master.html">Supplier Master</a></li>
		     <li><a href="item_master.html">Item Master</a></li>
                      <li><a href="site_master.html">Site Master</a></li>
		      <li><a href="transport_master.html">Transport Master</a></li>
		      <li><a href="unit_master.html">Unit Master</a></li>
                    </ul>
                  </li>
                  
                  <li><a><i class="fa fa-clone"></i>Reports <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="#">Material Delivery Details</a></li>
		      <li><a href="purchases_entry_report.html">Purchase Details</a></li>
		      <li><a href="sales_details_report.html">Sales Details</a></li>
		      <li><a href="vehicle_and_crusher_report.html">Vehicle Wise</a></li>
                      <li><a href="transport_wise_report.html">Transporter wise rental Details</a></li>
		      <li><a href="#">Sales Quantity</a></li>
		      <li><a href="pe_bookwise.html">PE Bookwise</a></li>
		      <li><a href="#">Total PE Report</a></li>
		      <li><a href="unfilled_dc_details.html">UnBilled DC</a></li>
		      <li><a href="vehicle_measurement_report.html">Vehicle Measurement Details</a></li>
		      <li><a href="purchase_and_sales_report.html">Purchase And Sales Report</a></li>
		      <li><a href="#">Cash Bill</a></li>
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
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                    
		    <div class="left-whole-design">
		    <div class="form-design">
		      <table class="table" style="width: 57%; float: right;">
			<tr>
			 
			   
			  <td style="width: 70%;text-align: end;">Search By Customer Code/Name</td>
			  <td><input type="text"></td>
			</tr>
			 
			
		      </table>
		      
		      
		    </div>
		    
		    
		    
		    
		    <div class="supplier-view" id="customer">
		      
		      <table class="customer_table">
			 
			<tr>
			  <th style="width:1%;"><img src="resources/images/Plus_Sign.png" class="addrow" style="width:21px;"></th>
			  <th style="width:1%;">S.No</th>
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
			<th>CST Date</th>
			<th style="width: 2%;">Delete</th> 
                        </tr>
			 <tr id="remove_customer">
			  <td><input type="text"></td>
			  <td><input type="text"></td>
			  <td ><input type="text" id="customerCode" name="customerCode" value=${customerCode} style="text-align:center;"></td>
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
				    <td style="padding:0px; background: #fff;text-align: center;"><img src="resources/images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td> 
			</tr>
			  <!--<tr>
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
				     
			</tr>
			   <tr>
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
				     
			</tr>
			    <tr>
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
				     
			</tr>
			     <tr>
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
				     
			</tr>-->
		      </table>
		      
		    </div>
		     
		    <div class="whole-payment">
		     
		     <div class="supplier-list">
		      
		       
			 <fieldset>
  <legend><b>Customer Master</b></legend>
   <table class="sub-table1">
    <tr>
      <td class="text-sub">Customer Code</td>
      <td><input type="text"></td>
       
    </tr>
    
    <tr>
      <td class="text-sub">Customer Name</td>
      <td><input type="text"></td>
      
    </tr>
    
    <tr>
      <td class="text-sub">Customer Alais Name</td>
      <td><input type="text"></td>
      
    </tr>
    
    <tr>
      <td class="text-sub">Address 1</td>
      <td><input type="text" style="width:95%;"></td>
      
    </tr>
    
    <tr>
      <td class="text-sub">Address 2</td>
      <td><input type="text"  style="width:95%;"></td>
       
    </tr>
    
    <tr>
      <td class="text-sub">City</td>
      <td><input type="text"></td>
       
    </tr>
    
    <tr>
      <td class="text-sub">Pin Code</td>
      <td><input type="text"></td>
       
    </tr>
    
    <tr>
      <td class="text-sub">Office Phone</td>
      <td><input type="text"></td>
       
    </tr>
   </table>
   <table class="sub-table2">
    <tr>
       <td class="text-sub2">Contact Person</td>
      <td><input type="text"></td>
    </tr>
    
    <tr>
       <td class="text-sub2">Mobile</td>
      <td><input type="text"></td>
    </tr>
    
    <tr>
       <td class="text-sub2">Fax</td>
      <td><input type="text"></td>
    </tr>
    
    <tr>
      <td class="text-sub2">E-mail</td>
      <td><input type="text"></td>
    </tr>
    
    <tr>
      <td class="text-sub2">Tin No</td>
      <td><input type="text"></td>
    </tr>
    
    <tr>
       <td class="text-sub2">CST No</td>
      <td><input type="text"></td>
    </tr>
    
    <tr>
      <td class="text-sub2">CST Date</td>
      <td><input type="text"></td>
    </tr>
    
    
   </table>
   
   
   <div class="open_blnc">
			<fieldset>
  <legend class="legend">opening Balance:</legend>
  <table>
    <tr>
      <td>Date</td>
      <td><input type="text"></td>
      <td>Balance</td>
      <td><input type="text"></td>
    </tr>
    
  </table>
  
 </fieldset>
			
		      </div>
 </fieldset>
			
		      
		      
		      
		      
		     </div>
		
		    
		    <div class="right-whole-design-sales" style="margin-left: 31%;">
		      <table>
			<tr>
			  <td><button type="button" class="button-sales"><img src="resources/images/edit.png"></br>Edit</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="resources/images/remove.png"></br>Delete</<button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="resources/images/update.png"></br>Update</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="resources/images/cancel.png"></br>Cancel</button></td>
			  
			</tr>
			
			 
		      </table>
		      
		      
		    </div>
		    
		    </div>
		    
		        
			
			</div>
		    
		    <div class="right-whole-design-suppliers">
		      <table>
			<tr>
			  <td><button type="button" class="button-suppliers"><img src="resources/images/add.png" style="width: 53%;"></br>Save</button></td>
			  
			</tr>
			 <tr>
			  <td><button type="button" class="button-suppliers"><img src="resources/images/exit.png"></br>Exit</button></td>
			  
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
          <div class="pull-right">
             
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
	
  </body>
</html>
