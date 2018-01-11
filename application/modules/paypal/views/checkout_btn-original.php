<div class="row">
<div class="container">   

<?php

echo form_open($form_location);
echo form_hidden('upload', '1');
echo form_hidden('cmd', '_cart');
echo form_hidden('business', $paypal_email);
echo form_hidden('currency_code', $currency_code);
echo form_hidden('custom', $custom);
echo form_hidden('return', $return);
echo form_hidden('cancel', $cancel_return);

$count = 0;
foreach($query->result() as $row) {
    $count++;
    $item_title = $row->item_title;
    $price = $row->price;
    $item_qty = $row->item_qty;
    $item_size = $row->item_size;
    $item_color = $row->item_color;

//$price = 0.01;

    echo form_hidden('item_name_'.$count, $item_title);
    echo form_hidden('amount_'.$count, $price);
    echo form_hidden('item_qty_'.$count, $item_qty);

    if ($item_colour!='') {
        echo form_hidden('on0_'.$count, 'Color');
        echo form_hidden('os0_'.$count, $item_color);
    }

    if ($item_size!='') {
        echo form_hidden('on1_'.$count, 'Size');
        echo form_hidden('os1_'.$count, $item_size);
    }
}

echo form_hidden('shipping_'.$count, $shipping);
?>
<div class="col-md-10 col-md-offset-2" style="margin-bottom: 15px; text-align: right;">
    <a href="<?= base_url().'store_basket/clear_cart'; ?>" class="btn btn-danger">
         Clear Cart</a>
                       
    <button class="btn btn-success" name="submit" value="Submit" type="submit">
        <i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i>
        Go To Checkout
    </button>
</div>
</div>
</div>
<?php
echo form_close();
