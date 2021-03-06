/*----- jquery -----*/
$(document).ready(function (e) {

  function noPreview(){
    $( 'input[type="file"]').val('');
    $( '#pre_upload' ).css("display", "block");    

    if( $('#current_img').val() ) {
      $('#previewImg').attr('src', $('#current_img').val());        
    }  
    $( '#confirm_upload').css("display", "none"); 
  }

  $("#cancelImg").click(function (e) {
      noPreview();
  });  

  function selectImage(e) {
    // $( '#previewImg').attr('src', e.target.result).css("height","250").css("width","250");
    $( '#previewImg').attr('src', e.target.result);    
    $( '#confirm_upload' ).css("display", "block");
    $( '#pre_upload' ).css("display", "none");        
  }

  var maxsize = 1024 * 1024; // 500 KB
  $('#max-size').html((maxsize/1024).toFixed(2));

  /* On submit */
  $('#upload-button').on('click', function(e) {
    $( '#upload-button').prop("disabled",true);
    $( '#cancelImg').prop("disabled",true);

    e.preventDefault();
    let target_url = '../../site_ajax_upload/ajax_upload_one'; 

    var formData = new FormData();
    formData.append('file', file.files[0]);
    formData.append('update_id', $('#update_id').val());
    formData.append('part_num', $('#part_num').val());
    formData.append('sub_cat_id', $('#sub_cat_id').val());    

    upload_ajax( target_url, formData );

  });

  $('#remove_avatar').on('click', function( ) {
    // confirm model
    $("div .modal-body").html('Avatar will be replaced with a default image.<br>Continue?');                    
    $("div .modal-header").addClass("modal-header-warning");                
    $('#success').modal('show');    
    // $('div .modal-footer #close').modal('toggle').on('click', function(){
    //     $('#modal').modal('hide');
    // });

    $('div .modal-footer #yes').modal('toggle').on('click', function(){
        $('#modal').modal('data-dismiss');
        let target_url = '../../site_ajax_upload/ajax_remove_avatar'; 
        upload_ajax( target_url, null );
    });

  });

  $("#fake-btn, #file, #pre_upload").hover(function(){
      $(this).css('cursor','pointer');
  });


  function upload_ajax(target_url, formData)
  {
    $.ajax({
      url: target_url, 
      method:"POST",
      data: formData,
      contentType: false,
      cache: false,
      processData:false,
      success:function(data)
      {
       var imgData = JSON.parse( data );
       // console.log(imgData);
       if(imgData['success'] == 1){
          console.log( 'Return Data:......  ', imgData, imgData['file_name'] );        
          $('#current_img').val(imgData['full_path']);
          $('#upload-button').prop("disabled",false);
          $('#cancelImg').prop("disabled",false);
          $('#confirm_upload').css("display", "none"); 

          $( '#pre_upload').css("display", "block");         
          if( imgData['file_name'] == '' ) noPreview();
          $("#prd_image_status_1").prop("checked", true);
       } else{
          console.log(imgData,1);
          noPreview();
          $("#prd_image_status_2").prop("checked", true);
          $('#message').html('<div class="alert alert-warning error_messages" role="alert">'+imgData['error_mess']+'</div>');
       }

      }
    });

  }


  /* On change */
  $('input[type="file"]').change(function() {
    $('#message').empty();
    var file = this.files[0];

    /* check for if already selected */
    var filename = file.name;
    var compare  = $('#current_img').val();
    if( compare.indexOf(filename) != -1 ){
      noPreview();
      $('#message').html('<div class="alert alert-warning error_messages" role="alert">Image already selected...</div>');
      return false;
    }

    /* check for file attributes */
    var match = ["image/jpeg", "image/png", "image/jpg"];
    if ( !( (file.type == match[0]) || (file.type == match[1]) || (file.type == match[2]) ) )
    {
      noPreview();
      $('#message').html('<div class="alert alert-warning error_messages" role="alert">Unvalid image format. Allowed formats: JPG, JPEG, PNG.</div>');
      return false;
    }

    if ( file.size > maxsize )
    {
      noPreview();
      $('#message').html('<div class=\"alert alert-danger error_messages\" role=\"alert\">The size of image you are attempting to upload is ' + (file.size/1024).toFixed(2) + ' KB, maximum size allowed is ' + (maxsize/1024).toFixed(2) + ' KB</div>');
      return false;
    }

    /* preview selected image */ 
    var reader = new FileReader();
    reader.onload = selectImage;
    reader.readAsDataURL(this.files[0]);

  });


}); // jquery end