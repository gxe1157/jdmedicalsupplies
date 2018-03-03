
<?php
   $output = '';
   foreach ($response as  $value) {
   		$output .= $value." [".$reponse_code."]";
   }
?>

<div class="row" style="min-height:425px;">
<div class="col-md-6 col-md-offset-3">
	<?php 
		if( $reponse_code == 0 ){
			echo '<h3>Order Cancelled</h3>';
			echo '<p>'.$output.'</p>';
		} else {
			echo '<h3>We are sorry but due to technical difficulties your order did process.<br>Your Credit Card Was not billed.<br>Please try again later. </h3>';
			echo '<p>'.$output.'</p>';
		}
	?>
</div>
</div>
