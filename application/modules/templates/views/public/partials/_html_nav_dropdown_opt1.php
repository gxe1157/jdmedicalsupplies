
<!-- Prent Category with subcategories -->
<!-- products nav dropdown -->
			               <li class="dropdown">
			                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products
			                  <i class="fa fa-angle-down"></i></a>
								<ul class="dropdown-menu" role="menu">

									<?php foreach($menu_prd_drop_down as $key => $sub_cat){ ?>
									      <li class="dropdown-submenu">
									        <a class="test" tabindex="-1" href="#"> <?= $key ?><span class="caret"></span></a>
									        <ul class="dropdown-menu">
									        <?php foreach ( $sub_cat as $index => $value) { ?>
									          	  <li><a tabindex="-1" href="<?= base_url() ?>store_products/manage/<?= $index ?>"><?= $value ?></a></li>
									        <?php  } ?>
									        </ul>
									      </li>
									<?php }?>      
			                    </ul>
						   </li>
 --><!-- /products nav dropdown			                    
