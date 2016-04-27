//definiendo variable de expresion regular de solo letras
var re = /^[a-zA-Z]*$/
//termina de definir expresion regular de solo letras 

function validacionact() {
  if ( $('.nombre').val().length < 10 ||   $('.nombre').match(re)) {
    // Si no se cumple la condicion...
    $(".nombre").focus().after("<span class='error'>Ingrese un formato valido para el campo nombre </span>");
    //alert('[ERROR] Debe ingresar un nombre');
    $(".nombre").focus().after("<span class='error'></span>");
    return false;
  }
   else if ( $('.nombre').val().length = 0) {
    // Si no se cumple la condicion...
alert('[ERROR] Debe ingresar una descripción');
    $(".nombre").focus().after("<span class='mirano'></span>");
    return false;
  }
  else if ($('.desc').val().length < 10) {
    // Si no se cumple la condicion...
    alert('[ERROR] Debe ingresar una descripción');
    $(".desc").focus().after("<span class='mirano'></span>");
    return false;
  }
 
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}


//comienza validacion de works 

function validacionr() {
  if ($('.namew').val().length < 10 ||   $('.nombre').match(re)) {
    // Si no se cumple la condicion...
    $(".namew").focus().after("<span class='error'>El mínimo de caractéres es de 10</span>");
    //alert('[ERROR] Debe ingresar un nombre');
    $(".namew").focus().after("<span class='error'></span>");
    return false; 
  }
   else if ($('.descw').val().length < 30 ||   $('.nombre').match(re) ) {
    //antes borramos el mensaje de error
    $("namew").css("pointer-events", "none");
    
    // $(".namew").focus().after("<span class='mirano'>Este campo no puede  estar vacío </span>");
    // Si no se cumple la condicion...
     $(".descw").focus().after("<span class='error'>El mínimo de caractéres es de 30</span>");
    //alert('[ERROR] Debe ingresar un nombre');
    $(".descw").focus().after("<span class='error'></span>");
    //alert('[ERROR] Debe ingresar una descripción');
    return false;
  }
 else if  ( $('.objw').val().length < 30 ||   $('.nombre').match(re)) 
 {
 $(".objw").focus().after("<span class='error'>El mínimo de caractéres es de 30</span>");
    //alert('[ERROR] Debe ingresar un nombre');
    $(".objw").focus().after("<span class='error'></span>");
    //alert('[ERROR] Debe ingresar una descripción');
    return false;
 }
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}

//termina validacion de work

//comienza validacion de projects
function validapro() {
  if ($('.nampo').val().length < 5 ||   $('.nampo').match(re)) {
    // Si no se cumple la condicion...
    $(".nampo").focus().after("<span class='error'>Ingrese un nombre de Proyecto valido</span>");
    alert('[ERROR] Debe ingresar un nombre de Proyecto');
    $(".nampo").focus().after("<span class='error'></span>");
    return false; 
  }
   else if ($('.objepo').val().length < 2 ||   $('.objepo').match(re) ) {
    //antes borramos el mensaje de error
    $("nampo").css("pointer-events", "none");
    
    // $(".namew").focus().after("<span class='mirano'>Este campo no puede  estar vacío </span>");
    // Si no se cumple la condicion...
     $(".objepo").focus().after("<span class='error'>El mínimo de caractéres es de 30</span>");
    alert('[ERROR] Debe ingresar un Objetivo');
    $(".objepo").focus().after("<span class='error'></span>");
    //alert('[ERROR] Debe ingresar una descripción');
    return false;
  }
 else if  ( $('.objw').val().length < 30 ||   $('.nombre').match(re)) 
 {
  $("objepo").css("pointer-events", "none");
    
 $(".objw").focus().after("<span class='error'>El mínimo de caractéres es de 30</span>");
    //alert('[ERROR] Debe ingresar un nombre');
    $(".objw").focus().after("<span class='error'></span>");
    //alert('[ERROR] Debe ingresar una descripción');
    return false;
 }
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}
//termina validacion de projects

//comienza validacion de reportes

function validareport() {
  if ($('.nomre').val().length < 10 ||  $('.nomre').match(re)) {
    // Si no se cumple la condicion...
    $(".nomre").focus().after("<span class='error'>Ingrese el nombre de reporte</span>");
    //alert('[ERROR] Debe ingresar un nombre');
  return false;
}
  else if ($('.descrepo').val().length < 10) {
    // Si no se cumple la condicion...
    alert('[ERROR] Debe ingresar una descripción');
    return false;
  }
 
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}