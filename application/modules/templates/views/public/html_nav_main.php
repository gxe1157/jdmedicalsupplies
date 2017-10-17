<?php defined('BASEPATH') OR exit('No direct script access allowed');


foreach ($menu_prd_drop_down as $key => $sub_cat) {
//	echo $key."<br>";
	foreach ($sub_cat as $key=>$value) {
//		echo $key." => ".$value."<br>";
	}
}

$medical_supplies = [ 
	'Feminine Hygiene',
	'Grooming Supplies',
	'Personal Care Wipes',
	'Skin Care Products',
	'Abdominal Binder',
	'Bedpans and Commodes',
	'Cervical Collars',
	'Stethoscope',
	'Nutritionals & Supplements',
	'Hazardous Waste Control',
	'Gauzes & Dressings',
	'Gloves',
	'Enema Supplies',
	'Medicine Cups'
];

$test_kits = [
'Blood Pressure Monitor',
'Blood Glucose Meter',
'Drug Test Kit',
'Pregnancy Test Kit',
'Hepatitis Test Kit',
'HIV Test Kit',
'Malaria Test Kits',
'Syphilis Test Kits',
'Tuberculosis Test Kits',
'Urinalysis Test Strips'
]

?>


<?php $first_bit = trim($this->uri->segment(1) ); ?>
	<nav class="site-navigation navigation">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="site-nav-inner pull-left">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
						 data-target=".navbar-collapse">
				        	<span class="sr-only">Toggle navigation</span>
				        	<span class="icon-bar"></span>
				        	<span class="icon-bar"></span>
				        	<span class="icon-bar"></span>
		    			</button>

		    			<div class="collapse navbar-collapse navbar-responsive-collapse">
		    				<ul class="nav navbar-nav">

     						<li class="dropdown active">
     							<a href="<?= base_url() ?>">Home</a>
     						</li>

			               <li class="dropdown">
			                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
			                  About Us
			                  <i class="fa fa-angle-down"></i></a>
	      					  <ul class="dropdown-menu" role="menu">
		                           <li><a href="<?= base_url() ?>about-us">About Us</a></li>
		                           <li><a href="<?= base_url() ?>about-home-health">Home Health</a></li>
		                           <li><a href="<?= base_url() ?>about-physicians-office">Physicians Office</a></li>
		                           <li><a href="<?= base_url() ?>about-consumer-hospice">Consumer Hospice</a></li>
		                           <li><a href="<?= base_url() ?>about-assisted-living">Assisted Living</a></li>     
			                  </ul>         
			                </li>

			               <li class="dropdown">
			                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products
			                  <i class="fa fa-angle-down"></i></a>
<!-- ev -->
								<ul class="dropdown-menu" role="menu">
									<?php foreach($menu_prd_drop_down as $key => $sub_cat){ ?>								
									      <li class="dropdown-submenu">
									        <a class="test" tabindex="-1" href="#">Medical Supplies<span class="caret"></span></a>
									        <ul class="dropdown-menu">
									        <?php foreach ( $sub_cat as $index => $value) { ?>
									          	  <li><a tabindex="-1" href="<?= base_url() ?>store_products/manage/<?= $index ?>"><?= $value ?></a></li>
									        <?php  } ?>
									        </ul>
									      </li>    
									<?php }?>      
			                    </ul>
			                </li>
<!-- ev -->
			               <li class="dropdown">
			                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products
			                  <i class="fa fa-angle-down"></i></a>

							<ul class="dropdown-menu" role="menu">
      <li class="dropdown-submenu">
        <a class="test" tabindex="-1" href="#">Medical Supplies<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <?php foreach ( $medical_supplies as $key => $value) { ?>
          		<li><a tabindex="-1" href="<?= base_url() ?>store_products/manage/<?= $key ?>"><?= $value ?></a></li>
        <?php  } ?>
        </ul>
      </li>    
      <li class="dropdown-submenu">
        <a class="test" tabindex="-1" href="#">Home Medical Equipment<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
          <li><a tabindex="-1" href="#">2nd level dropdown</a></li>
        </ul>
      </li>    
      <li class="dropdown-submenu">
        <a class="test" tabindex="-1" href="#">Test Kits<span class="caret"></span></a>
        <ul class="dropdown-menu">
        <?php foreach ( $test_kits  as $key => $value) { ?>
          		<li><a tabindex="-1" href="<?= base_url() ?>store_products/manage/<?= $key ?>"><?= $value ?></a></li>
        <?php  } ?>
        </ul>
      </li>    
		                   </ul>
			                </li>

			               <li class="dropdown">
			                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">News <i class="fa fa-angle-down"></i></a>
	      					  <ul class="dropdown-menu" role="menu">
	      					       <?php if( $first_bit == null ){ ?>
			                           <li><a href="<?= base_url() ?>news">News</a></li>
			                           <li><a href="#client-reviews">Client Reviews</a></li>
		                           <?php } else { ?>
			                           <li><a href="<?= base_url() ?>news">News</a></li>
			                           <li><a href="<?= base_url() ?>client-reviews">Client Reviews</a></li>
		                           <?php } ?>

	 	                           <!-- <li><a href="<?= base_url() ?>faq">Faq</a></li> -->
			                  </ul>
			               </li>

						   <li class="dropdown"><a href="<?= base_url() ?>contactus">Contact </a></li>

			            </ul><!--/ Nav ul end -->
		    			</div><!--/ Collapse end -->

					</div><!-- Site Navbar inner end -->

					<div class="find-agent pull-right">
		    			<a href="<?= base_url() ?>quickquote">Click here for Consumer Product Information</a>
		    		</div>

				</div><!--/ Col end -->
			</div><!--/ Row end -->
		</div><!--/ Container end -->
	</nav><!--/ Navigation end -->
