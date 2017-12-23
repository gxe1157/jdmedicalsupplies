<div class="row">
<div class="container">    
<h1>Please Create An Account</h1>
<p>You do not need to create an account with us, however, if you do then you'll be 
able to enjoy:</p>
<p>
    <ul>
        <li>Order Tracking</li>
        <li>Downloadable Order Forms</li>
        <li>Priority Technical Support</li>
    </ul>
</p>
<p>Creating an account only takes a minute or so and it's a good vibe.</p>
<p>Would you like to create an account?</p>

<div class="col-md-10" style="margin-top: 36px; margin-bottom: 15px;">
<?php
echo form_open('cart/submit_choice'); ?>
    <button class="btn btn-success" name="submit" value="Yes - Let's Do It" type="submit">
        <i class="fa fa-thumbs-up fa-lg" aria-hidden="true"></i>
        Yes - Let's Do It
    </button>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <button class="btn btn-danger" name="submit" value="No Thanks" type="submit">
        <i class="fa fa-thumbs-down fa-lg" aria-hidden="true"></i>
        No Thanks
    </button>
<?php 
echo form_hidden('checkout_token', $checkout_token);
echo form_close(); ?>
</div>
</div>
</div>
