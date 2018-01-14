
$(document).ready(function(){
	/* Set rates + misc */

	/* Assign actions */
	$('.product-quantity input').change( function() {
		var obj = this;
		console.log("obj",obj);
		return;

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
			window.location.replace("./cart");
		  }

		});

	});


});