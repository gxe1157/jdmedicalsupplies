
<link href="<?= base_url('assets/css/bootstrap-toggle.min.css') ?>" rel="stylesheet">
<script src="<?= base_url('assets/ckeditor/ckeditor.js') ?>"></script>
<h1><img src="<?= base_url('assets/imgs/settings-page.png') ?>" class="header-img" style="margin-top:-3px;">Settings : <?= $page_url ?></h1>
<hr>
<style>
    .panel-heading {
        background-color: #3276B1 !important;
        color: #fff !important;
    }
</style>


<div class="row">

    <div class="col-sm-6 col-md-6">
        <div class="panel panel-success col-h">
            <div class="panel-heading">Company Name and Address</div>
            <div class="panel-body">
                <?php if ($this->session->flashdata('resultNaviText')) { ?>
                    <div class="alert alert-info"><?= $this->session->flashdata('resultNaviText') ?></div>
                <?php } ?>
<form>

    <div class="form-group"> <!-- Full Name -->
        <label for="full_name_id" class="control-label">Company</label>
        <input type="text" class="form-control" id="full_name_id" name="full_name" placeholder="John Deer">
    </div>  

    <div class="form-group"> <!-- Street 1 -->
        <label for="street1_id" class="control-label">Street Address 1</label>
        <input type="text" class="form-control" id="street1_id" name="street1" placeholder="Street address, P.O. box, company name, c/o">
    </div>                  
                            
    <div class="form-group"> <!-- Street 2 -->
        <label for="street2_id" class="control-label">Street Address 2</label>
        <input type="text" class="form-control" id="street2_id" name="street2" placeholder="Apartment, suite, unit, building, floor, etc.">
    </div>  

    <div class="form-group"> <!-- City-->
        <label for="city_id" class="control-label">City</label>
        <input type="text" class="form-control" id="city_id" name="city" placeholder="Smallville">
    </div>                                  
                            
    <div class="form-group"> <!-- State Button -->
        <label for="state_id" class="control-label">State</label>
        <select class="form-control" id="state_id">
            <option value="AL">Alabama</option>
            <option value="AK">Alaska</option>
            <option value="AZ">Arizona</option>
            <option value="AR">Arkansas</option>
            <option value="CA">California</option>
            <option value="CO">Colorado</option>
            <option value="CT">Connecticut</option>
            <option value="DE">Delaware</option>
            <option value="DC">District Of Columbia</option>
            <option value="FL">Florida</option>
            <option value="GA">Georgia</option>
            <option value="HI">Hawaii</option>
            <option value="ID">Idaho</option>
            <option value="IL">Illinois</option>
            <option value="IN">Indiana</option>
            <option value="IA">Iowa</option>
            <option value="KS">Kansas</option>
            <option value="KY">Kentucky</option>
            <option value="LA">Louisiana</option>
            <option value="ME">Maine</option>
            <option value="MD">Maryland</option>
            <option value="MA">Massachusetts</option>
            <option value="MI">Michigan</option>
            <option value="MN">Minnesota</option>
            <option value="MS">Mississippi</option>
            <option value="MO">Missouri</option>
            <option value="MT">Montana</option>
            <option value="NE">Nebraska</option>
            <option value="NV">Nevada</option>
            <option value="NH">New Hampshire</option>
            <option value="NJ">New Jersey</option>
            <option value="NM">New Mexico</option>
            <option value="NY">New York</option>
            <option value="NC">North Carolina</option>
            <option value="ND">North Dakota</option>
            <option value="OH">Ohio</option>
            <option value="OK">Oklahoma</option>
            <option value="OR">Oregon</option>
            <option value="PA">Pennsylvania</option>
            <option value="RI">Rhode Island</option>
            <option value="SC">South Carolina</option>
            <option value="SD">South Dakota</option>
            <option value="TN">Tennessee</option>
            <option value="TX">Texas</option>
            <option value="UT">Utah</option>
            <option value="VT">Vermont</option>
            <option value="VA">Virginia</option>
            <option value="WA">Washington</option>
            <option value="WV">West Virginia</option>
            <option value="WI">Wisconsin</option>
            <option value="WY">Wyoming</option>
        </select>                   
    </div>
    
    <div class="form-group"> <!-- Zip Code-->
        <label for="zip_id" class="control-label">Zip Code</label>
        <input type="text" class="form-control" id="zip_id" name="zip" placeholder="#####">
    </div>      
    
    <div class="form-group"> <!-- Submit Button -->
        <button type="submit" class="btn btn-primary">Update</button>
    </div>     
    
</form>             </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-6">
        <div class="panel panel-success col-h">
            <div class="panel-heading">Site Logo</div>
            <div class="panel-body">
                <?php if ($this->session->flashdata('resultSiteLogoPublish')) { ?>
                    <div class="alert alert-info"><?= $this->session->flashdata('resultSiteLogoPublish') ?></div>
                <?php } ?>
                <img src="<?= base_url('attachments/site_logo/' . $siteLogo) ?>" alt="Logo is deleted. Upload new!" class="img-responsive">
                <hr>
                <form accept-charset="utf-8" method="post" enctype="multipart/form-data" action="">
                    <input type="file" name="sitelogo" size="20" />
                    <input type="submit" value="Upload New" name="uploadimage" class="btn btn-default" />
                </form>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-6">
        <div class="panel panel-success col-h">
            <div class="panel-heading">Send email from contact form to:</div>
            <div class="panel-body">
                <?php if ($this->session->flashdata('resultEmailTo')) { ?>
                    <div class="alert alert-info"><?= $this->session->flashdata('resultEmailTo') ?></div>
                <?php } ?>
                <form method="POST" action="">
                    <div class="input-group">
                        <input class="form-control" name="contactsEmailTo" value="<?= $contactsEmailTo ?>" type="text">
                        <span class="input-group-btn">
                            <button class="btn btn-default" value="" type="submit">
                                <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                            </button>
                        </span>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="col-sm-6 col-md-6">
        <div class="panel panel-success col-h">
            <div class="panel-heading">Phone - Fax Numbers:</div>
            <div class="panel-body">
                <?php if ($this->session->flashdata('resultEmailTo')) { ?>
                    <div class="alert alert-info"><?= $this->session->flashdata('resultEmailTo') ?></div>
                <?php } ?>
                <div class="form-group"> <!-- Phone-->
                    <label for="phone" class="control-label">Phone</label>
                    <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone">
                </div>      
                <div class="form-group"> <!-- Fax-->
                    <label for="fax" class="control-label">Fax</label>
                    <input type="text" class="form-control" id="fax" name="fax" placeholder="Fax">
                </div>      

            </div>
        </div>
    </div>



</div>
<script src="<?= base_url('assets/js/bootstrap-toggle.min.js') ?>"></script>