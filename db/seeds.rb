# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#creamos los coordinadores para cada usuario en el sistema existen 8 usuarios por orden de jerarquía van de 1 a 8
#Cordinator.create(name:"CoordinadorFARQ",address:"CoordinadorFARQ",phone:12345678 ,facultad_id:1,user_id:1)
#Cordinator.create(name:"CoordinadorFIQ",address:"CoordinadorFIQ",phone:12345678 ,facultad_id:2,user_id:2)
#Cordinator.create(name:"CoordinadorFYCS",address:"CoordinadorFYCS",phone:12345678 ,facultad_id:3,user_id:3)
#Cordinator.create(name:"CoordinadorFEC",address:"CoordinadorFEC",phone:12345678 ,facultad_id:4,user_id:4)
#Cordinator.create(name:"CoordinadorFTIC",address:"CoordinadorFTIC",phone:12345678 ,facultad_id:5,user_id:5)
#Cordinator.create(name:"CoordinadorFTI",address:"CoordinadorFTI",phone:12345678 ,facultad_id:6,user_id:6)

#llenamos las facultades
#Facultads.create(name:"FEC")
#Facultads.create(name:"FARQ")
#Facultads.create(name:"FIQ")
#Facultads.create(name:"FCYS")
#Facultads.create(name:"FTC")
#Facultads.create(name:"FTI")

#creamos los proyectos relacionados a cada coordinador
Project.create(name:"Proyecto de Propiedad Intelectual",objetive:"Enumerar la listas de actividades relacionadas con el proyecto de propiedad Intelectual ",time:"12",status:"1",fase:"1", cordinator_id:1)
Project.create(name:"Pagina Webvriduni",objetive:"Diseñar las estrategias a disposicion para el equipo de Desarrollo de sofware del PROAP",time:"12",status:"2",fase:"2", cordinator_id:2)
Project.create(name:"Tarjeta de dinero para Ciegos",objetive:"Crear el proceso de Fabricación para las tarjetas para ciegos",time:"6",status:"3",fase:"1", cordinator_id:3)
Project.create(name:"Pagina web MTI",objetive:"Preparar el documento de muestra para la propuesta para el MTI",time:"2",status:"1",fase:"3", cordinator_id:4)
Project.create(name:"Sistema Geologico de Calidad el aire para Managua",objetive:"Definir los instrumentos a usar para capturar la calidad de aire de Managua",time:"12",status:"2",fase:"2", cordinator_id:5)
Project.create(name:"Desarrollo de App para Agricultores",objetive:"Diseñar una aplicacion para Ios y Android capaz de automatizar las frutas importadas de Nicaragua",time:"2",status:"1",fase:"2", cordinator_id:6)
Project.create(name:"Escaneo de Convenios de la UNI",objetive:"Definir el personal especifico para el escaneo de los convenios de la Universidad",time:"1",status:"2",fase:"1", cordinator_id:1)
Project.create(name:"App para propiedad Intelectual",objetive:"Desarrollar una App para el RPI De Nicaragua",time:"4",status:"3",fase:"2", cordinator_id:2)
Project.create(name:"Diseño del Sistema para El Proap",objetive:"Implementar con el equipo TIC las necesidades de diseñar una pagina web para el departamento",time:"9",status:"3",fase:"1", cordinator_id:3)

#creamos los reportes asociados a un proyecto_id
#Report.create(name:"reporte1",date:"",desc:"adfadf",project_id:1)
#Report.create(name:"reporte2",date:"",desc:"adfadf",project_id:2)
#Report.create(name:"reporte3",date:"",desc:"adfadf",project_id:3)
#Report.create(name:"reporte4",date:"",desc:"adfadf",project_id:4)
#Report.create(name:"reporte5",date:"",desc:"adfadf",project_id:5)
#Report.create(name:"reporte6",date:"",desc:"adfadf",project_id:6)
#Report.create(name:"reporte7",date:"",desc:"adfadf",project_id:7)
#Report.create(name:"reporte8",date:"",desc:"adfadf",project_id:8)
#Report.create(name:"reporte9",date:"",desc:"adfadf",project_id:9)

#creamos las tareas asociadas un reporte
#Work.create(name:"tarea1",objetive:"adfadf",descripcion:"adfadf",fecha_inicio:"",fecha_fin:"",report_id:1)
#Work.create(name:"tarea2",objetive:"adfadf",descripcion:"adfadf",fecha_inicio:"",fecha_fin:"",report_id:2)
#Work.create(name:"tarea3",objetive:"adfadf",descripcion:"adfadf",fecha_inicio:"",fecha_fin:"",report_id:3)
#Work.create(name:"tarea4",objetive:"adfadf",descripcion:"adfadf",fecha_inicio:"",fecha_fin:"",report_id:4)
#Work.create(name:"tarea5",objetive:"adfadf",descripcion:"adfadf",fecha_inicio:"",fecha_fin:"",report_id:5)
#Work.create(name:"tarea6",objetive:"adfadf",descripcion:"adfadf",fecha_inicio:"",fecha_fin:"",report_id:6)
#Work.create(name:"tarea7",objetive:"adfadf",descripcion:"adfadf",fecha_inicio:"",fecha_fin:"",report_id:7)
#Work.create(name:"tarea8",objetive:"adfadf",descripcion:"adfadf",fecha_inicio:"",fecha_fin:"",report_id:8)
#Work.create(name:"tarea9",objetive:"adfadf",descripcion:"adfadf",fecha_inicio:"",fecha_fin:"",report_id:9)


#User.create(name:"Guillermo", lastname:"Salazar", email:"guillermosalazar@gmail.com", password:"Weareyoung123", address:"De la raka chaka 3c al lago", phone:"89876754", typeuser:"1")
#User.create(name:"Alejandra", lastname:"Guzman", email:"alejandrag96@gmail.com", password:"christAlone24", address:"De la raka chaka 3c al lago", phone:"86807654", typeuser:"1")
#User.create(name:"Mijailinvitate", lastname:"López", email:"e.mijail@gmail.com", password:"engels6mas9", address:"De la raka chaka 3c al lago", phone:"78906543", typeuser:"1")
#User.create(name:"invitado", lastname:"temporal", email:"invitado@gmail.com", password:"sesioninvitate321", address:"De la raka chaka 3c al lago", phone:"89876754", typeuser:"2")
#User.create(name:"invitado1", lastname:"temporal1", email:"invitado1@gmail.com", password:"sesioninvitate123", address:"De la raka chaka 3c al lago", phone:"89678905", typeuser:"2")
#User.create(name:"invitado2", lastname:"temporal2", email:"invitado2@gmail.com", password:"sesioninvitate321", address:"De la raka chaka 3c al lago", phone:"89876754", typeuser:"2")
#User.create(name:"innovador0", lastname:"innovador0", email:"aaronmerk2loke9624@gmail.com", password:"usuariotipo3", address:"De la raka chaka 3c al lago", phone:"89876754", typeuser:"3")
#User.create(name:"innovador1", lastname:"innovador1", email:"innovador1@gmail.com", password:"usuariotipo3", address:"De la raka chaka 3c al lago", phone:"89876754", typeuser:"3")
#User.create(name:"innovador2", lastname:"innovador2", email:"innovador2@gmail.com", password:"usuariotipo3", address:"De la raka chaka 3c al lago", phone:"89876754", typeuser:"3")
User.create(name:"belencita", lastname:"perez", email:"losebelen@gmail.com", password:"yalosabias", address:"De la raka chaka 3c al lago", phone:"89876754", typeuser:"1")

