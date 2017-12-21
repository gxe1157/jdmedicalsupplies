<?php
 // echo Modules::run('templates/_draw_breadcrumbs', $breadcrumbs_data);
?>
<style>
  .showborder{ border: 1px red solid; }
  .min_row_ht{ min-height: 450px; }
</style>

<div class="row min_row_ht">

  <div class="col-md-3 showborder">
  	<img src="<?= base_url() ?>public/images/product/<?= $active_image ?> " class="img-responsive" alt="<?= $item_title ?>">
  </div>

  <div class="col-md-6 showborder">
  		<h2><?= $item_title ?></h2>
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

  <!-- Add drop down select options here cart/_draw_add_to_cart  -->
  <div class="col-md-3 showborder">
     <div class="row">
  		  <?= Modules::run('cart/_draw_add_to_cart', $update_id); ?>
     </div> 
  </div>

</div>
