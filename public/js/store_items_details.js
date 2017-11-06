
/* Build obj to be used by model_js */
var model_js_mess = {
        'delete' : '<h3>Delete this product?</h3>',
        'fldNames' : ['company', 'contact', 'address1', 'city', 'state', 'zip', 'Phone', 'email']
    }
/* Build obj to be used by model_js */

function add_data_ajax(){
    const update_flds = {};

    let formData = new FormData();
    let getData = $('#myModel').find(':input').serializeArray();
    $.each(getData, function(i, field){
        formData.append( field.name, field.value);  
        update_flds[field.name] = field.value; 
        //console.log('jdata', field.name, field.value );
    });

    $.ajax({
      url: '../store_items/modal_post_ajax', 
      method:"POST",
      data: formData,
      contentType: false,
      cache: false,
      processData:false,
      success:function(data)
      {
        console.log( 'Return Data:......  ', data);
        if( data == 1 ) {
            myAlert('Success!','<b>Record has been added to database.</b>');
            console.log('Successfully added record to database.' );
        } else {
            myAlert('Error!','<b>Record failed to be added to database.</b>');
            console.log('Error: Record failed to be added to database.');            
        }
      }// success

    })  
}


$(document).ready(function() {
    let change_occurred = false;
    $('#myForm').on( 'focus', ':input', function(){
        $(this).attr( 'autocomplete', 'off' );
    });

    /* Assign Category state */
    if ($('#update_id').val() != '') {
       $('#sub_cat_id').removeAttr('disabled');
    }    

    /* Save and continue */
    $('#myForm :input').change(function(e){
        // console.log($(e.target).attr('id'));
        // change_occurred = true;
    });

    $("button.btn-primary").click(function (e) {
       /* This will do server side validation */    
       // if( change_occurred ) save_changes_ajax( this.id ); 
    });

});
