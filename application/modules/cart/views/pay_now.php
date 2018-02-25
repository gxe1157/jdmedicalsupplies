<?php
    $show_state = $val_errors ? 'block' : 'none';
?>    
<style>

/*
 * Shipping Address
 */
.panel-info {
    border-color: #999;
}
.panel-info > .panel-heading {
    color: #eee;
    border-color: #999;
}
.panel-info > .panel-heading {
    background-image: linear-gradient(to bottom, #467091 0px, #467091 100%);
}
</style>



<div class="container">
  <div class="col-md-12 border" style="text-align: center;">
    <h4>Please provide a ship to address and contact information.</h4>
  </div>
  <div class="col-md-12 border">
  <form id="payNowfields" name="payNowfields" action="goto_gateway" method="post">            
    <div class="row">
      <div class="col-md-5 border">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Shipping Methods</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="checkbox">
                                      <label><input id="ship_ground" name="ship_ground" type="checkbox"
                                                 value="" <?= $check1 ?> >Ground</label>
                                    </div>
                                    <div class="checkbox">
                                      <label><input id="ship_2days" name="ship_2days" type="checkbox"
                                                 value="" <?= $check2 ?>>2 Days</label>
                                    </div>
                                    <div class="checkbox">
                                      <label><input id="ship_nextday" name="ship_nextday" type="checkbox"
                                                 value="" <?= $check3 ?> >Next Day</label>
                                    </div>
                                </div>
                            </div>
                       </div>

                       <div class="panel-heading">Billing Address</div>
                        <div class="panel-body" id="billTo"
                             style="display: <?= $show_state ?>">

                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="first_name" class="form-control" placeholder="First Name" value="<?= set_value('first_name') ?>" />
                <span style="color: red; "><?php echo form_error('first_name'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="last_name" class="form-control" placeholder="last Name" value="<?= set_value('last_name') ?>" />
                <span style="color: red; "><?php echo form_error('last_name'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="company" class="form-control" placeholder="Company" value="<?= set_value('company') ?>" />
                <span style="color: red; "><?php echo form_error('company'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" placeholder="Address" value="<?= set_value('address') ?>" />
                <span style="color: red; "><?php echo form_error('address'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="city" class="form-control" placeholder="City"
                                     value="<?= set_value('city') ?>" />
                <span style="color: red; "><?php echo form_error('city'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="state" class="form-control" placeholder="State"
                                     value=""<?= set_value('state') ?>"" />
                <span style="color: red; "><?php echo form_error('state'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="zip" class="form-control" placeholder="Zip /Postal Code" value="<?= set_value('zip') ?>" />
                <span style="color: red; "><?php echo form_error('zip'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><input type="text" name="phone" class="form-control" placeholder="Phone Number" value="<?= set_value('phone') ?>" />
                <span style="color: red; "><?php echo form_error('phone'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><input type="text" name="email" class="form-control" placeholder="Email" value="<?= set_value('email') ?>" />
                <span style="color: red; "><?php echo form_error('email'); ?></span>
                                </div>
                            </div>
                        </div>

                        <div class="panel-heading"><input id="shipToCkbox" type="checkbox" value=""> My billing and shipping address are the same.
                        </div>
                        <div class="panel-body" id="shipTo" style="display:<?= $show_state ?>">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="shipto_first_name" class="form-control" placeholder="First Name" value="<?= set_value('shipto_first_name') ?>" />
                <span style="color: red; "><?php echo form_error('shipto_first_name'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="shipto_last_name" class="form-control" placeholder="last Name" value="<?= set_value('shipto_last_name') ?>" />
                <span style="color: red; "><?php echo form_error('shipto_last_name'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="shipto_company" class="form-control" placeholder="Company" value="<?= set_value('shipto_company') ?>" />
                <span style="color: red; "><?php echo form_error('shipto_company'); ?></span>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="shipto_address" class="form-control" placeholder="Address" value="<?= set_value('shipto_address') ?>" />
                <span style="color: red; "><?php echo form_error('shipto_address'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="shipto_city" class="form-control" placeholder="City" value="<?= set_value('shipto_city') ?>" />
                <span style="color: red; "><?php echo form_error('shipto_city'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="shipto_state" class="form-control" placeholder="State" value="<?= set_value('shipto_state') ?>" />
                <span style="color: red; "><?php echo form_error('shipto_state'); ?></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="shipto_zip" class="form-control" placeholder="Zip /Postal Code" value="<?= set_value('shipto_zip') ?>" />
                <span style="color: red; "><?php echo form_error('shipto_zip'); ?></span>
                                </div>
                            </div>
                       </div>



                    </div>
      </div>
      <div class="col-md-7 border" style="margin-top: 50px;">
          <?php
            echo "<p style='padding-left:15px;'>".$showing_statement."</p>";
            $user_type = 'public';
            echo Modules::run('cart/_draw_cart_contents', $query, $user_type);
            // echo Modules::run('cart/_attempt_draw_checkout_btn', $query);
          ?>
<div class="row">
<div class="container">   

<div class="col-md-10 col-md-offset-2" style="margin-bottom: 15px; text-align: right;">
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

</div>

</div>
</div>

      </div>  
    </div>
    </form>            
  </div>
</div>    


