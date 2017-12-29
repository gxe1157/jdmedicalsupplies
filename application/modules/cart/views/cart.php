<div class="container">
<h2 style="padding-left:15px;">Shopping Cart</h2>
<?php
if ($num_rows<1) {
    echo '<div style="display: block; min-height: 350px; padding-left:15px;">
		<p>You currently have no items in your shopping basket.</p>
    </div>';
} else {
    echo "<p style='padding-left:15px;'>".$showing_statement."</p>";
    $user_type = 'public';
    echo Modules::run('cart/_draw_cart_contents', $query, $user_type);
    echo Modules::run('cart/_attempt_draw_checkout_btn', $query);
}
?>
</div>
