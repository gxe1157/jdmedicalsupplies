
<?php
  if( isset($flash) ) echo $flash;  
  $form_location = base_url().$this->uri->segment(1);

  // $this->load->helper('lib/lib_helper');
  // checkArray($columns,1);
  // checkArray($labels,1);  
  // checkArray($errors_array,1);
  // http://getbootstrap.com/getting-started/#download

?>
<form id="myForm" class="form-horizontal"
                  method="post"
                  action="<?= $form_location ?>"
                  role="form" >

    <div class="row">
      <div class="container">
      <div class="col-md-2">&nbsp;</div>

      <div class="col-md-8 offset-md-1" >
          <!-- <center><?= validation_errors("<p style='color: red;'>", "</p>") ?></center> -->
          <br />
               
               <?php
                foreach( $columns as $key => $value ) {
                  if( in_array($key, $columns_not_allowed ) === false ) { ?>    
                      <div class="form-group">
                        <label class="control-label col-sm-3" for="<?= $key ?>"><?= $labels[$key] ?>: </label>
                        <div class="col-sm-6">
                          <input type="text"
                                 class="form-control form-control-<?= $key ?>"
                                 id="<?= $key ?>"
                                 name="<?= $key ?>"
                                 placeholder=""                         
                                 value="<?= $value ?>">
                        </div>
                      </div>
                      <?php if( $key == 'stories') { ?>
                        <div class="col-sm-6"><?= $captcha_html;?></div><br>  
                      <?php }?>

                      <div style="color: red; text-align: center;">
                           <?= isset($errors_array[$key]) ? $errors_array[$key] : null ?>
                      </div>

                <?php } } ?>

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