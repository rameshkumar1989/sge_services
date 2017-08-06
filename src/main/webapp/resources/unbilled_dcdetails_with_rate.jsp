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
    
    <div class="whole-container" style="border: 1px solid #014434; height:1250px; width:1086px;">
        <div class="top-header" style="padding-bottom: 0px;">
            <img src="images/logo.png">
        <h1 class="purchase-h1">SRI GANAPATHY ENTERPRISES</h1>
           <table class="top-date">
            <tr>
                <td><strong>Print Date:</strong> </td>
                <td>21-03-2017</td>
            </tr>
           </table>
           </div>
           
           <div class="material-tables">
            <h3 style="border:none;">UnBilled DC Details with Rate </h3>
            <!--<p><strong>Count : 101</strong></p>-->
            <table class="mari-tables">
                <tr>
                    <td style="width: 20%;"><strong>No.Of.Unbilled DC:</strong></td>
                    <td>678</td>
                    
                    <td style="width: 10%;"><strong>From Date:</strong></td>
                    <td>24-12-2016</td>
                    
                    <td style="width: 10%;"><strong>To Date:</strong></td>
                    <td>29-12-2016</td>
                </tr>
                
            </table>
            
            
            <table class="second-material-tables">
                <tr class="second-designs">
                    <th>S.No</th>
                    <th>Delivery Date</th>
                    <th>Customer Name - Site</th>
                    <th>Lry DC No.</th>
                    <th>MRV No.</th>
                    <th>Vehicle No</th>
                    <th>Items</th>
                    <th>Sales Unit</th>
                    <th>Sales Qty</th>
                    <th>Rate</th>
                    <th>Purchase Amount</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
                  <tr>
                    <td>2</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
                  <tr>
                    <td>3</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
                    <tr>
                    <td>4</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
                      <tr>
                    <td>5</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
                        <tr>
                    <td>6</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
                          <tr>
                    <td>7</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
  <tr>
                    <td>8</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>  <tr>
                    <td>9</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
    <tr>
                    <td>10</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
      <tr>
                    <td>11</td>
                   <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>
        <tr>
                    <td>12</td>
                    <td>24/3/2017</td>
                    <td>RAYMIX-PLANT-3-VALLAKOTTAI</td>
                    <td>119087</td>
                    <td>6784</td>
                    <td>TN25AR 1848</td>
                    <td>12MM BLUE MATEL</td>
                    <td>CFT</td>
                    <td>985</td>
                    <td>16.00</td>
                    <td>15,712</td>
                </tr>

                <tr style="border-top:1px solid #000;border-bottom:1px solid #000;">
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><strong>Total:</strong></td>
                    <td></td>
                    <td><strong>185,958.00</strong></td>
                    <td><strong>11691404.45</strong></td>
                </tr>
                
            </table>
            
           </div>
            
              
             
             
              
             
             
             
             <div class="clear"></div>
    </div>
    
   
    
</body>
        
</html>