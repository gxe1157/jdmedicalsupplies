
<div class="row">
<div class="container">   

<div class="col-md-10 col-md-offset-2" style="margin-bottom: 15px; text-align: right;">
            <form action="https://demo.globalgatewaye4.firstdata.com/pay" id="pay_now_form_65559b2047" method="post">
                <input type="hidden" name="x_login" value="HCO-FULL-468" />
                <input type="hidden" name="x_show_form" value="PAYMENT_FORM" />
                <input type="hidden" name="x_fp_sequence" value="15155939933414624110" />
                <input type="hidden" name="x_fp_hash" value="PNB-1.0-314f6ae8a2cb10fe120b958591831d8957beea00" />
                <input type="hidden" name="x_amount" value="10.00"/>
                <input type="hidden" name="x_currency_code" value="USD" />
                <input type="hidden" name="x_test_request" value="TRUE" />
                <input type="hidden" name="x_relay_response" value="" />
                <input type="hidden" name="donation_prompt" />
                <input type="hidden" name="button_code" value="Pay Now Full Service Mailers DEMO06" />

                <a href="<?= base_url().'store_basket/clear_cart'; ?>" class="btn btn-danger">
                     Clear Cart</a>
                                   
                <button class="btn btn-success" name="submit" value="Submit" type="submit">
                    <i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i>
                    Pay Now
                </button>
            </form>
</div>

</div>
</div>
