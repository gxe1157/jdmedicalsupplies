<?php
 // echo Modules::run('templates/_draw_breadcrumbs', $breadcrumbs_data);
?>
<style>

  .showborder{ border: 0px red solid; }
  .min_row_ht{ min-height: 475px; }
  .pad-bott{ padding-bottom: 20px; }
  img {
    display: block;
    margin: auto;
    width: 70%;
  }

</style>

<div class="row min_row_ht">

  <div class="col-md-3 showborder">
  	<img src="<?= base_url() ?>public/images/products/<?= $active_image ?>"
         class="img-responsive"
         alt="<?= $item_title ?>">
  </div>

  <div class="col-md-6 showborder pad-bott">
    <div class ="container">
  		<h3><?= $item_title ?></h3>
  		<div style="clear:both;"></div>
      <?= $item_description ?>

      <!-- Add table data here cart/_draw_price_table_to_cart -->
      <div class="row">
        <?php
          if( $item_setup == 2 ){
            echo Modules::run('cart/_draw_table_to_cart', $update_id);
          }
          // echo '<h3>... '.$item_setup.'</h3>';        
        ?>
      </div>
    </div>  
  </div>

  <!-- Add drop down select options here cart/_draw_add_to_cart  -->
  <div class="col-md-3 showborder">
     <div class="row">
      <div class ="container">      
  		  <?= Modules::run('cart/_draw_add_to_cart', $update_id); ?>
      </div>  
     </div> 
  </div>

</div>
