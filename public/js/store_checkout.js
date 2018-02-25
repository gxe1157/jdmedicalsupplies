
$(document).ready(function(){
	/* Set rates + misc */
	$('#ship_ground, #ship_2days, #ship_nextday').on('click',  function() {
	    let shipId = this.id;   
	    /* uncheck all boxes */
		$('#ship_ground').prop('checked', false);	// Unchecks it	    
		$('#ship_2days').prop('checked', false);	// Unchecks it	    
		$('#ship_nextday').prop('checked', false); 	// Unchecks it	    
	    /* check this one */
		$('#'+shipId ).prop('checked', true); 		// checks it	    
        /* go out and get shipping rates */
        $('#billTo').slideDown( 2000 );
       	$('#shipTo').slideDown( 2000 );        
	})

	$('#shipToCkbox').on('click',  function() {
	    let shipId = this.id;   
        //$('#billTo').slideUp( 2000 );
        $('#shipTo').slideDown( 2000 );
	})
	
    // $( ".btnSubmitForm" ).trigger( "click" );

	/* Assign actions */
	$('.product-quantity input').change( function() {
		var obj = this;
	    var item_id = obj.id;
	    var item_qty= obj.value;
		console.log( 'Id: '+item_id, 'Qty: '+item_qty );

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

process_payment
});