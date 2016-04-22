
function inserta_fase(){
   $("#boton_fase").click(function(){
	var legajo = $("#status").val();
     $.ajax({
        url: "/activities/shift_status/" + legajo,
        dataType: "JSON",
        timeout: 10000,
        beforeSend: function(){
           $("#respuesta").html("Cargando...");
        },
        error: function(){
           $("#respuesta").html("Error al intentar buscar el empleado. Por favor intente más tarde.");
        },
        success: function(res){
           if(res){
              $("#respuesta").html('<a href="/empleados/'+res.id+'"> '+res.nombre+' ' + res.apellido + ' </a>');
           }else{
              $("#respuesta").html("El legajo no le pertenece a ningún empleado.");
           }
        }
     })
  });
};
$(document).ready(function(){
   inserta_fase();
});