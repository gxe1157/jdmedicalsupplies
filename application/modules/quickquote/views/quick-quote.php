
<?php
  if( isset($flash) ) echo $flash;  
  $form_location = base_url().$this->uri->segment(1);
?>

<style>
  .blue-text{
    text-align: center;
    color: #295B9E;
  }

  .border{
      border: 0px red solid;
  }

</style>

<form id="myForm" class="form-horizontal"
                  method="post"
                  action="<?= $form_location ?>"
                  role="form" >

    <div class="row">
      <div class="container border">
      <div class="col-md-2 border">&nbsp;</div>

      <div class="col-md-8 offset-md-1 border">
          <h3 class="blue-text">Consumer Products</h3>
                <div class="well" style="margin: 0 auto; width: 250px;">
                    Home Medical Equipment
                    <ul>
                      <li> Walkers</li>
                      <li> Crutches</li>
                      <li> Blood Glucose Monitors</li>
                      <li> Shower Chairs</li>
                      <li> Gravity/Pump/Syringe</li>
                      <li> Canes</li>
                      <li> Grab Bars</li>
                    </ul>
                    And More!
                </div>                
          <br>      
          <p class="blue-text"> Fields marked with an asterisk (*) are required. </p>      

              <?php
                foreach( $columns as $key => $value ) {
                  $line_title = "";                  
                  if( in_array($key, $columns_not_allowed ) === false ) {
                    // if($key == 'email')
                    //    $line_title = "Coverage Information";

                    // if($key == 'gross_sales_other')
                    //    $line_title = "Building Information";
                    // if( !isset($req_flds[$key]) ) $req_flds[$key]='';
                  ?>    
                      <div class="form-group">
                        <label class="control-label col-sm-4" for="<?= $key ?>">
                        <?= $req_flds[$key] ?>  <?= $labels[$key] ?>: </label>
                        <div class="col-sm-6">
                          <input type="text"
                                 class="form-control form-control-<?= $key ?>"
                                 id="<?= $key ?>"
                                 name="<?= $key ?>"
                                 placeholder=""                         
                                 value="<?= $value ?>">                  
                        </div>
                      </div>
                      <div style="color: red; text-align: center;">
                           <?= isset($errors_array[$key]) ? $errors_array[$key] : null ?>
                      </div>
                      <h4 class="blue-text"><?= $line_title ?></h4>

                <?php } } ?>

                <?php
                    $this->load->view( 'site_captcha/draw_captcha');
                ?>

          <div class="form-actions" 
               style="text-align: right; padding: 20px; ">
                <button type="submit" class="btn btn-primary"
                        name="submit" value="Submit">Submit</button>
                        
                <button type="submit" class="btn"
                        name="submit" value="Cancel">Cancel</button>
          </div>
      </div>
      <div class="col-md-2 border">&nbsp;</div>
    </div>  
    </div> <!-- row ends  -->
</form>   