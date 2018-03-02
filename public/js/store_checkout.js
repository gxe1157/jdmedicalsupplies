
$(document).ready(function(){

    $('#payNowfields').on('submit', function(e){
        e.preventDefault();
        let formData = new FormData();
        let getData = $('#payNowfields').find(':input').serializeArray();
        $.each(getData, function(i, field){
            formData.append( field.name, field.value);  
            console.log('jdata', field.name, field.value );
        });
        this.submit();
    });


    /* Set rates + misc */
    $('#ship_ground, #ship_2days, #ship_nextday').on('click',  function() {
        let shipId = this.id;   
        /* uncheck all boxes */
        $('#ship_ground').prop('checked', false);   // Unchecks it      
        $('#ship_2days').prop('checked', false);    // Unchecks it      
        $('#ship_nextday').prop('checked', false);  // Unchecks it      
        /* check this one */
        $('#'+shipId ).prop('checked', true);       // checks it        
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