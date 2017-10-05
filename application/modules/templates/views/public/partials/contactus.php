
	<div id="banner-area" class="banner-area" style="background-image:url(public/images/jkingsley/IFB_ContactUs.jpg)">
		<!-- Subpage title start -->
		<div class="banner-text text-center">
     		<div class="container">
	        	<div class="row">
	        		<div class="col-xs-12">
	        			<div class="banner-heading">
	        				<h1 class="banner-title">Contact Us</h1>
	        			</div>
			        	<ul class="breadcrumb">
			            <li>Home</li>
			            <li>Contact</li>
			            <li><a href="#"> Contact Us</a></li>
		          	</ul>
	        		</div>
	        	</div>
       	</div>
    	</div><!-- Subpage title end -->
	</div><!-- Banner area end --> 


	<section id="main-container" class="main-container">
		<div class="container">
			<div class="row">

				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">

					<div id="map" class="map"></div>

				</div><!-- Content col end -->

				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="sidebar sidebar-right">
						<div class="widget">
							<h3 class="widget-title">Contact us</h3>

							<div class="contact-info-box">
								<i class="fa fa-map-marker">&nbsp;</i>
								<div class="contact-info-box-content">
									<h4>Address</h4>
									<p>10 Kearny Avenue<br>Kearny, NJ 07032</p>
								</div>
							</div>

							<div class="contact-info-box">
								<i class="fa fa-phone">&nbsp;</i>
								<div class="contact-info-box-content">
									<h4>Phone</h4>
									<P>TOLL FREE: 833-253-3577</P>									
									<P>Phone:  201-428-2335</P>
									<P>Fax: 201-997-0396</P>
								</div>
							</div>

							<div class="contact-info-box">
								<i class="fa fa-envelope">&nbsp;</i>
								<div class="contact-info-box-content">
									<h4>Email</h4>
									<p>info@jdmedicalsupplies.org</p>
								</div>
							</div>

						</div><!-- Widget end -->

					</div><!-- Sidebar end -->
				</div><!-- Sidebar Col end -->
			
			</div><!-- Content row -->
		</div><!-- Conatiner end -->
	</section><!-- Main container end -->

	<section id="contact" class="contact-three">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					
	    			<h3 class="contact-form-title">Contact Form</h3>

	    			<form id="contact-form"
	    				  action="contact_form" 
	    				  method="post" role="form">

	    				<div class="error-container"></div>
						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label>Name</label>
								    <input class="form-control form-control-name" name="name" id="name" placeholder="" type="text" required>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>Email</label>
									<input class="form-control form-control-email" name="email" id="email" 
									placeholder="" type="email" required>
								</div>
							</div>
							<div class="col-md-4">
								<div class="form-group">
									<label>Subject</label>
									<input class="form-control form-control-subject" name="subject" id="subject" 
									placeholder="" required>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label>Message</label>
							<textarea class="form-control form-control-message" name="message" id="message" placeholder="" rows="10" required></textarea>
						</div>
						<div class="text-right"><br>
							<button class="btn btn-primary solid blank" type="submit">Send Message</button> 
						</div>
					</form>
	    		</div>
			</div>
		</div>
	</section><!-- Cotact form end -->

<script>

  function initMap() {
  	let location = { lat: 40.752744, lng: -74.157074 };

  	let map = new google.maps.Map( document.getElementById("map"), {
  		zoom: 19,
  		center: location
  	});
  	let marker = new google.maps.Marker({
  		position: location,
  		map: map
  	});

  }

</script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCiaF51e-aQ2pHF7tCqWbWK3pKKpOJ6wgU&callback=initMap"></script>