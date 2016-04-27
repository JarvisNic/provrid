function validacion() {
  if ($('.nombre').val().length < 4) {
    // Si no se cumple la condicion...
    $(".nombre").focus().after("<span class='error'>Ingrese un nombre </span>");
    //alert('[ERROR] Debe ingresar un nombre');
    return false;
  }
  else if ($('.desc').val().length < 10) {
    // Si no se cumple la condicion...
    $(".desc").focus().after("<span class='error' style='right:9px;'>Ingrese un objetivo </span>");
    //alert('[ERROR] Debe ingresar una descripción');
    return false;
  }
  $('.error').style.display = 'none';
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}

