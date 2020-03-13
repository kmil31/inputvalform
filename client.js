$(function() { 
    $("input[name='matricno']").on('input', function(e) { 
        $(this).val($(this).val().replace(/[^0-9]/g, '')); 
    }); 
});

$(function() { 
    $("input[name='ini-mobilephone']").on('input', function(e) { 
        $(this).val($(this).val().replace(/[^0-9]/g, '')); 
    }); 
}); 

$(function() { 
    $("input[name='mobilephone']").on('input', function(e) { 
        $(this).val($(this).val().replace(/[^0-9]/g, '')); 
    }); 
}); 

$(function() { 
    $("input[name='ini-homephone']").on('input', function(e) { 
        $(this).val($(this).val().replace(/[^0-9]/g, '')); 
    }); 
}); 

$(function() { 
    $("input[name='homephone']").on('input', function(e) { 
        $(this).val($(this).val().replace(/[^0-9]/g, '')); 
    }); 
}); 