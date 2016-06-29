$(document).ready(function() {
    $('#red').dblclick(function(){
       $(this).fadeOut('fast');
    });

     $('#blue').click(function(){
       $(this).fadeOut('slow');
    });

     $('#green').dblclick(function(){
       $(this).resizable();
    });

    $('#orange').click(function(){
       $(this).effect('explode');
    });

    $('#purple').click(function(){
       $(this).draggable();
    });

});
