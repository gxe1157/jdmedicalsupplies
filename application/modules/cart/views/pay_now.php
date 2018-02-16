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


<div class="row">
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
                                <div class="col-md-12"><strong>First Name:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="first_name" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Last Name:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="last_name" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Company:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="company" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Address:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>City:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="city" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>State:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="state" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Zip / Postal Code:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="zip_code" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Phone Number:</strong></div>
                                <div class="col-md-12"><input type="text" name="phone_number" class="form-control" value="" /></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Email Address:</strong></div>
                                <div class="col-md-12"><input type="text" name="email_address" class="form-control" value="" /></div>
                            </div>
                        </div>
                    </div>
                    <!--SHIPPING METHOD END-->

                    <!--Billing Address-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Bill Address</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12"><strong>First Name:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="first_name" class="form-control" value="" />
                                </div>
                            </div>
                       </div>
                       My billing address and shiiping address are the same.
                    </div>
                    <!--SHIPPING METHOD END-->

                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Shipping Methods</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12"><strong>First Name:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="first_name" class="form-control" value="" />
                                </div>
                            </div>
                       </div>
                    </div>
                    <!--SHIPPING METHOD END-->

      </div>
      <div class="col-md-7 border" style="margin-top: 50px;">
          <?php $this->load->view('cart/cart_contents_public'); ?>
      </div>  
</div>
</div>
