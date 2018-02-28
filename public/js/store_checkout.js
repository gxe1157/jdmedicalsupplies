

var $form = $('#payment-form');
$form.find('.subscribe').on('click', function(){
	alert('Subscribe');	
});

/* If you're using Stripe for payments */
function payWithStripe(e) {
	alert('Subscribe');
    e.preventDefault();
    
    /* Abort if invalid form data */
    if (!validator.form()) {
        return;
    }

    /* Visual feedback */
    $form.find('.subscribe').html('Validating <i class="fa fa-spinner fa-pulse"></i>').prop('disabled', true);

    var PublishableKey = 'pk_test_6pRNASCoBOKtIshFeQd4XMUh'; // Replace with your API publishable key
    Stripe.setPublishableKey(PublishableKey);
    
    /* Create token */
    var expiry = $form.find('[name=cardExpiry]').payment('cardExpiryVal');
    var ccData = {
        number: $form.find('[name=cardNumber]').val().replace(/\s/g,''),
        cvc: $form.find('[name=cardCVC]').val(),
        exp_month: expiry.month, 
        exp_year: expiry.year
    };
    
    Stripe.card.createToken(ccData, function stripeResponseHandler(status, response) {
        if (response.error) {
            /* Visual feedback */
            $form.find('.subscribe').html('Try again').prop('disabled', false);
            /* Show Stripe errors on the form */
            $form.find('.payment-errors').text(response.error.message);
            $form.find('.payment-errors').closest('.row').show();
        } else {
            /* Visual feedback */
            $form.find('.subscribe').html('Processing <i class="fa fa-spinner fa-pulse"></i>');
            // Hide Stripe errors on the form 
            $form.find('.payment-errors').closest('.row').hide();
            $form.find('.payment-errors').text("");
            // response contains id and card, which contains additional card details            
            console.log(response.id);
            console.log(response.card);
            var token = response.id;
            // AJAX - you would send 'token' to your server here.
            $.post('/account/stripe_card_token', {
                    token: token
                })
                // Assign handlers immediately after making the request,
                .done(function(data, textStatus, jqXHR) {
                    $form.find('.subscribe').html('Payment successful <i class="fa fa-check"></i>');
                })
                .fail(function(jqXHR, textStatus, errorThrown) {
                    $form.find('.subscribe').html('There was a problem').removeClass('success').addClass('error');
                    /* Show Stripe errors on the form */
                    $form.find('.payment-errors').text('Try refreshing the page and trying again.');
                    $form.find('.payment-errors').closest('.row').show();
                });
        }
    });
}

/* Form validation using Stripe client-side validation helpers */
jQuery.validator.addMethod("cardNumber", function(value, element) {
    return this.optional(element) || Stripe.card.validateCardNumber(value);
}, "Please specify a valid credit card number.");

jQuery.validator.addMethod("cardExpiry", function(value, element) {    
    /* Parsing month/year uses jQuery.payment library */
    value = $.payment.cardExpiryVal(value);
    return this.optional(element) || Stripe.card.validateExpiry(value.month, value.year);
}, "Invalid expiration date.");

jQuery.validator.addMethod("cardCVC", function(value, element) {
    return this.optional(element) || Stripe.card.validateCVC(value);
}, "Invalid CVC.");

validator = $form.validate({
    rules: {
        cardNumber: {
            required: true,
            cardNumber: true            
        },
        cardExpiry: {
            required: true,
            cardExpiry: true
        },
        cardCVC: {
            required: true,
            cardCVC: true
        }
    },
    highlight: function(element) {
        $(element).closest('.form-control').removeClass('success').addClass('error');
    },
    unhighlight: function(element) {
        $(element).closest('.form-control').removeClass('error').addClass('success');
    },
    errorPlacement: function(error, element) {
        $(element).closest('.form-group').append(error);
    }
});

paymentFormReady = function() {
    if ($form.find('[name=cardNumber]').hasClass("success") &&
        $form.find('[name=cardExpiry]').hasClass("success") &&
        $form.find('[name=cardCVC]').val().length > 1) {
        return true;
    } else {
        return false;
    }
}

$form.find('.subscribe').prop('disabled', true);
var readyInterval = setInterval(function() {
    if (paymentFormReady()) {
        $form.find('.subscribe').prop('disabled', false);
        clearInterval(readyInterval);
    }
}, 250);


$(document).ready(function(){

/* Fancy restrictive input formatting via jQuery.payment library*/
$('input[name=cardNumber]').payment('formatCardNumber');
$('input[name=cardCVC]').payment('formatCardCVC');
$('input[name=cardExpiry').payment('formatCardExpiry');


    $('#payNowfields').on('submit', function(e){
        e.preventDefault();
	    let formData = new FormData();
	    let getData = $('#payNowfields').find(':input').serializeArray();
	    $.each(getData, function(i, field){
	        formData.append( field.name, field.value);  
	        // console.log('jdata', field.name, field.value );
	    });
	    this.submit();
    });


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
      if( $('#shipToCkbox').prop('checked') ){
          $('input[name="shipto_first_name"]').val( $('input[name="first_name"]').val() );
          $('input[name="shipto_last_name"]').val( $('input[name="last_name"]').val() );
          $('input[name="shipto_company"]').val( $('input[name="company"]').val() );
          $('input[name="shipto_address"]').val( $('input[name="address"]').val() );          
          $('input[name="shipto_city"]').val( $('input[name="city"]').val() );            
          $('input[name="shipto_state"]').val( $('input[name="state"]').val() );   
          $('input[name="shipto_zip"]').val( $('input[name="zip"]').val() );             
       } else {
          $('input[name="shipto_fist_name"]').val( $('input[name=""]').val() );
          $('input[name="shipto_last_name"]').val( $('input[name=""]').val() );
          $('input[name="shipto_company"]').val( $('input[name=""]').val() );
          $('input[name="shipto_address"]').val( $('input[name=""]').val() );                    
          $('input[name="shipto_city"]').val( $('input[name=""]').val() );            
          $('input[name="shipto_state"]').val( $('input[name=""]').val() );   
          $('input[name="shipto_zip"]').val( $('input[name=""]').val() );             
       }


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
});