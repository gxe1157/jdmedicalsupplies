
<?php defined('BASEPATH') OR exit('No direct script access allowed');
	$image_path = base_url()."public/images/site_img/";
?>

	<div id="banner-area" class="banner-area"
		 style="background-image:url(<?= $image_path ?>consumer_hospice_header.jpg)">
		<!-- Subpage title start -->
		<div class="banner-text text-center banner-text-shadow">
     		<div class="container">
	        	<div class="row">
	        		<div class="col-xs-12">
	        			<div class="banner-heading" style="font-size: 1em; color: #fff; text-shadow: #000000 0 0 10px;">
	        				<h1 class="banner-title" >Consumer Hospice</h1>
	        			</div>
			        	<ul class="breadcrumb" style="font-size: 1em; color: #fff; text-shadow: #000000 0 0 10px;">
			            <li>About Us</li>
			            <li>Consumer Hospice</li>
		          	</ul>
	        		</div>
	        	</div>
       	</div>
<a name="news-pos1"></a>       	
    	</div><!-- Subpage title end -->
	</div><!-- Banner area end --> 

	<section id="main-container" class="main-container">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">

					<div class="post">
						<div class="post-media post-image">
							<img src="#" class="img-responsive" alt=""
							 style=" border:2px solid #ccc; width: 600px;">
						</div>
						
						<div class="post-body">

							<div class="entry-header">
	   							<h2 class="entry-title">HOSPICE</h2>
							</div><!-- header end -->

							<div class="entry-content">
					<p>Hospice is a program that provide care to terminally individuals, that focuses on easily sympton rather than treating disease.
JD Medical Supplies carry supplies and medical equipment use in the Hospice, that may include:
</p>
							</div>
					<ul>
						<li>Adult protective undergarments</li>
						<li>Bedside Commode</li>
						<li>Catheters</li>
						<li>Disposal Gloves</li>
						<li>Wheelchairs</li>
						<li>Alcohol pads</li>
						<li>Walkers</li>
						<li>Wound and Skin care Supplies</li>
						<li>Etc...</li>
					</ul>	
						</div><!-- post-body end -->
					</div><!-- 1st post end -->



				</div><!-- Content Col end -->


				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<!-- sidebar-right -->
					<div class="sidebar sidebar-right">
						<div class="widget recent-posts">
							<h3 class="widget-title">Products</h3>
							<ul class="unstyled clearfix">
							<?php $this->load->view( 'partials/_html_aside_right' ); ?>
		               </ul>
							
						</div><!-- Recent post end -->



					</div><!-- Sidebar end -->
				</div><!-- Sidebar Col end -->

			</div><!-- Main row end -->

		</div><!-- Conatiner end -->
	</section><!-- Main container end -->
