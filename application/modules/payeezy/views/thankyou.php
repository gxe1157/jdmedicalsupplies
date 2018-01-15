

<div class="row" style="min-height: 400px;">
<div class="container">   

<div class="col-md-12" style="margin-bottom: 15px;">

<!-- <h1>Merchant.com Online Store</h1> -->

<h2>
<?php echo $_REQUEST['x_response_reason_text'] ?>
</h2>

<?php
 if ($_REQUEST['x_response_code'] == '1') {
   echo "<p>";
   echo "Your order was processed successfully. Here is your receipt.";
   echo "Your order will be shipped in two business days.";
   echo "</p>";
   echo "<pre>";
   echo $_REQUEST["exact_ctr"];
   echo "</pre>";
   if (!empty($_REQUEST["exact_issname"])) {
     echo "<p>";
     echo "Issuer: " .$_REQUEST["exact_issname"] . "<br/>";
     echo "Confirmation Number: " . $_REQUEST["exact_issconf"];
     echo "</p>";
   }
   echo "<p>";
   $track_url = "http://merchant.com/order_tracking/" . $_REQUEST["x_invoice_num"];
   echo "You can track it at <a href=\"" . $track_url . "\">" .
$track_url . "</a>";
   echo "</p>";
 } elseif ($_REQUEST['x_response_code'] == '2') {
   echo "<p>";
   echo "Your payment failed.";
   echo "Here is your receipt.";
   echo "</p>";
   echo "<pre>";
   echo $_REQUEST["exact_ctr"];
   echo "</pre>";
 } else {
   echo "<p>";
   echo "An error occurred while processing your payment.";
   echo "Please try again later.";
   echo "</p>";
 }
?>
</div>
</div>
</div>




