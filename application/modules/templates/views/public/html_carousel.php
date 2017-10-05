<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<style>
.main_blue{
	color: #467091;
}

</style>
	<!-- Carousel -->
 	<div id="main-slide" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ol class="carousel-indicators visible-lg visible-md">
		  	<li data-target="#main-slide" data-slide-to="0" class="active"></li>
		   <li data-target="#main-slide" data-slide-to="1"></li>
		</ol><!--/ Indicators end-->

		<!-- Carousel inner -->
		<div class="carousel-inner">
		<!-- public/images/jkingsley/photodune-19068088.jpg -->
			<div class="item active" style="background-image:url(public/images/jkingsley/jdmed/site_img/JD_Slide1.jpg)">
           	<div class="slider-content banner-text-shadow">
               <div class="col-md-12 text-center">
                   <h2 class="slide-title animated4 main_blue">Home Medical Equipment<br>and supplies</h2>
                   <h4 class="slide-sub-title animated5">
                   	Home Health<span class="main_blue"> • </span> Physicians Office <span class="main_blue">•</span> Consumer Hospice<br>Long Term Care <span class="main_blue">•</span> Assisted Living</h4>	
                   <p class="animated6">
                   	<a href="<?= base_url() ?>about-us" class="slider btn btn-primary">Learn More</a>
                   	<!-- <a href="#" class="slider btn btn-primary border">Get a Quote</a> -->
                   </p>	     
               </div>
           	</div>
		   </div><!--/ Carousel item end -->


		   <div class="item" style="background-image:url(public/images/jkingsley/jdmed/site_img/JD_Slide2.jpg)">
            <div class="slider-content banner-text-shadow">
              	<div class="col-md-12 text-center" style="font-size: 1em; color: #fff; text-shadow: #fff 0 0 10px;">
              		<!-- <div class="slider-text "> -->
					 <!-- <h3 class="slide-sub-title animated1">Do you know about</h3> -->
                     <h2 class="slide-title animated2 main_blue">Medline<br>K4 Light Weight Chair</h2>
                   	 <h3 class="slide-sub-title animated3">Voted Best Wheelchairs of 2017 by BestReviews.com</h3>

                   	<p class="animated6"><a href="#" class="slider btn btn-primary">Buy Now</a></p>
                  </div>
              	<!-- </div> -->
            </div>
		    </div><!--/ Carousel item end -->
		    
		</div><!-- Carousel inner end-->

		<!-- Controllers -->
		<a class="left carousel-control" href="#main-slide" data-slide="prev">
	    	<span><i class="fa fa-angle-left"></i></span>
		</a>
		<a class="right carousel-control" href="#main-slide" data-slide="next">
	    	<span><i class="fa fa-angle-right"></i></span>
		</a>

		<span class="down-arrow-transparent"></span>

	</div><!--/ Carousel end -->  
