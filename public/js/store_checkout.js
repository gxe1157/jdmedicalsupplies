
$(document).ready(function(){
	/* Set rates + misc */
	var taxRate = 0.05;
	var shippingRate = 15.00; 
	var fadeTime = 300;
	recalculateCart();

	/* Assign actions */
	$('.product-quantity input').change( function() {
		var obj = this;
	    var item_id = obj.id;
	    var item_qty= obj.value;
		// console.log( 'Id: '+item_id, 'Qty: '+item_qty );

	    var formData = new FormData(obj);
    	formData.append('item_id', item_id );            
    	formData.append('item_qty', item_qty );                	

		$.ajax({
		  url: './store_basket/ajax_update_qty', 
		  method:"POST",
		  data: formData,
		  contentType: false,
		  cache: false,
		  processData:false,
		  success:function(data)
		  {
		    var response = JSON.parse( data );
		    console.log('response', response)
		    if( response['rows_updated'] > 0 ) {
		    	updateQuantity(obj);	
	    		recalculateCart();
		    }
		  }

		});

	});

	// $('.product-removal button').click( function() {
	//   removeItem(this);
	// });


	/* Recalculate cart */
	function recalculateCart()
	{
	  var subtotal = 0;
	  
	  /* Sum up row totals */
	  $('.product').each(function () {
	    subtotal += parseFloat($(this).children('.product-line-price').text());
	  });
	  
	  /* Calculate totals */
	  var tax = subtotal * taxRate;
	  var shipping = (subtotal > 0 ? shippingRate : 0);
	  var total = subtotal + tax + shipping;
	  
	  /* Update totals display */
	  $('.totals-value').fadeOut(fadeTime, function() {
	    $('#cart-subtotal').html(subtotal.toFixed(2));
	    $('#cart-tax').html(tax.toFixed(2));
	    $('#cart-shipping').html(shipping.toFixed(2));
	    $('#cart-total').html(total.toFixed(2));
	    if(total == 0){
	      $('.checkout').fadeOut(fadeTime);
	    }else{
	      $('.checkout').fadeIn(fadeTime);
	    }
	    $('.totals-value').fadeIn(fadeTime);
	  });
	}


	/* Update quantity */
	function updateQuantity(quantityInput)
	{

	  /* Calculate line price */
	  var productRow = $(quantityInput).parent().parent();
	  var price = parseFloat(productRow.children('.product-price').text());
	  var quantity = $(quantityInput).val();
	  var linePrice = price * quantity;
	  var line_id = quantityInput.id;

	  /* Update line price display and recalc cart totals */
	  productRow.children('.product-line-price').each(function () {
	    $(this).fadeOut(fadeTime, function() {
	      $(this).text(linePrice.toFixed(2));
	      recalculateCart();
	      $(this).fadeIn(fadeTime);
	    });
	  });  
	}


	/* Remove item from cart */
	function removeItem(removeButton)
	{
	  /* Remove row from DOM and recalc cart total */
	  var productRow = $(removeButton).parent().parent();
	  productRow.slideUp(fadeTime, function() {
	    productRow.remove();
	    recalculateCart();
	  });
	}
});