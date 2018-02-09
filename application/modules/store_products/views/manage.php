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
		text-decoration: line-through;		
		margin: 0px 0px 0px 10px;
		color: #000;
		font-size: 1.3em;
		font-weight: bold;
	}
	.sale_price{
		margin: 0px 0px 0px 10px;
		color: red;
		font-size: 1.4em;
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
					  <th><?= $parent_cat ?>/<?= $sub_cat ?>......</th>
				  </tr>
			  </thead>   
			  <tbody>
			    <?php

			    	 foreach( $products->result() as $row ){
			    	 	$item_id = $row->id;
			    	 	if( $row->active_image != null ){
				    	 	$img_name = strtolower($row->active_image);
				    	 	$img_name = rtrim($img_name);

				    	 	$img_src = base_url().$main_category_dir."/".$img_name;
			    	 	} else {
			    	 		$img_name ="****";
				    	 	$img_src = base_url()."public/images/site_img/products/grid-default-thumb.png";
			    	 	}
			    	 ?> 	
<?php if($row->is_deleted == 0 ): ?>
						<tr><td>	
							<div class="col-md-2" >
								<img src="<?= $img_src ?>"
									 class="img-responsive img-thumbnail"
									 style="width: 100%;"
									 alt="<?= $img_name ?>"
									 id="prd_img">
 							</div>							
							<div class="col-md-2 prd_name">
								<h5>Product</h5>
								<?= $row->short_desc ?>
								<p class="meta">
									Part Number: <?= $row->part_num ?><br>
									UPC : <?= $row->upc ?>
								</p>
							</div>
						<div class="col-md-8"> 
							<div class="row">
								<div class="col-md-9" 
									 style="padding: 0px 20px 10px 0px; border: 0px red solid">
									<h5>Description:</h5>
									<div class="description">
										<?= $row->description ?>
										<!-- <?= nl2br($row->description) ?> -->
											
									</div>
								</div>
								<div class="col-md-3" style="padding: 0px; border: 0px red solid"> 
									<p><b>Price</b><br><span class="price">$<?= $row->price ?></span></p>
									<p><b>Sale Price</b><br><span class="sale_price">$<?= $row->sale_price ?></span></p>

									<p>
										<a href="<?= base_url() ?>store_products/view/<?= $row->id ?>">
										<img src="<?= base_url() ?>public/images/site_img/jdmedical_onlineorders_comingsoon.svg"
										 style="width: 90%; height: auto; "
										 alt="Shopping Cart - Coming Soon!"
										 id="cart_img"></a>

									</p>
	 							</div>
							</div> 							
						</div>

						</td></tr>
<?php endif; ?>

			    <?php } ?>


			  </tbody>
		  </table>    

	</div><!--/span-->

</div><!--/row-->