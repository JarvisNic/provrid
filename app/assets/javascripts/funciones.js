//definiendo variable de expresion regular de solo letras
var re = /^([a-z\s\SA-Z])*$/
//termina de definir expresion regular de solo letras 

function validacionact() {
  if ($('.nombre').val().length < 4) {
      // Si no se cumple la condicion...
      //alert('[ERROR] Debe ingresar un nombre');
      $(".nombre").focus().after("<span class='error'>Ingrese el nombre </span>");
       //alert('[ERROR] Debe ingresar un nombre');
      return false;
    }
    else if ($('.desc').val().length < 10) {
     // Si no se cumple la condicion...
     $(".error").delay(3200).fadeOut(300);
     $(".desc").focus().after("<span class='error' style='right:0px;'>Ingrese la descripción </span>");
      return false;
   }
  
   // Si el script ha llegado a este punto, todas las condiciones
   // se han cumplido, por lo que se devuelve el valor true
   return true;
}


//comienza validacion de works 

function validacionw() {                                                                                                                  
  if ($('.namew').val().length < 5 )
  {
    $(".namew").focus().after("<span class='error'>El mínimo de caractéres es de 5</span>");
    return false; 
  }  
  if (!($('.namew').val().match(re)) ){
    $(".error").delay(200).fadeOut(300);
    $(".namew").focus().after("<span class='error'>Formato Incorrecto</span>");
    return false; 
  }                         
  if ($('.descu').val().length < 30) 
  {
    $(".error").delay(200).fadeOut(300);
    $(".descu").focus().after("<span class='error'>El mínimo de caractéres es de 30</span>");
     return false;
  }
  if (!($('.descu').val().match(re))) {
    $(".error").delay(200).fadeOut(300);
    $(".descu").focus().after("<span class='error'>Formato Incorrecto</span>");
     return false;
  }
  if  ($('.objw').val().length < 30 ) 
  {
  $(".error").delay(200).fadeOut(300);
  $(".objw").focus().after("<span class='error' style='right:1px'>El mínimo de caractéres es de 30</span>");
      return false;
  }
  if (!($('.objw').val().match(re))) {
    $(".error").delay(200).fadeOut(300);
    $(".desc").focus().after("<span class='error'>Formato Incorrecto</span>");
     return false;
  }
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}

//termina validacion de work

//comienza validacion de projects
function validapro() {
  if ($('.nampo').val().length < 5) {
    $(".nampo").focus().after("<span class='error'>Nombre Inválido</span>");
     return false; 
  }
  else if (!($('.nampo').val().match(re)))
  {
     $(".error").delay(200).fadeOut(300);
     $(".nampo").focus().after("<span class='error'>Nombre Inválido</span>");
     return false;
  }
   else if ($('.objepo').val().length < 30) {
     $(".error").delay(200).fadeOut(300);
     $(".objepo").focus().after("<span class='error' style='right:2px;'>El mínimo de caractéres es de 30</span>");
   return false;
  }
  else if( !($('.objepo').val().match(re)) )
  {
     $(".error").delay(200).fadeOut(300);
     $(".objepo").focus().after("<span class='error'>Formato Incorrecto</span>");
     return false;
  }
 else if  ( $('.timep').val() < 1 ) 
 {
   $(".error").delay(200).fadeOut(300);
 $(".timep").focus().after("<span class='error'>Número Inválido</span>");
    return false;
 }
 else if  ( $('.fasepo').val() < 1 ) 
 {
   $(".error").delay(200).fadeOut(300);
 $(".fasepo").focus().after("<span class='error'>Número Inválido</span>");
    return false;
 }
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}
//termina validacion de projects

//comienza validacion de reportes

function validareport() {
  if ($('.nomre').val().length < 10 ||  !($('.nomre').val().match(re))) {
    // Si no se cumple la condicion...
    $(".nomre").focus().after("<span class='error'>Ingrese el nombre de reporte</span>");
    //alert('[ERROR] Debe ingresar un nombre');
  return false;
}
  else if ($('.descrepo').val().length < 10) {
    $(".error").delay(200).fadeOut(300);
   $(".descrepo").focus().after("<span class='error' style='right:2px;'>Ingrese una descripción</span>");
   return false;
  }
  $('.error').style.display = 'none';
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}


function validareset() {
//valor = document.getElementById("userma").value;
if( !(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3,4})+$/.test('userema')) )
 {
  $(".error").delay(200).fadeOut(300);
  $(".userema").focus().after("<span class='error' style='right:3px;'>Ingrese un correo válido</span>");
  
  return false;

}
$('.userema').style.display = 'none';

return true;
}

function valida_usuario() {
  if ($('.neim').val().length < 4 )  {
    // Si no se cumple la condicion...
    $(".error1").delay(200).fadeOut(300);
    $(".neim").focus().after("<span class='error1'>Debe ser mayor a 4</span>");

    //alert('[ERROR] Debe ingresar un nombre');
    if(!($('.neim').val().match(re))){
       $(".error1").delay(200).fadeOut(300);
      $(".neim").focus().after("<span class='error1'>Caracter incorrecto</span>");
   
    }
  return false;
}if ($('.email').val().length < 4 )  {
    // Si no se cumple la condicion...
    $(".error1").delay(200).fadeOut(300);
    $(".email").focus().after("<span class='error1'>Debe ser mayor a 4</span>");

    //alert('[ERROR] Debe ingresar un nombre');
    if(!($('.email').val().match(re))){
       $(".error1").delay(200).fadeOut(300);
      $(".email").focus().after("<span class='error1'>Caracter incorrecto</span>");
   
    }
  return false;
}if ($('.contra').val().length < 4 )  {
    // Si no se cumple la condicion...
    $(".error1").delay(200).fadeOut(300);
    $(".contra").focus().after("<span class='error1'>Debe ser mayor a 4</span>");

    //alert('[ERROR] Debe ingresar un nombre');
   
  return false;
} if($('.contra1').val() != $('.contra').val()){
       $(".error1").delay(200).fadeOut(300);
      $(".contra").focus().after("<span class='error1'>Contraseñas no coinciden</span>");
   return false;
    }
if ($('contra1').val()<4 )  {
    // Si no se cumple la condicion...
    $(".error1").delay(200).fadeOut(300);
    //alert('[ERROR] Debe ingresar un nombre');
    if($('.contra1').value != $('.contra').value){
       $(".error1").delay(200).fadeOut(300);
      $(".contra").focus().after("<span class='error1'>Caracter incorrecto</span>");
   
    }
  return false;
}
  $('.error').style.display = 'none';
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}



function valida_cordina() {
  if ($('.dire').val().length < 10 ) {
    // Si no se cumple la condicion...
    $(".error1").delay(200).fadeOut(300);
    $(".dire").focus().after("<span class='error1'>Debe ser mayor a 10 </span>");
    //alert('[ERROR] Debe ingresar un nombre');
  return false;
}
  else if ($('.tele').val().length < 6) {
    $(".error1").delay(200).fadeOut(300);
   $(".tele").focus().after("<span class='error1'>Debe ser mayor a 6</span>");
   return false;
  }
  $('.error1').style.display = 'none';
  // Si el script ha llegado a este punto, todas las condiciones
  // se han cumplido, por lo que se devuelve el valor true
  return true;
}