<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	  
    <title>Sri Ganapathy Enterprises! | </title>
<!-- jQuery -->
<spring:url value="/resources/vendors/jquery/dist/jquery.min.js" var="coreJs" />

<script src="${coreJs}"></script>

<script>

$(function() {
$('#vendorName').typeahead({
    source: function (query, process) {
        return $.ajax({
            url: 'vendorName',
            type: 'post',
            data: { name : query },
            dataType: 'json',
            success: function (result) {

                var resultList = result.map(function (item) {
                    var aItem = {name: item.vendorName ,address1:item.address1,address2:item.address2, mobile: item.mobile,email:item.email};
                    return JSON.stringify(aItem);
                });

                return process(resultList);

            }
        });
    },

 matcher: function (obj) {
        var item = JSON.parse(obj);
        return ~item.name.toLowerCase().indexOf(this.query.toLowerCase())
    },

    sorter: function (items) {          
       var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
        while (aItem = items.shift()) {
            var item = JSON.parse(aItem);
            if (!item.name.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(JSON.stringify(item));
            else if (~item.name.indexOf(this.query)) caseSensitive.push(JSON.stringify(item));
            else caseInsensitive.push(JSON.stringify(item));
        }

        return beginswith.concat(caseSensitive, caseInsensitive)

    },


    highlighter: function (obj) {
        var item = JSON.parse(obj);
        var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
        return item.name.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
            return '<strong>' + match + '</strong>'
        })
    } ,

    updater: function (obj) {
        var item = JSON.parse(obj);
        $('#address1').val(item.address1);
        $('#address2').val(item.address2);
        $('#email').val(item.email);
        $('#mobile').val(item.mobile);
        return item.name;
    }  
});
});


$(function() {
	$('#customerName').typeahead({
	    source: function (query, process) {
	        return $.ajax({
	            url: 'customerName',
	            type: 'post',
	            data: { customerName : query },
	            dataType: 'json',
	            success: function (result) {

	                var resultList = result.map(function (item) {
	                    var aItem = {name: item.customerName};
	                    return JSON.stringify(aItem);
	                });

	                return process(resultList);

	            }
	        });
	    },

	 matcher: function (obj) {
	        var item = JSON.parse(obj);
	        return ~item.name.toLowerCase().indexOf(this.query.toLowerCase())
	    },

	    sorter: function (items) {          
	       var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
	        while (aItem = items.shift()) {
	            var item = JSON.parse(aItem);
	            if (!item.name.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(JSON.stringify(item));
	            else if (~item.name.indexOf(this.query)) caseSensitive.push(JSON.stringify(item));
	            else caseInsensitive.push(JSON.stringify(item));
	        }

	        return beginswith.concat(caseSensitive, caseInsensitive)

	    },


	    highlighter: function (obj) {
	        var item = JSON.parse(obj);
	        var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
	        return item.name.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
	            return '<strong>' + match + '</strong>'
	        })
	    } ,

	    updater: function (obj) {
	        var item = JSON.parse(obj);
	        return item.name;
	    }  
	});
	});




$(function() {
	
	$('#deliveryPlace').typeahead({		
	    source: function (query, process) {
	        return $.ajax({
	            url: 'deliveryPlace',
	            type: 'post',
	            data: { customerName :$('#customerName').val(),deliveryPlace: query },
	            dataType: 'json',
	            success: function (result) {

	                var resultList = result.map(function (item) {
	                    var aItem = {name: item.siteName};
	                    return JSON.stringify(aItem);
	                });

	                return process(resultList);

	            }
	        });
	    },

	 matcher: function (obj) {
	        var item = JSON.parse(obj);
	        return ~item.name.toLowerCase().indexOf(this.query.toLowerCase())
	    },

	    sorter: function (items) {          
	       var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
	        while (aItem = items.shift()) {
	            var item = JSON.parse(aItem);
	            if (!item.name.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(JSON.stringify(item));
	            else if (~item.name.indexOf(this.query)) caseSensitive.push(JSON.stringify(item));
	            else caseInsensitive.push(JSON.stringify(item));
	        }

	        return beginswith.concat(caseSensitive, caseInsensitive)

	    },


	    highlighter: function (obj) {
	        var item = JSON.parse(obj);
	        var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
	        return item.name.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
	            return '<strong>' + match + '</strong>'
	        })
	    } ,

	    updater: function (obj) {
	        var item = JSON.parse(obj);
	        return item.name;
	    }  
	});
	});



$(function() {
	
	$('#itemOfMetal').typeahead({		
	    source: function (query, process) {
	        return $.ajax({
	            url: 'itemDetail',
	            type: 'post',
	            data: {itemName : query },
	            dataType: 'json',
	            success: function (result) {

	                var resultList = result.map(function (item) {
	                    var aItem = {name: item.itemName};
	                    return JSON.stringify(aItem);
	                });

	                return process(resultList);

	            }
	        });
	    },

	 matcher: function (obj) {
	        var item = JSON.parse(obj);
	        return ~item.name.toLowerCase().indexOf(this.query.toLowerCase())
	    },

	    sorter: function (items) {          
	       var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
	        while (aItem = items.shift()) {
	            var item = JSON.parse(aItem);
	            if (!item.name.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(JSON.stringify(item));
	            else if (~item.name.indexOf(this.query)) caseSensitive.push(JSON.stringify(item));
	            else caseInsensitive.push(JSON.stringify(item));
	        }

	        return beginswith.concat(caseSensitive, caseInsensitive)

	    },


	    highlighter: function (obj) {
	        var item = JSON.parse(obj);
	        var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
	        return item.name.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
	            return '<strong>' + match + '</strong>'
	        })
	    } ,

	    updater: function (obj) {
	        var item = JSON.parse(obj);
	        return item.name;
	    }  
	});
	});





</script>    
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
    

<spring:url value="/resources/css/custom.min.css" var="coreCss" />
<spring:url value="/resources/css/style.css" var="styleCss" />
<link href="${coreCss}" rel="stylesheet" />
<link href="${styleCss}" rel="stylesheet" />
    <!-- Custom Theme Style -->
	
	<style>
	  .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 8px;
    line-height: 1.42857143;
    vertical-align: top;
      border-top: 0px solid #ddd;
      padding-right: 7px;
    text-align: center;
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
    	
    	$(".form-field").append('<tr id="remove_row"><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px;"><input type="text"></td><td style="padding:0px; background: #fff;"><img src="/sge_services/resources/images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td></tr>'); 
    	  
    	/*  $(".innertable1").append('<tr><td colspan="5" style="padding: 0px;border: none;"><div style="width:100%; margin: 0px;padding: 0px;border: 0px solid #919b9c;width: 100%; height: 250px;text-align: left;overflow: auto;font-size: 12px;"><table class="table innertable1" style="border: none;"><tr><td width="3%" style="padding: 0px;"></td><td width="25%" style="padding: 0px;"><select class="input"  name="siteallocation[${status.index}].category" id="${status.index}category" value="" style="border: none;" onchange="changeItem(${status.index})"><option value="">Select</option><c:forEach var="categoryList" items="${map.categoryList}"><option>${categoryList.category_name}</option></c:forEach></select></td><td width="25%" style="padding: 0px;"><select class="input"   name="siteallocation[${status.index}].item"     id="item${status.index}" value="" style="border: none;"><option>Select</option></select></td><td width="25%" style="padding: 0px;"><input type="text" class="input" placeholder="Quantity"  name="siteallocation[${status.index}].qty" value="" style="border: none;"></td><td width="3%" style="padding: 0px;text-align: center;"><a href="#" class="input"><img src="/resources/images/cancel.png" width=18 class="cancelbtn" style="cursor: pointer;" onclick="deleterow1()"></a></td></tr></table></div></td></tr>'); */	  	
    	
    	
    	
    	i++;
	});  
      
    });

    $("document").ready(function(){
	 var i=1;
	 
      $('.addrow2').click(function() 
     {
    	
    	$(".add_table").append('<tr id="remove_row2"><td><input type="text" style="width:60px;"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff; text-align: center;"><img src="/sge_services/resources/images/cancel_tab.png" onclick="deleterow2()" style="width:18px;"></td></tr>'); 
    	  
    	/*  $(".innertable1").append('<tr><td colspan="5" style="padding: 0px;border: none;"><div style="width:100%; margin: 0px;padding: 0px;border: 0px solid #919b9c;width: 100%; height: 250px;text-align: left;overflow: auto;font-size: 12px;"><table class="table innertable1" style="border: none;"><tr><td width="3%" style="padding: 0px;"></td><td width="25%" style="padding: 0px;"><select class="input"  name="siteallocation[${status.index}].category" id="${status.index}category" value="" style="border: none;" onchange="changeItem(${status.index})"><option value="">Select</option><c:forEach var="categoryList" items="${map.categoryList}"><option>${categoryList.category_name}</option></c:forEach></select></td><td width="25%" style="padding: 0px;"><select class="input"   name="siteallocation[${status.index}].item"     id="item${status.index}" value="" style="border: none;"><option>Select</option></select></td><td width="25%" style="padding: 0px;"><input type="text" class="input" placeholder="Quantity"  name="siteallocation[${status.index}].qty" value="" style="border: none;"></td><td width="3%" style="padding: 0px;text-align: center;"><a href="#" class="input"><img src="/resources/images/cancel.png" width=18 class="cancelbtn" style="cursor: pointer;" onclick="deleterow1()"></a></td></tr></table></div></td></tr>'); */	  	
    	
    	
    	
    	i++;
	});  
      
    });
    
    $("document").ready(function(){
	 var i=1;
	 
      $('.addrow3').click(function() 
     {
    	
    	$(".add_table2").append('<tr id="remove_row3"><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff; text-align: center;"><img src="/resources/images/cancel_tab.png" onclick="deleterow3()" style="width:18px;"></td></tr>'); 
    	  
    	/*  $(".innertable1").append('<tr><td colspan="5" style="padding: 0px;border: none;"><div style="width:100%; margin: 0px;padding: 0px;border: 0px solid #919b9c;width: 100%; height: 250px;text-align: left;overflow: auto;font-size: 12px;"><table class="table innertable1" style="border: none;"><tr><td width="3%" style="padding: 0px;"></td><td width="25%" style="padding: 0px;"><select class="input"  name="siteallocation[${status.index}].category" id="${status.index}category" value="" style="border: none;" onchange="changeItem(${status.index})"><option value="">Select</option><c:forEach var="categoryList" items="${map.categoryList}"><option>${categoryList.category_name}</option></c:forEach></select></td><td width="25%" style="padding: 0px;"><select class="input"   name="siteallocation[${status.index}].item"     id="item${status.index}" value="" style="border: none;"><option>Select</option></select></td><td width="25%" style="padding: 0px;"><input type="text" class="input" placeholder="Quantity"  name="siteallocation[${status.index}].qty" value="" style="border: none;"></td><td width="3%" style="padding: 0px;text-align: center;"><a href="#" class="input"><img src="/resources/images/cancel.png" width=18 class="cancelbtn" style="cursor: pointer;" onclick="deleterow1()"></a></td></tr></table></div></td></tr>'); */	  	
    	
    	
    	
    	i++;
	});  
      
    });
    
    function deleterow3()
    {
    
    if($(".add_table2 tr").length != 1)
    {
        $("#remove_row3").remove();
    }
    else
    {
        alert("You cannot delete first row");
    }
    }
    
    function deleterow2()
    {
    
    if($(".add_table tr").length != 1)
    {
        $("#remove_row2").remove();
    }
    else
    {
        alert("You cannot delete first row");
    }
    }
    
function deleterow()
    {
    
    if($(".form-field tr").length != 1)
    {
        $("#remove_row").remove();
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
              <a href="#" class="site_title" style="font-size:21px"><img src="/sge_services/resources/images/logo.png" style="width:40px;"> <span>SRI GANAPATHY </br>ENTERPRISES</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <!--<div class="profile clearfix">
              <div class="profile_pic">
                <img src="/resources/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>-->
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li id="wrapper"><a><i class="fa fa-home"></i> Home</a>
                    
                  </li>
                  <li class="drop" id="sec"><a><i class="fa fa-edit"></i> Purchase <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" id="child-show">
                      <li><a href="purchase_entry_screen.html">Purchase Entry level 1</a></li>
		      <li><a href="purchase_entry.html">Purchase Entry level 2</a></li>
		      <li><a href="crusher_entry.html">Crusher Entry</a></li> 
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> Sales Order <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                     <li><a href="sales_entry.html">Sales Entry</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Master<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
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
		      
		      
                      <li><a href="purchase_entry_report.html">Purchase Entry Report</a></li>
                      <li><a href="tax_invoice_print.html">Tax Invoice Report</a></li> 
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
                 
              </div>

              <!--<div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>-->
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>PURCHASE ENTRY <span class="levels">LEVEL 1</span></h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                    
		    <div class="left-whole-design">
		    <div class="form-design">
		      <table class="table">
			<tr>
			  <td style="width: 13%;padding-right: 0px;">Vendor Name</td>
			  <td><input type="text" id="vendorName" name="vendorName"></td>
			  <td style="width:9%;">P.E Date</td>
			  <td><input type="text"></td>
			  <td style="width: 13%; padding-right: 0px;">Vehicle Mode</td>
			  <td><input type="text"></td>
			</tr>
			<tr>
			  <td style="padding-right: 0px;">Address</td>
			  <td><input type="text" id="address1" name="address1"></td>
			  <td style="padding-right: 0px;">Address2</td>
			  <td><input type="text" id="address2" name="address2"></td>
			  <td style="padding-right: 0px;">P.E No</td>
			  <td><input type="text" name="peNo"></td>
			</tr>
			<tr>
			  <td style="padding-right: 0px;">Mobile 1</td>
			  <td><input type="text" id="mobile" name="mobile"></td>
			  <td style="padding-right: 0px;">Mail Id</td>
			  <td><input type="text" id="email" name="email"></td>
			  <td style="padding-right: 0px;">RTGS Det.</td>
			  <td><input type="text" name="rtgsDetail"></td>
			</tr>
			<tr>
			  <td></td>
			  
			</tr>
			
		      </table>
		      
		      
		    </div>
		    
		     
		    <div class="form-design-first">
		      <table class="table form-field">
			<tr>
			   <th style="width:13%;">Roman Letter</th>
			   <th style="width: 16%;">Customer Name</th>
			<th>Project Name</th>
			<th>Delivery Place</th>
			<th>Item of Metal</th>
			 
			</tr>
			<tr id="remove_row">
			   <td style="padding:0px;"><input type="text" id="sNo" name="sNo"></td>
			    <td style="padding:0px;"><input type="text" id="customerName" name="customerName"></td>
			    <td style="padding:0px;"><input type="text" id="projectName" name="projectName"></td>
			    <td style="padding:0px;"><input type="text" id="deliveryPlace" name="deliveryPlace"></td>
			    <td style="padding:0px;"><input type="text" id="itemOfMetal" name="itemOfMetal"></td>
			   
			</tr>
			
		      </table>
		      
		      
		     
		     
		     </div>
		    
		    
		    <div class="grid-view">
		      
		      <table class="add_table">
			 
			<tr>
			  <th style="width:1%;"><img src="/sge_services/resources/images/Plus_Sign.png" class="addrow2" style="width:21px;"></th>
			  <th style="width:60px;">S.No</th>
			  <th style="width:9%;">D.C Date</th>
			  <!--<th style="width:9%;">Sales Date</th>-->
			<th>Customer MRN No</th>
			<th>Vehicle DC No</th>
			<th>Vehicle No</th>
			<th>UOM</th>
			<th>Qty</th>
			<th>Rate</th>
			 <th style="width:12%;">Amount</th>
                         <th style="width:12%;">P.O No</th>
			</tr>
			 <tr id="remove_row2">
			   <td><input type="text" style="width:60px;"></td>
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
			     <!--<td style="padding:0px; background: #fff; text-align: center;"><img src="/resources/images/cancel_tab.png" onclick="deleterow2()" style="width:18px;"></td>-->
			      
			        
				     
			</tr>
			  
		      </table>
		      
		    </div>
		    <div class="total-pay">
		      <table style="float:right; width:44%;">
			<tr>
			  <td class="tab_total">Total</td>
			  <td><input type="text" style="border:none; text-align: center;;" value="800.00"></td>
			  <td><input type="text" style="border:none;" value="6,800.00"></td>
			</tr>
			
		      </table>
		      
		    </div>
		    <div class="whole-payment">
		    <div class="payment">
		    <div class="payment-input" style="border: 1px solid #bbb; padding: 7px; background: -webkit-gradient(linear, left top, left bottom, color-stop(0, #0E658E), color-stop(.5, #0C577A), color-stop(.5, #014D71), to(#003E5C)); color: #fff;">Payment Details</div>
		    
		    <div class="grid-view-second">
		      
		      <table class="add_table2">
			 
			<tr>
			  <th style="width:1%;"><img src="/sge_services/resources/images/Plus_Sign.png" class="addrow3" style="width:21px;"></th>
			  <th style="width:1%">S.No</th>
			  <th>Payment Date</th>
			  <th>Payment Mode</th>
			  <th>Amount</th>
			  <th>Voucher No</th>
			  <th style="width: 7%;">Receiver Name</th>
			<th style="width: 7%;">Receiver Mobile No</th>
			<th style="width: 7%;">Cheque/Rtgs No</th>
			<th style="width: 7%;">Cheque/Rtgs Date</th>
			<th>Neft</th>
			<th>Bank Name</th>
			<th>Account No</th>
			<th>Remarks</th>
			<th style="width: 3%;">Delete</th> 
			</tr>
			 <tr id="remove_row3">
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
				    <td style="padding:0px; background: #fff; text-align: center;"><img src="/sge_services/resources/images/cancel_tab.png" onclick="deleterow3()" style="width:18px;"></td>
			</tr>
			   
		      </table>
		      
		    </div>
		    </div>
		    
		
		    
		    <div class="grid-view-text">
		      
		      <table class="first-grid">
			<!--<tr>
			  <td class="left-grid"><input type="text" style="color: #000;"></td>
			  <td class="right-grid"><input type="text"></td> 
			</tr>-->
			<tr>
			 <td class="left-grid">VAT @ <input type="text" style="width: 56px; color: #000;"></td>
			 <td class="right-grid"><input type="text"></td>
			 </tr>
			<tr>
			  <td class="left-grid">CST @ <input type="text" style="width: 56px;color: #000;"></td>
			  <td class="right-grid"><input type="text"></td>
			   </tr>
			<tr>
			   <td class="left-grid" style="margin-top: 7px;">Discount</td>
			   <td class="right-grid"><input type="text"></td>
                            </tr>
			<tr>
			    <td class="left-grid" style="margin-top: 11px;">Round Off</td>
			    <td class="right-grid"><input type="text"></td>
			    </tr>
			<tr>
			     <td style="margin-top: 13px;" class="left-grid">Net Amount</td>
			     <td class="right-grid"><input type="text"></td>
			    </tr>
			<tr>
			      <td style="margin-top: 12px;" class="left-grid">Advance Amount</td>
			      <td class="right-grid"><input type="text"></td>
			    </tr>
			<tr>
			       <td style="margin-top: 11px;" class="left-grid">Payment Amount</td>
			       <td class="right-grid"><input type="text"></td>
			    </tr>
			<tr>
			        <td style="margin-top: 13px;" class="left-grid">Balance Amount</td>
				<td class="right-grid"><input type="text"></td>
				</tr>
			
			  
			  
		      </table>
		      <!--<table class="second-grid">
			<tr>
			  <td><input type="text"></td>
			</tr>
			<tr>
			 <td><input type="text"></td>
			 </tr>
			<tr>
			  <td><input type="text"></td>
			   </tr>
			<tr>
			    <td><input type="text"></td>
                            </tr>
			<tr>
			    <td><input type="text"></td>
			    </tr>
			<tr>
			      <td><input type="text"></td>
			    </tr>
			<tr>
			       <td><input type="text"></td>
			    </tr>
			<tr>
			        <td><input type="text"></td>
			    </tr>
			<tr>
			         <td><input type="text"></td>
				</tr>
			
			  
			  
		      </table>-->
		      
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
			  <td style="padding-left: 5px;"><input type="text" style="width: 88px;"></td>
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
			  <td><button type="button" class="button">Print</<button></td>
			  
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
          <div class="pull-right">
             
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>


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



<%-- <spring:url value="/resources/js/custom.min.js" var="customJs" />
<script src="${customJs}"></script> --%>
    
	
  </body>
</html>
