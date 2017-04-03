/**
 * Created by alvaro on 3/12/17.
 */
$(document).ready(function()
{
	//Funcion que muestra las respuesta en la tarjeta
    $(".mostrar").click(function()
    {
        var tarjeta = $(this).hide().parents(".card");
        tarjeta.find('.respuesta').show(500);
        var img = tarjeta.find('img');
        img.attr('src',img.data('img'));

        //$(this).hide();
        //$(this).next("div.respuesta").show(500);
    });

    //Funcion para controlar el evento del modal
    $('#modalwin').on('show.bs.modal', function (event)
    {
		var button = $(event.relatedTarget) //Button that triggered the modal
		var card =  button.parents(".card"); //raiz de la tarjeta
		var modal = $(this) //La ventana modal

		//se asigna el contenido de la ventana modal
		modal.find('#modalwin-text').text(card.find('.card-info').text());
	})

});