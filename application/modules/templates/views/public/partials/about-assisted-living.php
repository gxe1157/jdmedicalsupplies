
<?php defined('BASEPATH') OR exit('No direct script access allowed');
	$image_path = base_url()."public/images/site_img/";
?>

	<div id="banner-area" class="banner-area"
		 style="background-image:url(<?= $image_path ?>assisted_living_header.jpg)">
		<!-- Subpage title start -->
		<div class="banner-text text-center banner-text-shadow">
     		<div class="container">
	        	<div class="row">
	        		<div class="col-xs-12">
	        			<div class="banner-heading" style="font-size: 1em; color: #fff; text-shadow: #000000 0 0 10px;">
	        				<h1 class="banner-title" >Assisted Living</h1>
	        			</div>
			        	<ul class="breadcrumb" style="font-size: 1em; color: #fff; text-shadow: #000000 0 0 10px;">
			            <li>About Us</li>
			            <li>Assisted Living</li>
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
	   							<h2 class="entry-title">ASSISTED LIVING</h2>
							</div><!-- header end -->

							<div class="entry-content">
					<p>Is a living Residence for the Senior Citizen, as a long term Senior care option that provides personal care support Services.
JD Medical Supplies carry products to lighten their daily caregiving workload and help their loved one remain independent as long as possible, as:</p>
							</div>
					<ul>
						<li>Foot Alignment socks</li>
						<li>Portable oxygen</li>
						<li>Pulse Oximeter</li>
						<li>Blood Glucose Monitoring System,</li>
						<li>Thermophone Arthritis Pads</li>
						<li>Weekly Pill Organizer</li>
						<li>Orthopedic Seat Cushion</li>
						<li>Telestik Reacher</li>
						<li>Rollator</li>
						<li>Adult Diapers</li>
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
