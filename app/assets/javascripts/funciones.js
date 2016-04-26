function validacion() {
  if ($('.nombre').val().length < 4) {
    // Si no se cumple la condicion...
    $(".nombre").focus().after("<span class='error'>Ingrese su nombre </span>");
    //alert('[ERROR] Debe ingresar un nombre');
    return false;
  }
  else if ($('.desc').val().length < 10) {
    // Si no se cumple la condicion...
    alert('[ERROR] Debe ingresar una descripción');
    return false;
  }
 
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}