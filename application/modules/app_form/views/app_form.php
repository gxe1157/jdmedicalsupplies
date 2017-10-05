
<?php
  if( isset($flash) ) echo $flash;  
  $form_location = base_url().$this->uri->segment(1);
  $field_sep = ['phone', 'type_operation', 'type_entertainment' ];
?>
<style>
hr.style-four {
    height: 12px;
    border: 0;
    box-shadow: inset 0 12px 12px -12px rgba(0, 0, 0, 0.5);
    display: none;
}

hr.draw_ln{
  display: block; 
}

.blue-text{
  text-align: center;  
  color: #295B9E;
}

</style>

<form id="myForm" class="form-horizontal"
                  method="post"
                  action="<?= $form_location ?>"
                  role="form" >

    <div class="row">
      <div class="container">
      <div class="col-md-2">&nbsp;</div>



      <div class="col-md-8 offset-md-1" >
          <center><h2 class="blue-text">Open A Business Account</h2></center>
                    <div class="row" style="border: 0px red solid; display: block;">
            <div class="col-md-4"></div>
            <div class="col-md-5 well">
                <p>Medical Supplies</p>
                <ul>
                <li>Ostomy Supplies</li>
                <li>Diabetic Supplies</li>
                <li>All Wound Care Products</li>
                <li>Adult Incontinence Products</li>
                <li>Chux Pads</li>
                <li>Rubber Gloves</li>
                <li>Medical Sheet Products</li>
                <li>Medical Cleaning Products</li>
                </ul>
                <p>And More!</p>

            </div>

          </div>
                <h5 style="text-align:center;">Complete this form and submit to have a representative contact you.</h5>
          
          <p class="blue-text"> Fields marked with an asterisk (*) are required. </p>          
          <br />

               <?php
                foreach( $columns as $key => $value ) {
                  $place_holder = "";
                  $line_title = "";
                  if( in_array($key, $columns_not_allowed ) === false ) {
                  ?>    
                      <div class="form-group">
                        <label class="control-label col-sm-4" for="<?= $key ?>">
                        <?= $req_flds[$key] ?> <?= $labels[$key] ?>: </label>
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
                      <hr class="style-four <?= $draw_line ?>" >
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
      <div class="col-md-2">&nbsp;</div>
    </div>  
    </div> <!-- row ends  -->
</form>   