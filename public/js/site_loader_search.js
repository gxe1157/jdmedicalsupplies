
/* manage users table control  */


var model_js_mess = {
        'delete' : '<h3>Delete this account?</h3>',
        'suspend': '<h3>Suspend this account?</h3>',
        'reset_pswrd' : '<h3>Reset Password?</h3>'
    }


$(document).ready(function() {
  $('input.typeahead').typeahead({
        source:  function (query, process) {
        return $.get('../search', { query: query }, function (data) {
                console.log(data);
                data = $.parseJSON(data);
                return process(data);
            });
        }
    });
} );
