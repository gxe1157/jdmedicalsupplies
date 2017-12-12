<?php 
    $this->load->helper('store_items/store_prd_helper');    
	$image_products = base_url()."public/images/products";	
?>

<?php foreach ($items_query as $key => $value) {
					list( $folder_name, $parent_cat_title, $parent_cat_id) =
				   		parent_cat_folder($value->sub_cat_id);  ?>

			               	<li>
			                    <div class="posts-thumb pull-left"> 
									<img src="<?= $image_products ?>/<?= $folder_name ?>/<?= $value->active_image ?>" alt="Image Not Available" class="img-responsive thumb" id="prd_img">
			                    </div>
			                    <div class="post-info">
			                        <h4 class="entry-title">
			                        	<a href="#">
			                        	<?= $value->short_desc ?></a>
			                        </h4>
			                        <p>Part Number: <?= $value->part_num ?> [ <?= $value->id ?> ]</p>
									<span class="post-date"><a href="#" >Read More...</a></span>
			                    </div>
			                    <div class="clearfix"></div>
							</li><!-- 1st post end-->
<?php } ?>
