<!DOCTYPE html>
<html>
<head>
     <link href="../build/css/style.css" rel="stylesheet">
</head>        
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
<body>
    
    <style>
        body{
            
            margin:0px;
            padding:0px;
            color:#014464;
      
    </style>
    
    <div class="whole-container" style="border: 1px solid #014434; height:1250px;">
        <div class="top-header" style="padding-bottom: 0px;">
            <img src="images/logo.png">
        <h1 class="purchase-h1">SRI GANAPATHY ENTERPRISES</h1>
           
           </div>
           
           <div class="material-tables">
            <h3>MATERIAL DELIVERY DETAILS</h3>
            
            <table class="mari-tables">
                <tr>
                    <td style="width: 14%;"><strong>Company Name:</strong></td>
                    <td>ALLIANCE VILLAS PVT LTD</td>
                    
                    <td style="text-align: right;"><strong>Invoice Date:</strong></td>
                    <td style="text-align: right; width: 10%;">24-12-2016</td>
                </tr>
                <tr>
                    <td style="width: 14%;"><strong>Site Name:</strong></td>
                    <td>AVPL-THAIYUR</td>
                </tr>
                <tr>
                    <td style="width: 14%;"><strong>Material:</strong></td>
                    <td>12MM BLUE MATEL</td>
                    
                    <td style="text-align: right;"><strong>Invoice No:</strong></td>
                    <td style="text-align: right; width: 10%;">I-5273</td>
                </tr>
            </table>
            
            
            <table class="second-material-tables">
                <tr class="second-designs">
                    <th>S No</th>
                    <th>DATE</th>
                    <th>MRV NO.</th>
                    <th>LRY DC</th>
                    <th>VEHICLE NO</th>
                    <th>QTY</th>
                    <th>RATE</th>
                    <th>AMOUNT</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>16/12/2016</td>
                    <td>804</td>
                    <td>77077</td>
                    <td>TN2DM9090</td>
                    <td>39.870</td>
                    <td>460.00</td>
                    <td>18,340.20</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>16/12/2016</td>
                    <td>804</td>
                    <td>77077</td>
                    <td>TN2DM9090</td>
                    <td>39.870</td>
                    <td>460.00</td>
                    <td>18,340.20</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>16/12/2016</td>
                    <td>804</td>
                    <td>77077</td>
                    <td>TN2DM9090</td>
                    <td>39.870</td>
                    <td>460.00</td>
                    <td>18,340.20</td>
                </tr>
                <tr>
                    <td style="border-top: 1px solid #000;"></td>
                    <td style="border-top: 1px solid #000;"></td>
                    <td style="border-top: 1px solid #000;"></td>
                    <td style="border-top: 1px solid #000;"></td>
                    <td  style="border-top: 1px solid #000;"></td>
                    <td style="border-top: 1px solid #000;"><strong>119.500</strong></td>
                    <td style="border-top: 1px solid #000;"><strong>460.00</strong></td>
                    <td style="border-top: 1px solid #000;border-left: 1px solid #000;"><strong>54,970.20</strong></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><strong>VAT 5 %</strong></td>
                    <td style="border-left: 1px solid #000;">2748.50</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><strong>Round Off</strong></td>
                    <td style="border-left: 1px solid #000;">0.50</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td style="border: 1px solid #000;"><strong>Total</strong></td>
                    <td style="border: 1px solid #000;"><strong>57,719.00</strong></td>
                </tr>
            </table>
            
           </div>
            
              
             
             
              
             
             
             
             <div class="clear"></div>
    </div>
    
   
    
</body>
        
</html>