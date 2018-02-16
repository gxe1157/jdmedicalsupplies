
<div class="shopping-cart">

  <div class="column-labels">
    <label class="product-image">Image</label>
    <label class="product-details">Product</label>
    <label class="product-price">Price</label>
    <label class="product-quantity">Quantity</label>
    <label class="product-removal">Remove</label>
    <label class="product-line-price">Total</label>
  </div>

<?php

  // checkArray($query->result()[0],0);
  foreach($query->result() as $row) {
      $line_item_total   = number_format($row->price*$row->item_qty,2);
      $cart_total = number_format($cart_total+$line_item_total,2);

      $line_is_taxable = 1;
      if($line_is_taxable)
          $total_tax_line  = number_format($total_tax_line+$line_item_total,2);

      $image_path = $row->image_path;
  ?>

  <div class="product">
    <div class="product-image">
      <img src="<?= base_url() ?>public/images/products/<?= $image_path ?>">
    </div>
    <div class="product-details" >
      <div class="product-title"><?= $row->item_title ?></div>
      <p class="product-description"> -- <?= $row->part_num ?> </p>
    </div>
    <div class="product-price"><?= $row->price ?></div>
    <?php if (uri_string()=='process_payment'): ?>
        <div class="product-quantity">
          <input type="number" value="<?= $row->item_qty ?>"
                 id="<?= $row->id  ?>"
                 min="1" disabled>
        </div>
        <div class="product-removal">&nbsp;
        </div>
    <?php else: ?>    
        <div class="product-quantity">
          <input type="number" value="<?= $row->item_qty ?>"
                 id="<?= $row->id  ?>"
                 min="1">
        </div>
        <div class="product-removal">
          <a href="<?= base_url() ?>store_basket/remove/<?= $row->id ?>" >
            <button class="remove-product">
              Remove
            </button>
          </a>
        </div>
    <?php endif;?>    
    <div class="product-line-price"><?= $line_item_total ?></div>
  </div>
<?php } ?>

<!-- Summary of Totals -->
<?php {
    $shipping_tax = $tax_shipping == 0 ? 0 : $shipping;
    $total_tax_line = $total_tax_line+$shipping_tax;
    $tax_total  = number_format($total_tax_line*$taxRate,2);
} ?>


  <div class="totals">
    <div class="totals-item">
      <label>Subtotal</label>
      <div class="totals-value" id="cart-subtotal"><?= number_format($cart_total,2) ?></div>
    </div>

    <?php if (uri_string()=='process_payment'): ?>
        <?php  if( $tax_shipping == 1 ) { ?>
            <div class="totals-item">
              <label>Shipping</label>
              <div class="totals-value" id="cart-shipping"><?= number_format($shipping,2) ?></div>
            </div>
        <?php } ?>
        <div class="totals-item">
          <label>Tax (5%)</label>
          <div class="totals-value" id="cart-tax"><?= number_format($tax_total,2) ?></div>
        </div>
        <?php  if( $tax_shipping == 0 ) { ?>
            <div class="totals-item">
              <label>Shipping</label>
              <div class="totals-value" id="cart-shipping"><?= number_format($shipping,2) ?></div>
            </div>
        <?php } ?>
        <div class="totals-item totals-item-total">
          <label>Grand Total</label>
          <div class="totals-value" id="cart-total"><?= number_format( $cart_total+$tax_total+$shipping,2) ?></div>
        </div>
    <?php endif;?>

  </div>
<!-- 
      <a href="#" class="btn btn-warning text-left"><i class="fa fa-angle-left"></i> Continue Shopping</a>
      <button class="checkout">Checkout</button>
 -->
</div>

