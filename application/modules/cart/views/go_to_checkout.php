
<?php 
  $form_location = base_url().'youraccount/submit_login'; 
  if( $this->uri->segment(3) == 1){
      $flash_msg = 'Login failed. Invalid username or password';
      $error = '<div class="alert alert-danger" role="alert">'.$flash_msg.'</div>';
  }

?>

<div class="row">
<div class="container" style="min-height: 425px;">    
    <div class="col-md-6" style="margin-top: 15px; border-right: 2px #999 solid;">
      <form name="form-signin" class="form-signin" style="width: 80%; margin: 0 auto;" 
            action="<?= $form_location ?>" method="POST">
        <input type='hidden' name='log_source' value='checkout_token'  />
        
        <h2 class="form-signin-heading">Returning Customers</h2>
        <p>Sign in for faster checkout.</p>
        <?= $error ?>

        <label for="inputText" class="sr-only">Username or Email address</label>
        <input type="text" id="inputText"
               
               class="form-control"
               name="username" placeholder="Username or Email address"
               autocomplete="new-password"
               autofocus>

        <label for="inputPassword" class="sr-only">Password</label>
        <br />
        <input type="password" id="inputPassword"
                       
               class="form-control"
               name = "password" placeholder="Password"
               autocomplete="new-password">

        <br />       
        <div class="col-xs-12 col-sm-12 col-md-12">
           <div class="col-xs-6 col-sm-6 col-md-6">
              <div class="form-group">
                  <input type="checkbox" value="remember-me"> Remember me
              </div>
           </div>

            <div class="col-xs-6 col-sm-6 col-md-6">
              <div class="form-group" style="width: 80%;">
                 <a href="<?= base_url() ?>site_dashboard/forgot_password"> Forgot Password? </a>
                 <a href="<?= base_url() ?>site_dashboard/contactus"> Membership Support</a>
              </div>
           </div>
        </div>
        <button class="btn btn-lg btn-primary btn-block" 
            type="submit" name="submit" value="Submit">Sign in
        </button>
      </form>
    </div>

    <div class="col-md-6" style="text-align: center;">
        <h2 class="form-signin-heading">New Customers</h2>
        <p>Don't have an account? No Problem, you can check out as a guest. You'll have an opportunity to create an account during checkout.</p>
        <!-- redirect('cart/index/'.$checkout_token); -->
        <form  name="form-signup" class="form-signin"
               action="<?= base_url() ?>process_payment" method="POST"> 

            <button class="btn btn-success" style="margin-bottom: 10px;"
                    margin-bottom: 20px; name="submit" value="Yes - Let's Do It" type="submit">
                <i class="fa fa-thumbs-up fa-lg" aria-hidden="true"></i>
                Continue Checkout as Guest
            </button>
        </form>
    </div>
</div>
<br>
</div>
