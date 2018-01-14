<!-- Payeezy  -->

<div class="row">
<div class="container">   

<div class="col-md-10 col-md-offset-2" style="margin-bottom: 15px; text-align: right;">
            <form id="payNow" action="<?= $form_location ?>" method="post">
                <input type="hidden" name="x_login" value="<?= $payeezy['x_login'] ?>" >
                <input type="hidden" name="x_amount" value="<?= $payeezy['x_amount'] ?>" >
                <input type="hidden" name="x_fp_sequence" value="<?= $payeezy['x_fp_sequence'] ?>" >
                <input type="hidden" name="x_fp_timestamp" value="<?= $payeezy['x_fp_timestamp'] ?>" >
                <input type="hidden" name="x_fp_hash" value="<?= $payeezy['x_fp_hash'] ?>" >
                <input type="hidden" name="x_currency_code" value="<?= $payeezy['x_currency_code'] ?>" >
                <input type="hidden" name="x_show_form" value="PAYMENT_FORM"/>

                <a href="<?= base_url().'store_basket/clear_cart'; ?>" class="btn btn-danger">
                     Clear Cart</a>
                                   
                <button class="btn btn-success" name="submit" id="pay_now" value="Submit" type="submit">
                    <i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i>
                    Pay Now
                </button>
            </form>

</div>

</div>
</div>
