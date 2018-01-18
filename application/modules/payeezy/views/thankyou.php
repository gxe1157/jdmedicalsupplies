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
          <div class="col-md-12 border"><h4>Order Number:  </h4></div>          
          <div class="col-sm-3 col-md-5 border headers">Shipping Address</div>
          <div class="col-sm-7 col-md-7 border hsides">James Gunn<br>123 street<br>new city, nj 07100</div>
        </div>
        <div class="row">
          <div class="col-md-12 border"><h4>Payments</h4></div>         
          <div class="col-sm-3 col-md-5 border headers">Billing Contact</div>
          <div class="col-sm-7 col-md-7 border hsides">James Gunn<br>123 street<br>new city, nj 07100</div>
        </div>          
        <div class="row">
          <div class="col-sm-3 col-md-5 border headers">Billing Address</div>
          <div class="col-sm-7 col-md-7 border hsides">James Gunn<br>123 street<br>new city, nj 07100</div>
        </div>  
        <div class="row">
          <div class="col-sm-3 col-md-5 border headers">Payment Method</div>
          <div class="col-sm-7 col-md-7 border hsides">American Express ... 1234<br>Authorization No 12345</div>
        </div>  

        <!-- Special offer -->
        <div class="row">       
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="listing listing-default">
                        <div class="shape">
                            <div class="shape-text">buy</div>
                        </div>
                        <div class="listing-content">
                            <h3 class="lead">Standard listing</h3>
                            <p>Buy items on normal prices. No discounts available for this listing.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="listing listing-radius listing-success">
                        <div class="shape">
                            <div class="shape-text">50%</div>
                        </div>
                        <div class="listing-content">
                            <h3 class="lead">Discount listing</h3>
                            <p>Buy now - 50% off.</p>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="listing listing-danger">
                        <div class="shape">
                            <div class="shape-text">hot</div>
                        </div>
                        <div class="listing-content">
                            <h3 class="lead">Hot Offer</h3>
                            <p>Best selling for this period.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
      </div>

      <div class="col-md-7 border">
        <div class="container">
            <div class="col-md-12 border"><h4>Items to be shipped</h4></div>  
          <table id="cart" class="table table-hover table-condensed">
              <thead>
              <tr>
                <th style="width:80%">Product</th>
                <th style="width:10%">Quantity</th>             
                <th style="width:10%">Price</th>
                <th style="width:10%" class="text-center">Subtotal</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td data-th="Product">
                  <div class="row">
                    <div class="col-sm-3 hidden-xs">
                      <img src="http://placehold.it/100x100"
                         alt="..." class="img-responsive"/>
                    </div>
                    <div class="col-sm-9">
                      <h4 class="nomargin">Product 1</h4>
                      <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                    </div>
                  </div>
                </td>
                <td data-th="Quantity"> 1 </td>
                <td data-th="Price">$1.99</td>              
                <td data-th="Subtotal" class="text-center">1.99</td>
              </tr>
              <tr>
                <td data-th="Product">
                  <div class="row">
                    <div class="col-sm-3 hidden-xs">
                      <img src="http://placehold.it/100x100"
                         alt="..." class="img-responsive"/>
                    </div>
                    <div class="col-sm-9">
                      <h4 class="nomargin">Product 1</h4>
                      <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                    </div>
                  </div>
                </td>
                <td data-th="Quantity"> 1 </td>
                <td data-th="Price">$1.99</td>              
                <td data-th="Subtotal" class="text-center">1.99</td>
              </tr>
              <tr>
                <td data-th="Product">
                  <div class="row">
                    <div class="col-sm-3 hidden-xs">
                      <img src="http://placehold.it/100x100"
                         alt="..." class="img-responsive"/>
                    </div>
                    <div class="col-sm-9">
                      <h4 class="nomargin">Product 1</h4>
                      <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                    </div>
                  </div>
                </td>
                <td data-th="Quantity"> 1 </td>
                <td data-th="Price">$1.99</td>              
                <td data-th="Subtotal" class="text-center">1.99</td>
              </tr>
              <tr>
                <td data-th="Product">
                  <div class="row">
                    <div class="col-sm-3 hidden-xs">
                      <img src="http://placehold.it/100x100"
                         alt="..." class="img-responsive"/>
                    </div>
                    <div class="col-sm-9">
                      <h4 class="nomargin">Product 1</h4>
                      <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                    </div>
                  </div>
                </td>
                <td data-th="Quantity"> 1 </td>
                <td data-th="Price">$1.99</td>              
                <td data-th="Subtotal" class="text-center">1.99</td>
              </tr>
              <tr>
                <td data-th="Product">
                  <div class="row">
                    <div class="col-sm-3 hidden-xs">
                      <img src="http://placehold.it/100x100"
                         alt="..." class="img-responsive"/>
                    </div>
                    <div class="col-sm-9">
                      <h4 class="nomargin">Product 1</h4>
                      <p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
                    </div>
                  </div>
                </td>
                <td data-th="Quantity"> 1 </td>
                <td data-th="Price">$1.99</td>              
                <td data-th="Subtotal" class="text-center">1.99</td>
              </tr>


            </tbody>
            <tfoot>
              <tr class="visible-xs">
                <td class="text-center"><strong>Total 1.99</strong></td>
              </tr>
              <tr>
                <td>&nbsp</td>
                <td colspan="2" class="hidden-xs"></td>
                <td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
    </div>          
  </div>

</div>
</div>
