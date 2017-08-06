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
        <div class="top-header" style="padding-bottom: 0px; border-bottom: 1px solid #000;">
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
            <h3 style="border:none;">PE DATEWISE REPORT</h3>
            <p><strong>Count : 101</strong></p>
            <table class="mari-tables" style="border:none;">
                <tr>
                    <td style="width: 10%;"><strong>PBook No</strong></td>
                    <td>33100TO33200</td>
                    
                    <td style="width: 10%;"><strong>From Date</strong></td>
                    <td>24-12-2016</td>
                    
                    <td style="width: 10%;"><strong>To Date</strong></td>
                    <td>29-12-2016</td>
                </tr>
                
            </table>
            
            
            <table class="second-material-tables">
                <tr class="second-designs">
                    <th>S.No</th>
                    <th>PE Date</th>
                    <th>PE No</th>
                    <th>Supplier Name</th>
                    <th>Cv No.</th>
                    <th>PE Amount RS</th>
                    <th>Paid Amount RS</th>
                    <th>Balance Amount RS</th>
                    
                </tr>
                <tr>
                    <td>1</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>
                  <tr>
                    <td>2</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>ROOLSAN J</td>
                    <td></td>
                    <td>17,294</td>
                    <td>0</td>
                    <td>17,294</td>
                </tr>
                  <tr>
                    <td>3</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>
                    <tr>
                    <td>4</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>
                      <tr>
                    <td>5</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>
                        <tr>
                    <td>6</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>
                          <tr>
                    <td>7</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>
  <tr>
                    <td>8</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>  <tr>
                    <td>9</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>
    <tr>
                    <td>10</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>
      <tr>
                    <td>11</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
                </tr>
        <tr>
                    <td>12</td>
                    <td>24/3/2017</td>
                    <td>33100</td>
                    <td>SUDHAKAR ENTERPRISES</td>
                    <td></td>
                    <td>67,554</td>
                    <td>0</td>
                    <td>67,554</td>
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