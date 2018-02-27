<style>
  .border{border: 0px red solid}
  .nopadding{ padding: 0px; }
  .headers{
    border: 0px red solid;
    font-size: 1.2em;
    color: #D9533F;
    padding-bottom:2px;
  }
.hsides{
  /**/
} 

.shape {
    border-style: solid;
    border-width: 0 70px 40px 0;
    float: right;
    height: 0px;
    width: 0px;
    -ms-transform: rotate(360deg); /* IE 9 */
    -o-transform: rotate(360deg); /* Opera 10.5 */
    -webkit-transform: rotate(360deg); /* Safari and Chrome */
    transform: rotate(360deg);
}
.listing {
    background: #fff;
    border: 1px solid #ddd;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    margin: 15px 0;
    overflow: hidden;
}
.listing:hover {
    -webkit-transform: scale(1.1);
    -moz-transform: scale(1.1);
    -ms-transform: scale(1.1);
    -o-transform: scale(1.1);
    transform: rotate scale(1.1);
    -webkit-transition: all 0.4s ease-in-out;
    -moz-transition: all 0.4s ease-in-out;
    -o-transition: all 0.4s ease-in-out;
    transition: all 0.4s ease-in-out;
}
.shape {
    border-color: rgba(255,255,255,0) #d9534f rgba(255,255,255,0) rgba(255,255,255,0);
}
.listing-radius {
    border-radius: 7px;
}
.listing-danger {
    border-color: #d9534f;
}
.listing-danger .shape {
    border-color: transparent #d9533f transparent transparent;
}
.listing-success {
    border-color: #5cb85c;
}
.listing-success .shape {
    border-color: transparent #5cb75c transparent transparent;
}
.listing-default {
    border-color: #999999;
}
.listing-default .shape {
    border-color: transparent #999999 transparent transparent;
}
.listing-primary {
    border-color: #428bca;
}
.listing-primary .shape {
    border-color: transparent #318bca transparent transparent;
}
.listing-info {
    border-color: #5bc0de;
}
.listing-info .shape {
    border-color: transparent #5bc0de transparent transparent;
}
.listing-warning {
    border-color: #f0ad4e;
}
.listing-warning .shape {
    border-color: transparent #f0ad4e transparent transparent;
}
.shape-text {
    color: #fff;
    font-size: 12px;
    font-weight: bold;
    position: relative;
    right: -40px;
    top: 2px;
    white-space: nowrap;
    -ms-transform: rotate(30deg); /* IE 9 */
    -o-transform: rotate(360deg); /* Opera 10.5 */
    -webkit-transform: rotate(30deg); /* Safari and Chrome */
    transform: rotate(30deg);
}
.listing-content {
    padding: 0 20px 10px;
}
</style>
<div class="row">
<div class="container">

  <div class="col-md-12 border" style="text-align: center;">
    <h2>Thank you for your business.</h2>
    <p id="p1">We are processing your order and will send you an email confirmation shortly.</p>
  </div>
  <div class="col-md-12 border">
    <div class="row">
      <div class="col-md-5 border">

        <div class="row">
          <div class="col-md-12 border"><h4>Order Number: <?= $account_data[0]->order_id ?></h4></div>          
        </div>
        <div class="row">
          <div class="col-sm-3 col-md-4 border headers">Bill To:</div>
          <div class="col-sm-7 col-md-8 border hsides">
             <p>
                <?= $account_data[0]->first_name.' '.$account_data[0]->last_name ?><br>
                <?php if(!empty($account_data[0]->company)) echo $account_data[0]->company."<br>"; ?>
                <?= $account_data[0]->address ?><br>
                <?= $account_data[0]->city.', '.$account_data[0]->state.' '.$account_data[0]->zip ?><br>
                <?php if(!empty($account_data[0]->phone)) echo "Phone: ".$account_data[0]->phone."<br>"; ?>
                <?= "Email: ".$account_data[0]->email ?><br>                                
            </p>    
          </div>
        </div>          
        <div class="row">
          <div class="col-sm-3 col-md-4 border headers">Ship To:</div>
          <div class="col-sm-7 col-md-8 border hsides">
            <p>
                <?= $account_data[0]->shipto_first_name.' '.$account_data[0]->shipto_last_name ?><br>
                <?php if(!empty($account_data[0]->shipto_company)) echo $account_data[0]->shipto_company."<br>"; ?>
                <?= $account_data[0]->shipto_address ?><br>
                <?= $account_data[0]->shipto_city.', '.$account_data[0]->shipto_state.' '.$account_data[0]->shipto_zip ?><br>
            </p>
          </div>
        </div>  
        <div class="row">
          <div class="col-sm-3 col-md-4 border headers">Payment Method</div>
          <div class="col-sm-7 col-md-8 border hsides"><?= $payment_method ?><br>
            Card Number: <?= $Card_Number ?><br>
            Authorization No: <?= $Authorization_Num ?></div>
        </div>  

        <!-- Special offer -->
        <div class="row">       
        <div class="container">
            <div class="row">
                <div class="col-xs-11 col-sm-11 col-md-11 col-lg-11">
                    <div class="listing listing-default">
                        <div class="shape">
                            <div class="shape-text"></div>
                        </div>
                        <div class="listing-content">
                            <h4>Please Create An Account</h4>
                            <p>You do not need to create an account with us, however, if you do then you'll be 
                            able to enjoy:</p>
                            <p>
                                <ul>
                                    <li>Order Tracking</li>
                                    <li>Downloadable Coupon Offers</li>
                                    <li>.....</li>
                                </ul>
                            </p>
                            <p>Creating an account only takes a minute.</p>

                            <a href="<?= base_url('youraccount/start') ?>">
                                <button class="btn btn-success" name="submit" value="Yes - Let's Do It" type="submit" >
                                    Yes - Let's Do It
                                </button>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <a href="<?= base_url() ?>">
                                <button class="btn btn-danger" name="submit" value="No Thanks" type="submit">
                                    No Thanks
                                </button>
                            </a>

                        </div>
                    </div>
                </div>
          </div>
        </div>
        </div>

      </div>

      <div class="col-md-7 border">
        <div class="row" style="margin-top: 55px; border: 0px red solid;" >
        <?php
            echo "<p style='padding-left:15px;'>".$showing_statement."</p>";
            $user_type = 'public';
            echo Modules::run('cart/_draw_cart_contents', $query, $user_type);
        ?>
      </div>
      </div>
      
    </div>          
  </div>

</div>
</div>
