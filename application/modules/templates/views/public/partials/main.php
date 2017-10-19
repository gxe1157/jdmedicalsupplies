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
				     		<img class="testimonial-thumb"
src="<?= base_url() ?>public/images/jkingsley/jdmed/site_img/testimonial1.jpg" alt="testimonial">
				         <span class="quote-text">
				            <h4>SUPERIOR PRODUCT KNOWLEDGE</h4>

“Recently we had the pleasure to work with JD Medical Supplies.  There is an abundance of Medical Supplies Companies out there, but one thing that stands out for this company is their vast knowledge of product. We were looking for the right company to order our Supplies. JD Medical Supplies was the perfect match for our needs. The knowledge from this company is just as good if not better than the manufacturer. The quality and turn-around time is better than what we have experienced in the past with other Medical Supplies companies. I would highly recommend using JD Medical Supplies for your medical Supplies."

				         </span>
				         <span class="quotes-author">Dr. John Phillips,</span>
				         <span class="quotes-subtext">Senior Vice President of Material Management,<br> Eastern Maine Medical Center. </span>
				       	
				     </div>
				  </div><!--/ Item 1 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb"
src="<?= base_url() ?>public/images/jkingsley/jdmed/site_img/testimonial2.jpg" alt="testimonial">
				         <span class="quote-text">
				            <h4>DONE RIGHT ALL THE TIME</h4>
“JD Medical Supplies is the true meaning of customer service! They do what they say they are going to do and on time. The quality and the price of their products can’t be beat.”
<br><br>
Ms. Janeth Martins the Business Executive of JD Medical Supplies is a true professional.
I would highly recommend JD Medical Supplies for your medical Supplies needs

				         </span>
				         <span class="quotes-author">James H. Paterson,</span>
				         <span class="quotes-subtext">Vice President of Support Services, 
								<br>West Virginia United Health System</span>
				     </div>
				  </div><!--/ Item 2 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb"
src="<?= base_url() ?>public/images/jkingsley/jdmed/site_img/testimonial3.jpg" alt="testimonial">
				            <h4> DEPENDABLE</h4>
“We depend on JD Medical Supplies for quality products, excellent customer service and product availability. The JD Medical Supplies team is always willing to help and is very conscientious about taking care of the customer's needs. JD Medical Supplies has always been there and come through for us whenever we are in a pinch. We are very thankful to have such a great business partner to work and grow with year after year."
<br><br>
Thank you,
<br><br>
				         </span>
				         <span class="quotes-author">Edward Edmonds III,</span>
				         <span class="quotes-subtext">Vice President of Support Services, 
								<br>President/CEO Jefferson Health, New Jersey</span>
				       	
				     </div>
				  </div><!--/ Item 3 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb"
src="<?= base_url() ?>public/images/jkingsley/jdmed/site_img/testimonial4.jpg" alt="testimonial">
				            <h4>JD Medical Supplies - The Best</h4>
I have placed many orders with JD Medical Supplies. All have been handled with 100% accuracy, all shipped on time, the quality is unmatched. Thank you very much. I will continue to make JD Medical Supplies my primary supply source.
<br><br>
				         </span>
				         <span class="quotes-author">Teddy Boxer,</span>
				         <span class="quotes-subtext">Vice President of Support Services, 
								<br>New Brunswick, NJ</span>
				       	
				     </div>
				  </div><!--/ Item 4 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb"
src="<?= base_url() ?>public/images/jkingsley/jdmed/site_img/testimonial5.jpg" alt="testimonial">
				            <h4>Great Experience</h4>
It was my first time ordering from JD Medical Supplies and it was a great experience that it came on time as well as the product was so helpful. The item was exactly what I was expecting. Thank you and will shop again.
<br><br>
				         </span>
				         <span class="quotes-author">Samantha Kohl,</span>
				         <span class="quotes-subtext">Vice President of Support Services, 
								<br>Brooklyn, NY</span>
				     </div>
				  </div><!--/ Item 5 end -->

				  <div class="item">
				     <div class="testimonial-quote-item">
				     		<img class="testimonial-thumb"
src="<?= base_url() ?>public/images/jkingsley/jdmed/site_img/testimonial6.jpg" alt="testimonial">
				            <h4>Outstanding</h4>
I love ordering from JD Medical Supplies. The prices are amazing it’s easy to order and your packages are always on time. I have never had any problems with anything I order. Thank you JD Medical Supplies I would recommend you to anyone.
<br><br>
				         </span>
				         <span class="quotes-author">Susan Rosenberg,</span>
				         <span class="quotes-subtext">Vice President of Support Services, 
								<br>Scranton, PA</span>				       	
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
