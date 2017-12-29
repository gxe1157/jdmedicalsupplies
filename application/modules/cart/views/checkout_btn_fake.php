<div class ="row">

<div class="col-md-10 col-md-offset-2" style="margin-bottom: 15px; text-align: right;">
	<a href="<?= base_url().'store_basket/clear_cart'; ?>" class="btn btn-danger">
		 Clear Cart</a>

    <a href="<?= base_url().'cart/go_to_checkout/'.$checkout_token; ?>">
    <button class="btn btn-warning" name="submit" value="Submit" type="button">
        <i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i>
        Go To Checkout
    </button></a>
</div>
</div>