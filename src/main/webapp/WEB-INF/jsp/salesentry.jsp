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
	  
    <title>Sri Ganapathy Enterprises! | </title>

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
legend {
    display: block;
    width: 50%;
    padding: 3px;
    margin-bottom: 20px;
    font-size: 15px;
    color: #fff;
    border: 0;
   
}
fieldset{
         border: 1px solid #b4adad;
    padding: 14px 9px;
    padding-bottom: 12px;
}
.fieldset-sales{
    border: 1px solid #b4adad;
    padding: 28px 6px;
    padding-bottom: 12px;
}
.x_panel {
    width: 100%;
    padding: 10px 17px;
    display: inline-block;
    background: #3a77b0;
    border: 1px solid #E6E9ED;
    -webkit-column-break-inside: avoid;
    -moz-column-break-inside: avoid;
    column-break-inside: avoid;
    opacity: 1;
    transition: all .2s ease;
}
.table tr td select{
      width: 100%;
    height: 22px;
    border-radius: 4px;
  color:#000;
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
    	
    	$(".sales_table").append('<tr id="remove_table"><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td><input type="text"></td><td style="padding:0px; background: #fff;text-align: center;"><img src="resources/images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td></tr>'); 
    	  
    	
    	 i++;
	});  
      
    });

    function deleterow()
    {
    
    if($(".sales_table tr").length != 1)
    {
        $("#remove_table").remove();
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
                    var aItem = {id:item.customerId, customerName: item.customerName};
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
        $('#modalCustomerId').val(item.id);
        $('#modalCustomerName').val(item.customerName);
        $('#customerName').val(item.customerName);		
        return item.name;
    }  
});
});
</script>

<script>
$(function() {
$('#searchItem').typeahead({
    source: function (query, process) {
        return $.ajax({
            url: 'searchItem',
            type: 'post',
            data: { itemNameOrId : query },
            dataType: 'json',
            success: function (result) {
                var resultList = result.map(function (item) {
                    var aItem = {itemId:item.itemId, itemName:item.itemName};
                    return JSON.stringify(aItem);
                });
                return process(resultList);
            }
        });
    },

 matcher: function (obj) {
        var item = JSON.parse(obj);
        return ~item.itemName.toLowerCase().indexOf(this.query.toLowerCase())
    },

    sorter: function (items) {          
       var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
        while (aItem = items.shift()) {
            var item = JSON.parse(aItem);
            if (!item.itemName.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(JSON.stringify(item));
            else if (~item.itemName.indexOf(this.query)) caseSensitive.push(JSON.stringify(item));
            else caseInsensitive.push(JSON.stringify(item));
        }
        return beginswith.concat(caseSensitive, caseInsensitive)
    },


    highlighter: function (obj) {
        var item = JSON.parse(obj);
        var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
        return item.itemName.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
            return '<strong>' + match + '</strong>'
        })
    } ,

    updater: function (obj) {
        var item = JSON.parse(obj);
        $('#modalItemId').val(item.itemId);
        $('#modalItemName').val(item.itemName);
        $('#itemName').val(item.itemName);
        return item.name;
    }  
});
});
</script>

<script>
$(function() {
$('#projectName').typeahead({
    source: function (query, process) {
        return $.ajax({
            url: 'searchprojectsitename',
            type: 'post',
            data: { projectSiteName : query },
            dataType: 'json',
            success: function (result) {
                var resultList = result.map(function (item) {
                    var aItem = {projectName:item.siteName, deliveryPlace:item.siteAddress, city:item.siteAddress};
                    return JSON.stringify(aItem);
                });
                return process(resultList);
            }
        });
    },

 matcher: function (obj) {
        var item = JSON.parse(obj);
        return ~item.projectName.toLowerCase().indexOf(this.query.toLowerCase())
    },

    sorter: function (items) {          
       var beginswith = [], caseSensitive = [], caseInsensitive = [], item;
        while (aItem = items.shift()) {
            var item = JSON.parse(aItem);
            if (!item.projectName.toLowerCase().indexOf(this.query.toLowerCase())) beginswith.push(JSON.stringify(item));
            else if (~item.projectName.indexOf(this.query)) caseSensitive.push(JSON.stringify(item));
            else caseInsensitive.push(JSON.stringify(item));
        }
        return beginswith.concat(caseSensitive, caseInsensitive)
    },


    highlighter: function (obj) {
        var item = JSON.parse(obj);
        var query = this.query.replace(/[\-\[\]{}()*+?.,\\\^$|#\s]/g, '\\$&')
        return item.projectName.replace(new RegExp('(' + query + ')', 'ig'), function ($1, match) {
            return '<strong>' + match + '</strong>'
        })
    } ,

    updater: function (obj) {
        var item = JSON.parse(obj);
        $('#projectName').val(item.projectName);

        if(item.deliveryPlace != null ){
        	$('#deliveryPlace').val(item.deliveryPlace);
        	$('#cFrom').val(item.deliveryPlace);
        } else {
        	$('#deliveryPlace').val("N/A");
        	$('#cFrom').val("N/A");
        }

        return item.projectName;
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
                <!--<h3>SALES ENTRY</h3>-->
              </div>
              
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>SALES ENTRY</h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">
                    
		    <div class="left-whole-design-entry">
		    <div class="form-design-entry">
		      <table class="table" id="sales_tabs">
			<tr>
			  <td style="width: 10%; padding-right: 0px;">Sales Date</td>
			  <td ><input type="text" class="cFrom"></td>
			  <td style="width: 13%; padding-right: 0px;">Sales Invoice No</td>
			  <td><table class="inside-tabs">
			    <td style="padding: 0px;"><input type="text"></td>
			  <td style="width: 7%; padding-left: 6px;"><input type="button" value="N" style="line-height: 0px;" id="myBtn1"></td>
			 </table></td>
			   <td style="width: 12%; padding-right: 0px;">Customer Name</td>
			  <td><table>
			    <td style="padding: 0px;"><input type="text" id="customerName" name="customerName"></td>
			 
			 
			  <td style="width: 7%; padding-left: 6px;"><input type="button" value="N" style="line-height: 0px;" id="myBtn3"></td>
			 </table></td>
			  
			 
			</tr>
			
			<tr>
			   <td style="width: 10%; padding-right: 0px;">Project Name</td>
			  <td><input type="text" id="projectName" name="projectName"></td>
			  <td style="width: 12%; padding-right: 0px;">Invoice Name</td>
			  <td><select>
			  <option>--Select--</option>
			  <option>Sri Ganapathy Enterprises</option>
			  <option>Sri Ganapathy Infrastructure Pvt Ltd</option>
			  <option>DM Enterprises</option>
			  <option>Sri Ganapathy Agency</option>
			  </select></td>
			   
			  <td style="width: 8%;padding-right: 0px;">Item</td>
			  <td>
			    <table>
			    <td style="padding: 0px;"><input type="text" id="itemName" name="itemName"></td>
			  <td style="width: 7%; padding-left: 6px;"><input type="button" value="N" style="line-height: 0px;" id="myBtn2"></td>
			 </table>
			    </td>
			 
			   
			</tr>
			 <tr>
			   <td style="width: 11%;padding-right: 0px;">Delivery Place</td>
			  <td><input type="text" id="deliveryPlace" name="deliveryPlace"></td>
			   <td style="width: 10%; padding-right: 0px;">City</td>
			  <td ><input type="text" id="cFrom"></td>
			 
			 </tr>
			
		      </table>
		      
		      
		    </div>
		    
		     
		    
		    <div class="grid-view-sales" id="sales">
		      
		      <table class="sales_table">
			 
			<tr>
			  <!--<th style="width:1%;"><img src="resources/images/Plus_Sign.png" class="addrow" style="width:21px;"></th>-->
			  <th style="width:60px;">S.No</th>
			  <!--<th>Ps No</th>-->
			 
			<th>Date</th>
			<th>MRV No.</th>
			<th>Vehicle DC no</th>
			<th>Vehicle No.</th>
			<th>Sale Unit</th>
			<th>Qty</th>
			<th>Sales Rate</th>
			<th>Amount</th>
			<th>Sales Order</th>
			<th>Sales Date</th>
			<th  style="width:7%;">Purchase Rate</th>
                        <th style="width:13%;border:none;">Remarks</th>
			<th style="border:none;"></th>
			<!--<th style="width: 2%;">Delete</th> -->
			</tr>
			 <tr id="remove_table">
			  <!--<td><input type="text"></td>-->
			  <td><input type="text" value="1" style="text-align:center;"></td>
			  <td><input type="text" class="cFrom"></td>
			  <td><input type="text"></td>
			  <td><input type="text"></td>
			   <td><input type="text"></td>
                            <td><input type="text"></td>
			   <td><input type="text"></td>
			       <td><input type="text"></td>
			        <td><input type="text"></td>
				 <td><input type="text"></td>
				  <td><input type="text" class="cFrom"></td>
			        <td><input type="text"></td>
				 <td><input type="text"></td>
				 <td style="width: 1px;border: none;"><input type="text" tabindex="19" name="last_1" class="inputss 2st" style="border-left: none;" id="last_1" readonly/></td>
				  <!--  <td style="padding:0px; background: #fff;text-align: center;"><img src="resources/images/cancel_tab.png" onclick="deleterow()" style="width:18px;"></td>-->
			</tr>
			   
		      </table>
		      
		    </div>
		    
		     
		    
		
		    
		     
		    
		    </div>
		    
		         
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
   
    html = '<tr id="remove_row3">';
    //html +='<td style="background: #fff; border-right: 1px solid #bbb;"><input type="checkbox" style="width:55px; height:15px;margin-top:3px;"/></td>';
    html += '<td style="background: #fff; text-align: center;">' + i + '</td>';
   
    html += '<td><input type="text" class="cFrom"></td>';
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
     $('.sales_table').append(html);
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
		  
		  
		  <div class="whole-left-buttons">
		  <div class="sales-entry-table">
		    <fieldset class="feildset-sales">
  
		    <table class="sales-table">
		      <tr>
			<td><input type="checkbox" class="checkbox"></td>
			<td class="text-fiel">From Date</td>
			<td><input type="text"  class="cFrom" style="width:100%;"></td>
			
			<td><input type="checkbox" class="checkbox" style="margin: 0px 5px;display: none;"></td>
			<td class="text-fiel" style="width: 8%;">To Date</td>
			<td><input type="text"  class="cFrom" style="width:100%;"></td>
			
			<td><input type="checkbox" class="checkbox" style="margin-left: 40%;"></td>
			<td class="text-fiel">Vehicle No</td>
			
			<td><input type="checkbox" class="checkbox"></td>
			<td class="text-fiel">Detail Rpt</td>
		      </tr>
		      
		      <tr>
			<td><input type="checkbox" class="checkbox"></td>
			<td class="text-fiel">Po No</td>
			<td><input type="text" class="ent-in" style="width:100%;"></td>
			
			<td><input type="checkbox" class="checkbox" style="margin: 0px 5px;"></td>
			<td class="text-fiel" style="width: 7%;">Load </td>
			<td><input type="text" class="ent-in" style="width:100%;"></td>
			
			<td><input type="checkbox" class="checkbox" style="margin-left: 40%;"></td>
			<td class="text-fiel">Address</td>
			
			<td><input type="checkbox" class="checkbox" style="display:none;"></td>
			<td class="text-fiel"></td>
		      </tr>
		       
		    </table>
		    
		     
		    
		    <table class="sales-table">
		      <tr>
			<td style="width:1%;"><input type="checkbox" class="checkbox"></td>
			<td style="text-align: center; width:9%;">Note : </td>
			<td style="width:64%; float:left;"><input type="text" class="ent-in" style="width:100%;"></td>
			
			
		      </tr>
		      
		    </table>
		    </fieldset>
		  </div>
		    
		    <div class="total-view">
		   <table>
		    <tr>
		     
		      <td style="padding: 0px 20px;">Total</td>
		      <td><input type="text"></td>
		     
		    </tr>
		     
		    <tr>
		      <td>
			<table>
			<td><input type="radio" name="all" style="width: 22px; height: 17px;"></td>
		      <td style="width: 14%;">VAT</td>
		      <td style="width:12%;"><input type="radio" name="all" style="width: 22px; height: 17px;"></td>
		      <td style="width: 12%;">CST</td>
		      <td><input type="text"></td>
		      <td style="width: 11%; text-align: center;">%</td>
		      </table>
		      </td>
		      <td><input type="text"></td>
		    </tr>
		    <tr>
		      <td style="text-align: center;">Round Off</td>
		      <td><input type="text"></td>
		      
		    </tr>
		    <tr>
		      <td style="text-align: center;">Total Amount</td>
		      <td><input type="text"></td>
		      
		    </tr>
		    
		   </table>
		      

		    </div>
		    <div class="print-view">
		      <button type="button" class="button-pri" id="print_pre">Preview</button>
		      <form>
 <fieldset class="feildset-sales">
  <legend class="legend-sales"><b>Print Option:</b></legend>
  <table class="radio-field" id="top-sal">
    <td><input type="radio" name="all"></td>
    <td>All</td>
    <td><input type="radio" name="all"></td>
    <td>Option</td>
  </table>
  
  <table class="check-field" id="bottom-sal">
    <td><input type="checkbox"></td>
    <td>Original</td>
    <td><input type="checkbox"></td>
    <td>Ack</td>
    <td><input type="checkbox"></td>
    <td>Office</td>
  </table>
 </fieldset>
</form>
		  <button type="button" class="button-pri" id="bottom_bu">Print</button>    
		    </div>
		    <div class="right-whole-design-sales">
		      <table>
			<tr>
			  <td><button type="button" class="button-sales"><img src="resources/images/save.png"></br>Save</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="resources/images/remove.png"></br>Delete</<button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="resources/images/edit.png"></br>Row Edit</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="resources/images/edit2.png"></br>Full Edit</button></td>
			  
			</tr>
			<tr>
			  <td><button type="button" class="button-sales"><img src="resources/images/exit.png"></br>Exit</button></td>
			  
			</tr>
			 
		      </table>
		      
		      
		    </div>
	    
	    
	    
	    
	    
	    
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
                
                $('.cFrom').datepicker({
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


<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content" style="width:57%;">
    <div class="vehicle-search">Sales Search</div>
    <div class="in-model">
    
    <span class="close" style="opacity:7;">&times;</span>
    <table style="width: 96%;margin-top: 14px;">
      <tr>
	<td>Search By SalesNo / SiteName</td>
	<td><input type="text"></td>
      </tr>
      </table>
      <div class="model-grid">
	<table>
	  <tr>
	    <th>S.No</th>
	    <th>Sales No</th>
	    <th>Sales Date</th>
	    <th>Customer Name</th>
	    <th>Site Name</th>
	  </tr>
	  <tr>
	    <td>1</td>
	    <td>H2895</td>
	    <td>30-oct-15</td>
	    <td>HIRANANDANI REAL TO</td>
	    <td>EGATTUR</td>
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
			<div class="vehicle-search">Item Search</div>
			<div class="in-model">

				<span class="close2" style="opacity: 7;">&times;</span>
				<table style="width: 96%; margin-top: 14px;">
					<tr>
						<td>Search By ItemCode/Name</td>
						<td><input type="text" id="searchItem" name="searchItem"></td>
					</tr>
				</table>
				<div class="model-grid">
					<table>
						<tr>
							<th>S.No</th>
							<th>Item Code</th>
							<th>Item Name</th>
						</tr>
						<tr>
							<td>1</td>
							<td><input id="modalItemId"></input></td>
							<td><input id="modalItemName"></input></td>
						</tr>

					</table>

				</div>

			</div>
		</div>
	</div>
	<script>
// Get the modal
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
    //modals.style.display = "none";
    modal2.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal2) {
        modal2.style.display = "none";
    }
}
 
</script>



	<div id="myModal3" class="modal3">

		<!-- Modal content -->
		<div class="modal-content3">
			<div class="vehicle-search">Customer Search</div>
			<div class="in-model">

				<span class="close3" style="opacity: 7;">&times;</span>
				<table style="width: 96%; margin-top: 14px;">
					<tr>
						<td>Search By Customer Code / Name</td>
						<td><input type="text" id="searchCustomer" name ="searchCustomer"></td>
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
							<td><input id="modalCustomerId"></input></td>
							<td><input id="modalCustomerName"></input></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
// Get the modal
var modal3 = document.getElementById('myModal3');
 
// Get the button that opens the modal
var btn = document.getElementById("myBtn3");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close3")[0];

// When the user clicks the button, open the modal 
btn.onclick = function() {
	$("#searchCustomer").val(null);
	$('#modalCustomerId').val(null);
    $('#modalCustomerName').val(null);
    $('#modalCustomerId').disabled = true;
	$('#modalCustomerName').disabled = true;
    modal3.style.display = "block";
    
      
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    //modals.style.display = "none";
    modal3.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal3) {
        modal3.style.display = "none";
    }
}
 
</script>
	
  </body>
