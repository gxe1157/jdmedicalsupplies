<div style="margin: 0 auto; background-color: #ddd; border-radius: 7px; margin-top: 24px; padding: 7px; width: 90%;">

<?php
echo form_open('store_basket/add_to_basket');
?>

    <table class="table">
        <tr>
            <td colspan="2">Cart</br>Item ID: <?= $item_id ?></td>
        </tr>

        <?php
        if ($num_colors>0) { ?>
        <tr>
            <td>color: </td>
            <td>
                
                <?php
                $additional_dd_code = 'class="form-control"';
                echo form_dropdown('item_color', $color_options, $submitted_color, $additional_dd_code);
                ?>

            </td>
        </tr>
        <?php
        }
        ?>

        <?php
        if ($num_sizes>0) { ?>
        <tr>
            <td>Size: </td>
            <td>
                
                <?php
                $additional_dd_code = 'class="form-control"';
                echo form_dropdown('item_size', $size_options, $submitted_size, $additional_dd_code);
                ?>

            </td>
        </tr>
        <?php
        }
        ?>

        <tr>
            <td>Qty: </td>
            <td>
                <div class="col-sm-5" style="padding-left: 0px;">
                <input name="item_qty"
                       type="text"
                       style="border: 1px #000 solid; background-color: #fff;"
                       class="form-control">
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                
                    <button class="btn btn-primary"
                            name="submit"
                            value="Submit"
                            type="submit">
                            <i class="fa fa-shopping-cart fa-lg" aria-hidden="true"></i>
                    Add To Basket</button>
                
            </td>
        </tr>
    </table>
<?php
echo form_hidden('item_id', $item_id);
echo form_hidden('image_path', $active_image);
echo form_close();
?>  
</div>