<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	if( isset( $default['flash']) ) {
		echo $this->session->flashdata('item');
		unset($_SESSION['item']);
	}
	$redirect_url = base_url().'store_products/create/';
?>

<style>
	#prd_img {
	    float: left;
	    margin: 0 20px 0px 0px;
	}
	.meta {
		font-size: .8em;
		font-weight: bold;
	}
    h5 {
    	margin-top: -5px;
    }
	.description, .prd_name{
		float: left;
		font-size: 1em;
	}

	.price{
		margin: 0px 0px 0px 10px;
		color: red;
		font-size: 1.3em;
		font-weight: bold;
	}
	thead th{
		text-align: center;
		font-size: 1.5em;

	}

</style>

<div class="row">		
	<div class="col-md-12" style="min-height: 400px; margin-bottom: 50px;">
			<table class="table table-striped" style="margin: 0 auto; width: 90%;">
			  <thead>
				  <tr>
					  <th><?= $parent_cat ?>/<?= $sub_cat ?></th>
				  </tr>
			  </thead>   
			  <tbody>
			    <?php
			    	 foreach( $products->result() as $row ){?> 	
						<tr><td>	
							<div class="col-md-1" >
<!-- 								<img src="<?= base_url() ?>public/images/store_products_img/products/list-default-thumb.png" alt="default thumb" class="img-responsive thumb" id="prd_img">
 -->
								<img src="<?= base_url() ?>public/images/store_products_img/products/list-default-thumb.png" alt="default thumb" class="img-responsive thumb" id="prd_img">


 							</div>							
							<div class="col-md-2 prd_name">
								<h5>Product</h5>
								<?= $row->prd_headline ?>
								<p class="meta">
									Part Number: <?= $row->part_num ?><br>
									UPC : <?= $row->upc ?>
								</p>
							</div>
							<div class="col-md-8" style="border: 0px red solid">
								<h5>Description:</h5><div class="description"><?= $row->description ?></div>
							</div>
							<div class="col-md-1" style="border: 0px red solid"> 
								<p class="price">$<?= $row->sale_price ?></p>
							</div>
						</td></tr>


			    <?php } ?>


			  </tbody>
		  </table>    

	</div><!--/span-->

</div><!--/row-->