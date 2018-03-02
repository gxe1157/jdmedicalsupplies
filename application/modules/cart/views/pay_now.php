
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
    <?php if ( $ready_gateway == 0 ): ?>        
        <h4>Please provide a ship to address and contact information.</h4>        
    <?php endif;?>    
  </div>
  <div class="col-md-12">
    <div class="row">
      <div class="col-md-5">
            <?php if ( $ready_gateway == 0 ): ?>        
            <form id="payNow" name="payNow" action="<?= base_url('billTo_shipTo') ?>" method="post">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Shipping Methods</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="checkbox">
                                      <label><input id="ship_ground" name="ship_ground" type="checkbox"
                                                 value="Ground" <?= $chkbx_array[0] ?> >Ground</label>
                                    </div>
                                    <div class="checkbox">
                                      <label><input id="ship_2days" name="ship_2days" type="checkbox"
                                                 value="2Days" <?= $chkbx_array[1] ?> >2 Days</label>
                                    </div>
                                    <div class="checkbox">
                                      <label><input id="ship_nextday" name="ship_nextday" type="checkbox"
                                                 value="NextDay" <?= $chkbx_array[2] ?> >Next Day</label>
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
                                     value="<?= set_value('state') ?>" />
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

                        <div class="panel-heading">Shipping Address</div>
                        <div class="panel-body" id="shipTo" style="display:<?= $show_state ?>">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input id="shipToCkbox" type="checkbox" value=""> My billing and shipping address are the same.
                                </div>
                            </div>

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

                <button class="btn btn-primary btn-block" name="submit" id="get_billto" value="Submit" type="submit">
                    <!-- <i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i> -->
                    Submit Billing/Shipping Info
                </button>
                <br>    
            </form>
            <?php else: ?>

            <form id="payNowfields" name="payNowfields"
                  action="<?= base_url('billTo_shipTo/edit') ?>" method="post">

                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info"  style="margin-top: 30px">
                        <div class="panel-heading">Shipping Methods
                            <button class="btn btn-success btn btn-link pull-right"
                                    name="mySubmit" value="edit" type="submit">
                                    <span style="color: #fff;">Edit</span>
                            </button>                            
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="checkbox">
                                     <label><input name="shipping" type="checkbox" <?= $chkbx_array[$chkbx_selected] ?> >
                                        <?= $chkbx_text ?></label>
                                    </div>
                                </div>
                            </div>
                       </div>

                       <div class="panel-heading">Billing Address
                            <button class="btn btn-success btn btn-link pull-right"
                                    name="mySubmit" value="edit" type="submit">
                                    <span style="color: #fff;">Edit</span>
                            </button>                            
                       </div>
                        <div class="panel-body" id="billTo" style="display: block">
                             <p>
                                <?= $first_name.' '.$last_name ?><br>
                                <?php if(!empty($company)) echo $company."<br>"; ?>
                                <?= $address ?><br>
                                <?= $city.', '.$state.' '.$zip ?><br>
                                <?php if(!empty($phone)) echo "Phone: ".$phone."<br>"; ?>
                                <?= "Email: ".$email ?><br>                                
                            </p>    
                        </div>

                        <div class="panel-heading">Shipping Adress
                            <button class="btn btn-success btn btn-link pull-right"
                                    name="mySubmit" value="edit" type="submit">
                                    <span style="color: #fff;">Edit</span>
                            </button>   
                        </div>                             
                        <div class="panel-body" id="shipTo" style="display: block">
                            <p>
                                <?= $shipto_first_name.' '.$shipto_last_name ?><br>
                                <?php if(!empty($shipto_company)) echo $shipto_company."<br>"; ?>
                                <?= $shipto_address ?><br>
                                <?= $shipto_city.', '.$shipto_state.' '.$shipto_zip ?><br>
                            </p>    
                       </div>

                    </div>
                </form>
            <?php endif; ?>                            

      </div>
      <div class="col-md-7" style="margin-top: 10px;">
          <?php if ( $ready_gateway == 1 ): ?>        
            <h3 style="text-align: left;">Payment Details.</h3> <img class="img-responsive" src="http://i76.imgup.net/accepted_c22e0.png">        
          <?php endif; ?>

          <?php
            echo "<p style='padding-left:15px;'>".$showing_statement."</p>";
            $user_type = 'public';
            echo Modules::run('cart/_draw_cart_contents', $query, $user_type);

            // <!-- Pay now cart   -->
            if ( $ready_gateway == 1 ) {
                $this->load->view( $payment_gateway.'/view');
            }
            // <!-- Pay now cart   -->            
          ?>

      </div>  
    </div>
  </div>
</div>    


