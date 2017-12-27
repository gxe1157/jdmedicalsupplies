
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

  $grand_total = 0;
  // checkArray($query->result(),1);
  foreach($query->result() as $row) {
      $sub_total = number_format($row->price*$row->item_qty,2);
      $grand_total = number_format($grand_total+$sub_total,2);
      $image_path = $row->image_path;
  ?>

  <div class="product">
    <div class="product-image">
      <img src="<?= base_url() ?>public/images/products/<?= $image_path ?>">
    </div>
    <div class="product-details">
      <div class="product-title"><?= $row->item_title ?></div>
      <p class="product-description"> -- </p>
    </div>
    <div class="product-price"><?= $row->price ?></div>
    <div class="product-quantity">
      <input type="number" value="<?= $row->item_qty ?>" min="1" style="width: 40px; text-align: right;">
    </div>
    <div class="product-removal">
      <button class="remove-product">
        Remove
      </button>
    </div>
    <div class="product-line-price"><?= $sub_total ?></div>
  </div>
<?php } ?>

  <div class="totals">
    <div class="totals-item">
      <label>Subtotal</label>
      <div class="totals-value" id="cart-subtotal"></div>
    </div>
    <div class="totals-item">
      <label>Tax (5%)</label>
      <div class="totals-value" id="cart-tax"></div>
    </div>
    <div class="totals-item">
      <label>Shipping</label>
      <div class="totals-value" id="cart-shipping"></div>
    </div>
    <div class="totals-item totals-item-total">
      <label>Grand Total</label>
      <div class="totals-value" id="cart-total"></div>
    </div>
  </div>
      <a href="#" class="btn btn-warning text-left"><i class="fa fa-angle-left"></i> Continue Shopping</a>
      <button class="checkout">Checkout</button>

</div>
