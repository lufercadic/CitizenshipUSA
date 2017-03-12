/**
 * Created by alvaro on 3/12/17.
 */
$(document).ready(function(){
    $(".mostrar").click(function(){
        $(this).hide();
        $(this).next("div.respuesta").show(500);
    });

});