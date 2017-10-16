<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

  if( isset( $default['flash']) ) {
    echo $this->session->flashdata('item');
    unset($_SESSION['item']);
  }
  $show_buttons = true;
	$form_location = base_url().$this->uri->segment(1)."/create/".$update_id;
?>

<style>
  #dimensions{ color: #000; font-weight: bold; font-size: 1em; margin-bottom: 5px; margin-left: 15px; }
  .border{
    border: 1px red solid;

  }
</style>

<h2 style="margin-top: -10px;"><small><?= $default['page_header'] ?></small></h2>

<?php if( is_numeric($update_id) ) { ?>
  	<div class="well  well-sm">
  			<div class="content">
  				<a href="<?= base_url() ?>store_item_colors/update/<?= $update_id ?>"><button type="button" class="btn btn-primary">Update Color</button></a>
  				<a href="<?= base_url() ?>store_item_sizes/update/<?= $update_id ?>"><button type="button" class="btn btn-primary">Update Size</button></a>
  				<a href="<?= base_url() ?>store_cat_assign/update/<?= $update_id ?>"><button type="button" class="btn btn-primary">Update Categories</button></a>

  				<a class ="btnConfirm" id="delete-danger" href="<?= base_url() ?>store_items/deleteconf/<?= $update_id ?>">
            <button type="button" class="btn btn-danger">Delete Product</button></a>

  				<a id="btnAlert" href="<?= base_url() ?>store_items/view/<?= $update_id ?>/preview"><button type="button" class="btn btn-default">Preview Page</button></a>
  			</div>
  	</div>
    <!-- end well -->
<?php } ?>
 

            <div class="well">
               <form id="myForm" method="post" action="<?= $form_location ?>" >
               <input type="hidden"  name="parent_cat_id"  value="<?= $columns['parent_cat_id'] ?>" >              
<!-- form row -->                  
                <div class="row">
<!-- col-md-5 -->                  
                  <?= validation_errors("<p style='color: red;'>", "</p>"); ?>

                    <div class="col-md-5">
                      <div class="form-group">
                        <label for="prd_name">Product Name</label>
                        <div>
                          <input type="text" id="prd_name" name="prd_name"
                                 value="<?= $columns['prd_name'] ?>"
                                 placeholder="" class="form-control prd_name">
                        </div>
                      </div>
                       <div class="row">
                          <div class="col-md-6">
                           <div class="form-group">
                              <label for="price">Price</label>
                              <div>
                                <input type="text" id="price" name="price" 
                                 value="<?= $columns['price'] ?>"
                                 placeholder="" class="form-control price">
                              </div>
                          </div>
                         </div>
                          <div class="col-md-6">
                            <div class="form-group">
                              <label for="sale_price">On Sale Price</label>
                              <div>
                                <input type="text" id="sale_price" name="sale_price"
                                       value="<?= $columns['sale_price'] ?>"
                                       placeholder="" class="form-control sale_price">
                              </div>
                            </div>
                         </div>
                       </div>

                      <div class="form-group">
                          <label for="short_desc"> Short Description </label>
                          <textarea name="short_desc" id="short_desc" class="form-control"
                                    rows="2" cols="25"
                                    placeholder="Enter a brief product description"><?= $columns['short_desc'] ?></textarea>
                      </div>

                      <div class="form-group">
                          <label for="description">Full Description</label>
                          <textarea id="input" name="description"><?=  nl2br($columns['description']) ?></textarea>
                      </div>
                    </div>  
<!-- col-md-3 -->                    
                    <div class="col-md-3">

                          <!-- load site_ajax_upload view -->
                          <?=  $this->load->view('site_ajax_upload/site_ajax_upload') ?> 
                          <!-- load site_ajax_upload view -->
                                                  
                          <div class="form-group">
                            <br>
                            <label>Show Image</label>
                            <div>
                              <input type="radio" name="prd_image_status" value="1"
                                     class="input-xlarge"
                                     <?php if($columns['prd_image_status'] == 1) echo 'checked'; ?> >
                                     <span>Yes</span>
                              <input type="radio" name="prd_image_status" value="0"
                                     class="input-xlarge"
                                     <?php if($columns['prd_image_status'] == 0) echo 'checked'; ?> >
                                     <span>No</span>
                            </div>
                          </div>

                          <div class="form-group">
                            <label>Product Status</label>
                            <div>
                              <input type="radio"  name="prd_status" value="1"
                                     class="input-xlarge"
                                     <?php if($columns['prd_status'] == 1) echo 'checked'; ?> >
                                     <span>Active</span>
                              <input type="radio"  name="prd_status" value="0"
                                     class="input-xlarge"
                                     <?php if($columns['prd_status'] == 0) echo 'checked'; ?> >
                                     <span>Inactive</span>
                            </div>
                          </div>

                    </div>                    
<!-- col-md-4 -->
                    <div class="col-md-4">
                      <div class="form-group">
                        <label for="sub_cat_id">Assigned Category [ <?= $columns['parent_cat_id'] ?> ]</label>
                        <div>
                          <?php
                            $additional_opt =
                              array( 'id' => 'sub_cat_id','class' =>'form-control' );
                              echo form_dropdown('sub_cat_id', $assigned_categories,
                                           $columns['sub_cat_id'], $additional_opt);
                          ?>                          

                        </div>
                      </div>
                       <div class="form-group">
                        <label for="Manufacturer">Manufacturer</label>
                        <div>
                          <?php
                            $additional_opt =
                              array( 'id' => 'manufacturer','class' =>'form-control' );

                              echo form_dropdown('manufacturer', $manufactures_list,
                                         $columns['manufacturer'], $additional_opt);
                          ?>                          

                          <p class="help-block btnSubmitForm" id="Manufacturer"><a>Manufacturer Quick Add</a></p>
                        </div>
                      </div>
                      <div class="row">                    
                        <div class="col-md-12">
                          <div class="col-lg-4"> 
                          <div class="form-group">
                            <label for="sku">SKU</label>
                            <div>
                              <input type="text" id="sku" name="sku"
                                     value="<?= $columns['part_num'] ?> "
                                     placeholder="" class="form-control sku">
                            </div>
                          </div>
                          </div>
                          <div class="col-lg-4"> 
                          <div class="form-group">
                            <label for="part_num">Part No.</label>
                            <div>
                              <input type="text" id="part_num" name="part_num"
                                     value="<?= $columns['part_num'] ?> "                          
                                     placeholder="" class="form-control manufacturer-part">
                            </div>
                          </div>
                          </div>
                          <div class="col-lg-4"> 
                          <div class="form-group">
                            <label for="upc">UPC</label>
                            <div>
                              <input type="text" id="upc" name="upc"
                                     value="<?= $columns['upc'] ?> "                          
                                     placeholder="" class="form-control manufacturer-part">
                            </div>
                          </div>
                        </div>
                      </div>
                     </div>
                      <div class="row">
                          <div class="col-md-12">
                              <div class="form-group">
                                  <div id="dimensions" >Dimentions(Width x Height X Depth)</div>
                                  <div class="col-lg-4"> 
                                      <input type="text" id="prd_width" name="prd_width"
                                             placeholder=""
                                             value="<?= $columns['prd_width'] ?>"
                                             class="form-control prd_width"></div>
                                  <div class="col-lg-4">
                                      <input type="text" id="prd_height" name="prd_height"
                                             value="<?= $columns['prd_height'] ?>"
                                             Placeholder="" 
                                             class="form-control prd_height"></div>
                                  <div class="col-lg-4">
                                      <input type="text" id="prd_depth" name="prd_depth"
                                             value="<?= $columns['prd_depth'] ?>"
                                             placeholder="" 
                                             class="form-control prd_depth"></div>
                              </div>
                          </div> 
                      </div>                      
                      <div class="form-group">
                          <label for="prd_weight">Weight</label>
                          <div>
                            <input type="text" id="prd_weight" name="prd_weight"
                                   value="<?= $columns['prd_weight'] ?>"
                                   placeholder="" class="form-control prd_weight">
                          </div>
                        </div>
                      </div>                             

                    </div>

                </div>

                <div class="text-center" id="sub-butt">
                      <button type="submit" class="btn btn-primary"
                                name="submit" value="Submit">Submit</button>
                     <button type="submit" class="btn" 
                              name="submit" value="Cancel">Cancel</button>
                </div>

<!-- end form row  -->
                </form>
            </div>

