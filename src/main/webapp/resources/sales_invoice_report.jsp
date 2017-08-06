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
    width: 17%;
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
    width: 24%;
    padding: 3px;
    margin-bottom: 20px;
    font-size: 15px;
    color: #004467;
    border: 0;
  }
  .x_panel {
    width: 100%;
    padding: 10px 17px;
    display: inline-block;
    background: darkslategray;
    border: 1px solid #E6E9ED;
    -webkit-column-break-inside: avoid;
    -moz-column-break-inside: avoid;
    column-break-inside: avoid;
    opacity: 1;
    transition: all .2s ease;
}
.x_content {
    padding: 0 5px 6px;
    float: left;
    clear: both;
    margin-top: 5px;
    padding-bottom: 332px;
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

            <!-- menu profile quick info -->
            <!--<div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
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
                  <li><a><i class="fa fa-table"></i> Master<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
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
                   
                  <li id="sec"><a><i class="fa fa-clone"></i>Reports <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" id="child-show">
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
                <h3>SALES INVOICE REPORT</h3>
              </div>

               
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Sales Invoice Report</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" style="margin-left: 191px;" data-parsley-validate class="form-horizontal form-label-left">
                    
		    <div class="whole-invoice-sales">
		      <table class="invoice">
			<tr>
			  <td>Customer Name</td>
			  <td><input type="text" tabindex="1"></td>
			  <td style="width: 7%; padding-left: 6px;"><input type="button" tabindex="3" value="N" id="myBtn1" class="txt-inputs"></td>
			</tr>
			<tr>
			  <td>Invoice No </td>
			  <td><input type="text" tabindex="2"></td>
			  <td style="width: 7%; padding-left: 6px;"><input type="button" value="N" tabindex="4" id="myBtn2" class="txt-inputs"></td>
			</tr>
			
			</table>
		      <button type="button" style="width: 120px; height: 41px; line-height: 10px;" class="button">Submit</button>
		      
		    </div>
		     
                       
                    </form>
		    
		    
		    <form>
		      
		       <div>

    
  </div>
		    </form>
		    
		     
                  </div>
                </div>
              </div>
            </div>
 

            <script>
	      // register jQuery extension
jQuery.extend(jQuery.expr[':'], {
    focusable: function (el, index, selector) {
        return $(el).is('a, button, :input, [tabindex]');
    }
});

$(document).on('keypress', 'input,select', function (e) {
    if (e.which == 13) {
        e.preventDefault();
        // Get all focusable elements on the page
        var $canfocus = $(':focusable');
        var index = $canfocus.index(document.activeElement) + 1;
        if (index >= $canfocus.length) index = 0;
        $canfocus.eq(index).focus();
    }
});
	      
	    </script>

                    
        <!-- /page content -->

        <!-- footer content -->
       <!-- <footer>
          <div class="pull-right">
             
          </div>
          <div class="clearfix"></div>
        </footer>-->
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





<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <div class="vehicle-search">Customer Search</div>
    <div class="in-model">
    
    <span class="close" style="opacity:7;">&times;</span>
    <table style="width: 96%;margin-top: 14px;">
      <tr>
	<td>Search By Customer Code/Name</td>
	<td><input type="text"></td>
      </tr>
      </table>
      <div class="model-grid">
	<table>
	  <tr>
	    <th>S.No</th>
	    <th>Customer Code</th>
	    <th>Customer Name</th>
	  </tr>
	  <tr>
	    <td>1</td>
	    <td>1</td>
	    <td>Acc Limited</td>
	  </tr>
	  
	</table>
	
      </div>
    
  </div>
</div>
</div>	
 
 <script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the button that opens the modal
var btn = document.getElementById("myBtn1");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
 </script>
 
 <div id="myModal2" class="modal2">

  <!-- Modal content -->
  <div class="modal-content2">
    <div class="vehicle-search">Sales Search</div>
    <div class="in-model">
    
    <span class="close2" style="opacity:7;">&times;</span>
    <table style="width: 96%;margin-top: 14px;">
      <tr>
	<td>Search By Sales No</td>
	<td><input type="text"></td>
      </tr>
      </table>
      <div class="model-grid">
	<table>
	  <tr>
	    <th>S.No</th>
	    <th>Sales No</th>
	    <th>Customer Name</th>
	    <th>Site Name</th>
	  </tr>
	  <tr>
	    <td>1</td>
	    <td>02</td>
	    <td>Ganga Transport</td>
	    <td>Chennai</td>
	  </tr>
	  
	</table>
	
      </div>
    
  </div>
</div>
</div>
 <script>


var modal2 = document.getElementById('myModal2');

// Get the button that opens the modal
var btn = document.getElementById("myBtn2");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close2")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal2.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    modal2.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal2) {
        modal2.style.display = "none";
    }
}


 

</script>	
  </body>
</html>