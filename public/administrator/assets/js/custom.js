function objectifyForm(formArray) {
    var returnArray = {};
    for (var i = 0; i < formArray.length; i++){
        var inputname = formArray[i]['name'];
        if(inputname != undefined) {
            if(inputname.indexOf('[]') >= 0) {
                if(!$.isArray(returnArray[inputname]))
                    returnArray[inputname] = [];
                returnArray[inputname].push(formArray[i]['value']);
            } else {
                returnArray[inputname] = formArray[i]['value'];
            }
        }
    }
    return returnArray;
}
  
var allow = false;
$('.ajax-form').submit(function(e){

    if(allow == false) {

        e.preventDefault()

        $(this).find('input').removeClass('is-invalid');
        $(this).find('.invalid-feedback').remove();
        
        files = $('.ajax-form input[type=file]').eq(0);
        data = $(this).serializeArray();
        data.push({
            name: files.attr('name'), 
            value: files.val()
        })
        data = objectifyForm(data);
        $.ajax({
            type: "POST",
            url: $(this).attr('action'),
            data: data,
            success: function(res){
                if(res.status == 'failed') {
                    $.each(res.input, function(k, v){
                        i = $(':input[name=' + k + ']')
                        i.addClass('is-invalid');
                        i.parent().append('<div class="invalid-feedback">' + v + '</div>');
                    });
                } else if(res.status == 'success') {
                    $('.ajax-form').append('<input type="hidden" name="pass" value="pass"/>');
                    // window.location.href = res.redirect;
                }
            },
        });

    }

})