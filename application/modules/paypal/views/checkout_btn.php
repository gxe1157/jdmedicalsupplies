<div class="row">
<div class="container">   

<form action="https://checkout.globalgatewaye4.firstdata.com/payment" method="POST">

<?php
      $x_login = "HCO-FULL-468";  //  Take from Payment Page ID in Payment Pages interface
      $transaction_key = "H1cCqmSAEZVN0HDrc_qz"; // Take from Payment Pages configuration interface
      $x_amount = "595.99";
      $x_currency_code = "USD"; // Needs to agree with the currency of the payment page
      srand(time()); // initialize random generator for x_fp_sequence
      $x_fp_sequence = rand(1000, 100000) + 123456;
      $x_fp_timestamp = time(); // needs to be in UTC. Make sure webserver produces UTC

      // The values that contribute to x_fp_hash 
      $hmac_data = $x_login . "^" . $x_fp_sequence . "^" . $x_fp_timestamp . "^" . $x_amount . "^" . $x_currency_code;
      $x_fp_hash = hash_hmac('MD5', $hmac_data, $transaction_key);

      
date_default_timezone_set("UTC"); 
$time_now = time();
echo "UTC:".$time_now; 
echo "<br>"; 
echo 'UTC: '.convert_timestamp($time_now,'full');
echo "<br>"; 

date_default_timezone_set("Europe/Helsinki"); 
echo "Europe/Helsinki:".time(); 
echo "<br>"; 


      echo ('<br><label>x_login</label><input name="x_login" value="' . $x_login . '">' );
      echo ('<br><label>x_amount</label><input name="x_amount" value="' . $x_amount . '">' );
      echo ('<br><label>x_fp_sequence</label><input name="x_fp_sequence" value="' . $x_fp_sequence . '">' );
      echo ('<br><label>x_fp_timestamp</label><input name="x_fp_timestamp" value="' . $x_fp_timestamp . '">' );
      echo ('<br><label>x_fp_hash</label><input name="x_fp_hash" value="' . $x_fp_hash . '" size="50">' );
      echo ('<br><label>x_currency_code</label><input name="x_currency_code" value="' . $x_currency_code . '"><br>');
?>

      <input type="hidden" name="x_show_form" value="PAYMENT_FORM"/>
      <input type="submit" value="Pay with Payment Pages"/>
</form>
