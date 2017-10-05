<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<!DOCTYPE html>
<html lang="en">

<?php $this->load->view('html_head'); ?>

<body>
    <header>
          <?php $this->load->view('html_nav_main.php'); ?>
    </header>

    <div id="container">
        <?php  $this->load->view('html_aside.php'); ?>

        <!-- Main Content -->
        <div class="div-menu-message">
            <?php 
                $data = ( isset($columns) && !empty($columns) ) ? : null;
                $data = ( isset($columns_not_allowed) && !empty($columns_not_allowed) ) ? : array();

                // echo $view_module.'/'.$contents;
                $this->load->view( $view_module.'/'.$contents, $data );
            ?>
        </div> <!-- End Main Content -->
        
    </div> <!-- end container -->

    <?php $this->load->view('html_footer'); ?>

</body>

</html>
