
/* manage users table control  */



$(document).ready(function() {
    $('#example').DataTable();

    $('.btn-manage.btn-danger, .btn-manage-sub.btn-danger').on('click', function( ) {
		mess1='You are about to delete a record.\n\nPress Ok to Continue.';  
		x = confirm(mess1);   
		if (x == false ) {  
			return false;
		}   
    });

} );
