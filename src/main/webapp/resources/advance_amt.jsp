

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
	<link rel="stylesheet" href="css/datepicker.css" type="text/css">
	<style>
	  .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
        padding: 3px;
    line-height: 1.92857143;
    vertical-align: top;
    border-top: 0px solid #ddd;
    padding-right: 12px;
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
    background: darkslategray;
    border: 1px solid #E6E9ED;
    -webkit-column-break-inside: avoid;
    -moz-column-break-inside: avoid;
    column-break-inside: avoid;
    opacity: 1;
        padding-bottom: 120px;
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
    	
    	$(".purchase_tab").append('<tr id="remove_purchase"><td style="width:1%;"><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><select><option>--select--</option><option>CFT1</option><option>CFT2</option><option>M3</option><option>TON</option><option>Load</option><option>NOS</option></select></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff; text-align: center;"><img src="images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td></tr>'); 
    	  
    	
    	
    	
    	
    	i++;
	});  
      
    });

    function deleterow()
    {
    
    if($(".purchase_tab tr").length != 1)
    {
        $("#remove_purchase").remove();
    }
    else
    {
        alert("You cannot delete first row");
    }
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
              <a href="#" class="site_title" style="font-size:21px"><img src="images/logo.png" style="width:40px;"> SRI GANAPATHY </br>ENTERPRISES</a>
            </div>

            <div class="clearfix"></div>

             
            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li class="checkdrop"><a><i class="fa fa-home"></i> Home</a>
                    
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
		  <li id="sec"><a><i class="fa fa-clipboard"></i> Others <span class="fa fa-chevron-down"></span></a>
		    <ul class="nav child_menu" id="child-show">
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
<div class="form-name">GANAPATHY ENTERPRISES</div>
              
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <!--<h3>PURCHASE ENTRY </h3>-->
              </div>
 
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>ADVANCE ENTRY</h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                    
		    <div class="left-whole-design-entry">
		    <div class="form-design-entry">
		      <table class="table" id="advance_tab">
			<tr>
			  <td>Document No</td>
			  <td><input type="text"></td>
			  
			  <td>Date</td>
			  <td><input type="text" id="cFrom"></td>
			  
			</tr>
			<tr>
			  <td>Purchase Ac.</td>
			  <td><input type="text"></td>
			  
			  <td>Vendor		</td>
			  <td><input type="text"></td>
			  
			</tr> 
			<tr>
			  
			  <td><input type="checkbox" style="margin-left: 39px;"></td>
			  <td style="text-align: initial;">Update Stocks</td>
			  
			  
			  
			</tr>
		      </table>
		      
		      
		    </div>
		    
		    
		     
		     
		    
		    </div>
		    
		         
			</div>
		    
		    <div class="right-whole-design-entry">
		      <table style="margin-left: 16%;">
			<tr>
			  <td><button type="button" class="button-entry"><img src="images/save.png"></br>Save</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-entry"><img src="images/remove.png"></br>Delete</<button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-entry"><img src="images/printing.png"></br>Print</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-entry"><img src="images/previous.png"></br>Previous</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-entry"><img src="images/next.png"></br>Next</button></td>
			  
			</tr>
			 <tr>
			  <td><button type="button" class="button-entry"><img src="images/load.png"></br>Load</button></td>
			  
			</tr>
		      </table>
		      
		      
		    </div>
                       
                   
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
//				
//				$('#cTo1').datepicker({
//                    //format: "dd/mm/yyyy"
//					format: "dd/mm/yyyy"
//                });
//				$('#cTo2').datepicker({
//                    //format: "dd/mm/yyyy"
//					format: "dd/mm/yyyy"
//                });  
//            
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

