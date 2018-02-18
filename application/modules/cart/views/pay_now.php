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
    <div class="row">
      <div class="col-md-5 border">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Shipping Address</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="first_name" class="form-control" placeholder="First Name" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="last_name" class="form-control" placeholder="last Name" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="company" class="form-control" placeholder="Company" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" placeholder="Address" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="city" class="form-control" placeholder="City" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="state" class="form-control" placeholder="State" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="zip_code" class="form-control" placeholder="Zip /Postal Code" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><input type="text" name="phone_number" class="form-control" placeholder="Phone Number" value="" /></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><input type="text" name="email_address" class="form-control" placeholder="Email" value="" /></div>
                            </div>
                        </div>
                    </div>
                    <!--SHIPPING METHOD END-->

                    <!--Billing Address-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Bill Address</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                <label class="checkbox-inline">
                                    <input type="checkbox" value="">My billing and shipping address are the same.
                                </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" placeholder="Address" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="city" class="form-control" placeholder="City" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="state" class="form-control" placeholder="State" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <input type="text" name="zip_code" class="form-control" placeholder="Zip /Postal Code" value="" />
                                </div>
                            </div>
                       </div>
                    </div>
                    <!--SHIPPING METHOD END-->

                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Shipping Methods</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <div class="checkbox">
                                      <label><input type="checkbox" value="">Ground</label>
                                    </div>
                                    <div class="checkbox">
                                      <label><input type="checkbox" value="">2 Days</label>
                                    </div>
                                    <div class="checkbox disabled">
                                      <label><input type="checkbox" value="" disabled>Next Day</label>
                                    </div>
                                </div>
                            </div>
                       </div>
                    </div>
                    <!--SHIPPING METHOD END-->

      </div>
      <div class="col-md-7 border" style="margin-top: 50px;">
          <?php $this->load->view('cart/cart_contents_public');
            echo Modules::run('cart/_attempt_draw_checkout_btn', $query);          
          ?>

      </div>  
</div>


