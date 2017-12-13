
<?php defined('BASEPATH') OR exit('No direct script access allowed');
	$image_path = base_url()."public/images/site_img/";
?>

	<div id="banner-area" class="banner-area"
		 style="background-image:url(<?= $image_path ?>physicians_office_header.jpg)">
		<!-- Subpage title start -->
		<div class="banner-text text-center banner-text-shadow">
     		<div class="container">
	        	<div class="row">
	        		<div class="col-xs-12">
	        			<div class="banner-heading" style="font-size: 1em; color: #fff; text-shadow: #000000 0 0 10px;">
	        				<h1 class="banner-title" >Physicians Office</h1>
	        			</div>
			        	<ul class="breadcrumb" style="font-size: 1em; color: #fff; text-shadow: #000000 0 0 10px;">
			            <li>Aboust Us</li>
			            <li>Physicians Office</li>
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

					<div class="post">
						<div class="post-media post-image">
							<img src="#" class="img-responsive" alt=""
							 style=" border:2px solid #ccc; width: 600px;">
						</div>

						<div class="post-body">

							<div class="entry-header">
	   							<h2 class="entry-title">THE PHYSICIANS OFFICE</h2>
							</div><!-- header end -->

							<div class="entry-content">
					<p>Is the primary place, where Ambulatory care is given and often is the place that a sick person would go for care.
JD Medical Supplies carry products of type of supplies or equipment found in the examination room as:</p>
							</div>
					<ul>
						<li>Adhesive Bandages</li>
						<li>Antiseptics</li>
						<li>Blood pressure machine and cuff.</li>
						<li>Cotton pads and cotton swabs</li>
						<li>Hand sanitizer</li>
						<li>Hygiene wipes</li>
						<li>Hypodermic needles</li>
						<li>Stethoscope</li>
						<li>Thermometer</li>
						<li>Tongue depressor.</li>
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
