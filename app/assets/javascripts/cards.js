//Funcion principal, se invoca al cargar la pagina
function CardsMain()
{
    Cards_MostrarRespuesta(); //Registramos la funcion de mostrar respuestas
    Cards_ModalTextoLargo(); //Registramos la funcion al evento show de la ventana modal
    Cards_ModalOpcionRespuesta()
} 


//Registra la funcion mostrar respuestas al evento click de los botones
function Cards_MostrarRespuesta()
{
    //Funcion que muestra las respuesta en la tarjeta
    $(".mostrar").click(function()
    {
        var tarjeta = $(this).hide().parents(".card");
        tarjeta.find('.respuesta').show(500);
        var img = tarjeta.find('img');
        img.attr('src',img.data('img'));
    });
}

//Registra la funcion de control para la ventana modal
function Cards_ModalTextoLargo()
{
    //Funcion para controlar el evento del modal
    $('#modalwin').on('show.bs.modal', function (event)
    {
        var button = $(event.relatedTarget) //Button that triggered the modal
        var card =  button.parents(".card"); //raiz de la tarjeta
        var modal = $(this) //La ventana modal

        //se asigna el contenido de la ventana modal
        modal.find('#modalwin-text').text(card.find('.card-info').text());
    })
}


function Cards_ModalOpcionRespuesta()
{

//seleciona por defecto la primera opcion   
for(var i=0; i<gon.preguntas_respuestas.length; i++)
   for(var j=1; j<=gon.preguntas_respuestas[i].length; j++){


        var respuesta="#respuesta"+j
        $(respuesta).text($('input:radio[name=exampleRadios'+j+']:checked').val()); 

    }

    //pone como opcion la que se selecciona en la ventana modal
    $(".answer_choice").click(function () { 

        answer_id=$(this).attr('id').substr(6)
        respuesta="#respuesta"+answer_id
        $(respuesta).text($('input:radio[name=exampleRadios'+answer_id+']:checked').val());

    });

}




//Registramos el evento, pagina cargada
$(document).ready(CardsMain);
