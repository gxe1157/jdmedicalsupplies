<?php
 // echo Modules::run('templates/_draw_breadcrumbs', $breadcrumbs_data);
?>
<style>

  .showborder{ border: 0px red solid; }
  .min_row_ht{ min-height: 475px; }
  .pad-bott{ padding-bottom: 20px; }

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

  #img-prd {
    display: block;
    margin: auto;
    width: 70%;
    padding: 15px 0px 10px 0px;
  }
</style>

<div class="row min_row_ht">

  <div class="col-md-3 showborder ">
  	<img id="img-prd" src="<?= base_url() ?>public/images/products/<?= $active_image ?>"
         class="img-responsive"
         alt="<?= $item_title ?>">
  </div>

  <div class="col-md-6 showborder pad-bott">
    <div class ="container">
  		<h3><?= $item_title ?></h3>
      <p><b>Price</b><span class="price">$<?= $price ?></span><br><b>Sale Price</b><span class="sale_price">$<?= $sale_price ?></span>
      </p>

  		<div style="clear:both;"></div>
      <?= $item_description ?>

      <!--Call this module if a volumn discount applies to item. -->
      <div class="row">
        <?php
          if( $discount_table_array > 1 ) {
              // to be added by later;        
          }
        ?>
      </div>
      <!--Call this module if a volumn discount is applies to item. -->

    </div>  
  </div>

  <!-- Enter Qty and select dropdown options -->
  <div class="col-md-3 showborder">
     <div class="row">
      <div class ="container">      
  		  <?= Modules::run('cart/_draw_add_to_cart', $update_id); ?>
      </div>  
     </div> 
  </div>
  <!-- Enter Qty and select dropdown options -->

</div>
