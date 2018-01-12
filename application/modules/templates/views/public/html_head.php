<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<head>

    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
   <title>J&D Medical Supplies</title>

    <!-- Mobile Specific Metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Favicons
    ================================================== -->

    <link rel="apple-touch-icon-precomposed" sizes="144x144"
          href="<?= base_url() ?>public/images/favicon/favicon-144x144.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" 
          href="<?= base_url() ?>public/images/favicon/favicon-72x72.png">
    <link rel="apple-touch-icon-precomposed" 
          href="<?= base_url() ?>public/images/favicon/favicon-54x54.png">
    
    <!-- CSS
    ================================================== -->
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="<?= base_url() ?>public/css/bootstrap.min.css">
    <!-- Template styles-->
    <link rel="stylesheet" href="<?= base_url() ?>public/css/style.css">
    <!-- Responsive styles-->
    <link rel="stylesheet" href="<?= base_url() ?>public/css/responsive.css">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="<?= base_url() ?>public/css/font-awesome.min.css">
    <!-- Animation -->
    <link rel="stylesheet" href="<?= base_url() ?>public/css/animate.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?= base_url() ?>public/css/owl.carousel.css">
    <link rel="stylesheet" href="<?= base_url() ?>public/css/owl.theme.css">
    <!-- Colorbox -->
    <link rel="stylesheet" href="<?= base_url() ?>public/css/colorbox.css">
 
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>
    
<body>

    <div class="body-inner">

    <div id="top-bar" class="top-bar">
        <div class="container">
            <div class="row">
                
                <div class="col-md-6 col-sm-6 col-xs-12 top-social" >
                    <ul class="unstyled">
                        <li>
                            <a title="Facebook"
                             href="https://www.facebook.com/jdmedicalsupplies" target="_blank">
                                <span class="social-icon"><i class="fa fa-facebook"></i></span>
                            </a>

<!--                             <a title="Twitter" href="http://www.twitter.com/indep_insure" target="_blank">
                                <span class="social-icon"><i class="fa fa-twitter"></i></span>
                            </a>
                            <a title="Google+" href="#">
                                <span class="social-icon"><i class="fa fa-google-plus"></i></span>
                            </a>
 -->                            
                            <a title="Linkedin"
                             href="https://www.linkedin.com/company/j-d-medical-supplies">
                                <span class="social-icon"><i class="fa fa-linkedin"></i></span>
                            </a>
                            <a title="instagram"
                                href="https://www.instagram.com/jdmedicalsupplies" target="_blank">
                                <span class="social-icon"><i class="fa fa-instagram"></i></span>
                            </a>
                        </li>
                    </ul>
                </div><!--/ Top social end -->
                <div class="col-md-6 col-sm-6 col-xs-12 top-menu ">
                    <ul class="unstyled">
                        <?php if($user_id > 0) { ?>
                          <li>
                            <a href="<?= base_url() ?>youraccount/logout">Log Out[<?= $user_id ?>]</a>
                          </li>
                        <?php } else { ?>
                          <li><a href="<?= base_url() ?>youraccount/myLogin">My Account</a></li>
                        <?php } ?>    

                        <li><a href="#"><?= $this->session->cart_id ?></a></li>
                        <li><a href="<?= base_url() ?>cart"><i class="fa fa-shopping-cart fa-lg"></i> Shopping Cart [ <?= $cart_info ?> ]</a></li>                        
                    </ul>
                </div><!--/ Top menu end -->
            </div><!--/ Content row end -->
        </div><!--/ Container end -->
    </div><!--/ Topbar end -->

    <!-- Header start -->
    <header id="header" class="header">
        <div class="container">
            <div class="row">
                <div class="logo1 col-xs-12 col-sm-4">
                <!-- "http://via.placeholder.com/388x120"                 -->
                <a href="<?= base_url() ?>">
                    <img class="img-responsive" src="<?= base_url() ?>public/images/site_img/JDMedicalSupplies_VerticalLogo.png" width="220" height="86" alt="JDMedicalSupplies logo">
                </a>
            </div><!-- logo end -->

            <div class="col-xs-12 col-sm-7 header-right" style="margin-top: -20px;">
                <ul class="top-info">
                        <li>
                            <div class="info-box"><span class="info-icon"><i class="fa fa-map-marker">&nbsp;</i></span>
                                <div class="info-box-content">
                                    <p class="info-box-title"></p>
                                    <p class="info-box-subtitle">10 Kearny Avenue.
                                                                <br>Kearny, NJ 07032</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="info-box"><span class="info-icon"><i class="fa fa-phone">&nbsp;</i></span>
                                <div class="info-box-content">
                                    <p class="info-box-title">Toll Free: 833-253-3577</p>
                                    <p class="info-box-subtitle">info@jdmedicalsupplies.org</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="info-box"><span class="info-icon"><i class="fa fa-compass">&nbsp;</i></span>
                                <div class="info-box-content">
                                    <p class="info-box-title">9:00 am - 5:00 pm</p>
                                    <p class="info-box-subtitle">Monday to Friday</p>
                                </div>
                            </div>
                        </li>
                    </ul>
            </div><!-- header right end -->
            </div><!-- Row end -->
        </div><!-- Container end -->
    </header><!--/ Header end -->
