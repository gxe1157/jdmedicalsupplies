<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

	if( isset( $default['flash']) ) {
		echo $this->session->flashdata('item');
		unset($_SESSION['item']);
	}
	$redirect_url = base_url().'store_items/create/';
?>

<style>
 .right{
 	text-align: right;
 }

.left{
 	text-align: left;
 }

</style>


<h2 style="margin-top: -5px;"><small><?= $default['page_title'] ?></small></h2>
<p style="margin-top: 30px,">
	<a href="<?= base_url().$this->uri->segment(1) ?>/create" >
		<button type="button" class="btn btn-primary"><?= $default['add_button'] ?></button></a>
</p>

<div class="row">		
	<div class="col-md-12">
			<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
			  <thead>
				  <tr>
					  <th>Product Name</th>				  	
					  <th>Short Desrciption</th>
					  <th>Part Num.</th>					  
					  <th>Price</th>
					  <th>sale Price</th>
					  <th>Status</th>
					  <th>Image</th>					  
					  <th>Actions</th>
				  </tr>
			  </thead>   
			  <tbody>

			    <?php
			    	 foreach( $columns->result() as $row ){
			    	 	$edit_url = $redirect_url.$row->id;			    	 	
			    	 	list($status_label, $status_desc )=
			    	 	 $row->is_deleted>0 ? ["danger", "Deleted"] : ["success", "Active"];

			    	 	list($image_label, $image_desc )=
			    	 	 $row->prd_image_status ? ["success", "Yes"] : ["danger", "No"];
			    ?> 	
						<tr>
							<td class="left"><?= $row->prd_name ?></td>						
							<td class="left"><?= character_limiter($row->short_desc, 60); ?></td>
							<td class="right"><?= $row->part_num ?></td>
							<td class="right"><?= $row->price ?></td>
							<td class="right"><?= $row->sale_price ?></td>
							<td class="center">
								<span class="label label-<?= $status_label ?>"><?= $status_desc ?></span>
							</td>

							<td class="center">
								<span class="label label-<?= $image_label ?>"><?= $image_desc ?></span>
							</td>

							<td class="center">
								<?php if( $row->is_deleted>0 ): ?>
									<a class="btn btn-warning btn-sm btnConfirm"
									   id="delete-danger"
									   style="font-size: 12px; padding: 0px 5px 0px 0px;"
									   href="<?= $edit_url ?>">
									   <i class="fa fa-pencil fa-fw"></i> Restore
									</a>
								<?php else: ?>
									<a class="btn btn-info btn-sm"
									   style="font-size: 12px; padding: 0px 5px 0px 0px;"
									   href="<?= $edit_url ?>">
									   <i class="fa fa-pencil fa-fw"></i> Edit
									</a>
								<?php endif; ?>	
							</td>
						</tr>
			    <?php } ?>

			  </tbody>
		  </table>    

	</div><!--/span-->

</div><!--/row-->