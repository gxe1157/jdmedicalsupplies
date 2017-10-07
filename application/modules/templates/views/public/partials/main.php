<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<?php
	$image_path = base_url()."public/images/jkingsley/jdmed/site_img/";
	$this->load->view('html_carousel.php');
?>

	<section id="ts-features" class="ts-features">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-sm-12 col-xs-12">
					<div class="intro">
						<h2 class="intro-title">
							<span class="title-head"> Welcome To J&D Medical Supplies</span>
						</h2>
						<p class="intro-text" style="font-size: 1.2em;">
							<h5>Home Medical Equipment & Supplies</h5>  J&D Medical Supplies is a medical and office supply company catering to the consumer and professional clientele. We specialize in providing fast and affordable products direct to your door. We look forward to welcoming you to our family and fulfilling your first order with our unmatched customer service.
						</p>
					</div><!-- Intro end -->

				</div><!-- Col end -->

				<div class="col-md-4 col-sm-12 col-xs-12">
					<div class="quote-form">
						<h3>Open A Business Account</h3>
						<p>Are you a medical facility? J&D Medical Supplies can supply you with all your medical and office needs.</p> 

						<a href="<?= base_url() ?>app_form">

						<img src="<?= $image_path ?>JDMedical_OpenBusinessAccount.jpg" class="img-responsive"></a>
	      
					 	<div class="form-group">
							<a href="<?= base_url() ?>app_form">
							<input class="button btn btn-primary" type="button" value="To create an Account, Click here."></a>
						</div>
					</div><!-- Quote form end -->

				</div><!-- Col end -->

<a name="industries-we-insure"></a>

			</div><!--/ Content row end -->
		</div><!--/ Container end -->
	</section><!-- About us end -->

	<section id="product-area" class="product-area" style="background-image:url(
	<?= base_url() ?>public/images/jkingsley/3706.jpg)">
	
		<div class="container">
			<div class="row text-center banner-text-shadow">
				<h2 class="title">
					Need Home Medical Equipment and Supplies?
					<span class="title-head">We've Got You Covered</span>
				</h2>
			</div><!--/ Title row end -->
			<div class="row">
				<div class="col-md-12">
					<div id="product-slide" class="owl-carousel owl-theme product-slide">
						<div class="item">
					      <div class="product-item">
								<img class="img-responsive"
									 src= "<?= $image_path ?>home_health.jpg"
									 alt="Home Health" style="height: 185px; width: 278px;">
								<h4 class="product-title">Home Health</h4>
							<p><a href="<?= BASE_URL() ?>about-home-health" class="btn btn-primary">Learn More</a></p>
							</div><!-- Product item end -->
			      	</div><!-- Item 1 end -->

			      	<div class="item">
					      <div class="product-item">
								<img class="img-responsive"
									 src= "<?= $image_path ?>physicians_office.jpg"
									 alt="Physicians Office" style="height: 185px; width: 278px;">

								<h4 class="product-title">Physicians Office</h4>
							<p><a href="<?= BASE_URL() ?>about-physicians-office" class="btn btn-primary">Learn More</a></p>
						  </div><!-- Product item end -->
			      	</div><!-- Item 2 end -->

			      	<div class="item">
					      <div class="product-item">
								<img class="img-responsive"
									 src= "<?= $image_path ?>consumer_hospice.jpg"
									 alt="Consumer Hospice" style="height: 185px; width: 278px;">

								<h4 class="product-title">Consumer Hospice</h4>
							<p><a href="<?= BASE_URL() ?>about-consumer-hospice" class="btn btn-primary">Learn More</a></p>
						  </div><!-- Product item end -->
			      	</div><!-- Item 3 end -->
			      	<div class="item">
					      <div class="product-item">
								<img class="img-responsive"
									 src= "<?= $image_path ?>assisted_living.jpg"
									 alt="Assisted Living" style="height: 185px; width: 278px;">
								<h4 class="product-title">Assisted Living</h4>
							<p><a href="<?= BASE_URL() ?>about-assisted-living" class="btn btn-primary">Learn More</a></p>
						  </div><!-- Product item end -->
			      	</div><!-- Item 4 end -->
<a name="client-reviews"></a>				
					</div><!-- Product slide -->
				</div><!-- Col end -->
			</div><!--/ Content row end -->
		</div><!--/ Container end -->
		<div class="down-arrow-white"></div>
	</section><!-- Product area end -->

	<section id="testimonial" class="testimonial">
		<div class="container">
			<div class="row text-center">
				<h3 class="title">
					We Love To Hear
					<span class="title-head">Words From Our Customers</span>
				</h3>
			</div><!--/ Title row end -->

			<div class="row">
				<div id="testimonial-slide" class="owl-carousel owl-theme testimonial-slide">
				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb" src="<?= base_url() ?>public/images/clients/testimonial1.png" alt="testimonial">
				         <span class="quote-text">
				           Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor inci done idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitoa tion ullamco laboris nisi ut aliquip ex ea commodo consequat.
				         </span>
				         <span class="quotes-author">Leslie R. Kelley,</span>
				         <span class="quotes-subtext">Manager, Luina Private Firm</span>
				       	
				     </div>
				  </div><!--/ Item 1 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb" src="<?= base_url() ?>public/images/clients/testimonial2.png" alt="testimonial">
				         <span class="quote-text">
				           Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor inci done idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitoa tion ullamco laboris nisi ut aliquip ex ea commodo consequat.
				         </span>
				         <span class="quotes-author">Kevin Dixon,</span>
				         <span class="quotes-subtext">Govt. Official</span>
				       	
				     </div>
				  </div><!--/ Item 2 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb" src="<?= base_url() ?>public/images/clients/testimonial3.png" alt="testimonial">
				         <span class="quote-text">
				           Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor inci done idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitoa tion ullamco laboris nisi ut aliquip ex ea commodo consequat.
				         </span>
				         <span class="quotes-author">Michael J. Higgins,</span>
				         <span class="quotes-subtext">Rtd. Army Officer</span>
				       	
				     </div>
				  </div><!--/ Item 3 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb" src="<?= base_url() ?>public/images/clients/testimonial4.png" alt="testimonial">
				         <span class="quote-text">
				           Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor inci done idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitoa tion ullamco laboris nisi ut aliquip ex ea commodo consequat.
				         </span>
				         <span class="quotes-author">Tara Gray,</span>
				         <span class="quotes-subtext">Accountant, Private Firm</span>
				       	
				     </div>
				  </div><!--/ Item 4 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb" src="<?= base_url() ?>public/images/clients/testimonial5.png" alt="testimonial">
				         <span class="quote-text">
				           Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor inci done idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitoa tion ullamco laboris nisi ut aliquip ex ea commodo consequat.
				         </span>
				         <span class="quotes-author">Connie Tinker,</span>
				         <span class="quotes-subtext">Govt. Official</span>
				       	
				     </div>
				  </div><!--/ Item 5 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb" src="<?= base_url() ?>public/images/clients/testimonial6.png" alt="testimonial">
				         <span class="quote-text">
				           Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor inci done idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitoa tion ullamco laboris nisi ut aliquip ex ea commodo consequat.
				         </span>
				         <span class="quotes-author">Glen E. Green,</span>
				         <span class="quotes-subtext">School Teacher</span>
				       	
				     </div>
				  </div><!--/ Item 6 end -->

				</div><!--/ Testimonial carousel end-->

			</div><!--/ Content row end -->
		</div><!--/ Container end -->
	</section><!--/ Testimonial end -->

	<section id="facts" class="facts no-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6 fact-text">
					<h2 class="" style="font-size: 2.5em; color: #fff;">
						<span class="title-head"> States Available: </span>
					</h2>
					<p style="font-size: 1.5em;">J&D Medical Supplies delivers to all 50 States</p>
					<p>We ship to countries and territories outside the continental United States.<br>Please note that not all of our products are eligible for international shipping. Some of these items include certain brands flammable items and oversized products.</p>
				</div><!-- Col end -->
				<div class="col-md-6 fact-text">
    				<img class="img-responsive" 
    					 src="<?= base_url() ?>public/images/jkingsley/usmap.png"
    					 width="100%">

				</div><!-- Col end -->

			</div><!--/ Content row end -->
<a name="new-news"></a>						
		</div><!--/ Container end -->
	</section><!-- Facts end -->

	<section id="news" class="news">
		<div class="container">
			<div class="down-arrow-color"></div>
			<div class="row text-center">
				<h3 class="title">
					Get Up to Date
					<span class="title-head">Latest Update From News</span>
				</h3>
			</div><!--/ Title row end -->

			<div class="row">
				<div class="col-md-4 col-xs-12">
					<div class="latest-post"> 
						<img class="img-responsive" 
							 src="<?= $image_path ?>news_image1.jpg" alt="img">
						<div class="post-body">
							<h4 class="post-title">
								Medline - Voted Best Wheelchairs 2017
								<span style="font-size: .8em;"></span>
							</h4>
							<span class="post-item-date">
								<i class="fa fa-clock-o"></i>
							</span>
							<span class="post-item-author">
								<i class="fa fa-user"></i> Admin
							</span>
						</div>	
						<a href="<?= base_url() ?>news" class="btn btn-primary">Read More</a>
					</div><!-- Latest post end -->
				</div><!-- 1st post col end -->

				<div class="col-md-4 col-xs-12">
					<div class="latest-post">
						<img class="img-responsive" src="http://via.placeholder.com/350x250" alt="img">
						<div class="post-body">
							<h4 class="post-title">
								<a href="#">...</a>
								<span style="font-size: .8em;"></span>
							</h4>
							<span class="post-item-date">
								<i class="fa fa-clock-o"></i>
							</span>
							<span class="post-item-author">
								<i class="fa fa-user"></i> Admin
							</span>
						</div>	

						<a href="<?= base_url() ?>news" class="btn btn-primary">Read More</a>
					</div><!-- Latest post end -->
				</div><!-- 2nd post col end -->

				<div class="col-md-4 col-xs-12">
					<div class="latest-post">
						<img class="img-responsive" src="http://via.placeholder.com/350x250" alt="img">
						<div class="post-body">
							<h4 class="post-title">
								<a href="#">...</a>
								<span style="font-size: .8em;"></span>
							</h4>
							<span class="post-item-date">
								<i class="fa fa-clock-o"></i>
							</span>
							<span class="post-item-author">
								<i class="fa fa-user"></i> Admin
							</span>
						</div>	

						<a href="<?= base_url() ?>news#news-pos3" class="btn btn-primary">Read More</a>
					</div><!-- Latest post end -->
				</div><!-- 3rd post col end -->
			</div><!--/ Content row end -->
		</div><!--/ Container end -->
	</section><!--/ News end -->
