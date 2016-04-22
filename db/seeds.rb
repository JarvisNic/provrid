# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#creamos los coordinadores para cada usuario en el sistema existen 8 usuarios por orden de jerarquía van de 1 a 8
#Cordinator.create(name:"CoordinadorFARQ",address:"CoordinadorFARQ",phone:12345678 ,facultad_id:1,user_id:3)
#Cordinator.create(name:"CoordinadorFIQ",address:"CoordinadorFIQ",phone:12345678 ,facultad_id:2,user_id:4)
#Cordinator.create(name:"CoordinadorFYCS",address:"CoordinadorFYCS",phone:12345678 ,facultad_id:3,user_id:5)
#Cordinator.create(name:"CoordinadorFEC",address:"CoordinadorFEC",phone:12345678 ,facultad_id:4,user_id:6)
#Cordinator.create(name:"CoordinadorFTIC",address:"CoordinadorFTIC",phone:12345678 ,facultad_id:5,user_id:7)
#Cordinator.create(name:"CoordinadorFTI",address:"CoordinadorFTI",phone:12345678 ,facultad_id:6,user_id:8)

#llenamos las facultades
#Facultads.create(name:"FEC")
#Facultads.create(name:"FARQ")
#Facultads.create(name:"FIQ")
#Facultads.create(name:"FCYS")
#Facultads.create(name:"FTC")
#Facultads.create(name:"FTI")

#creamos los proyectos relacionados a cada coordinador
#Project.create(name:"proyecto1",objetive:"proyecto1",time:"1",status:"proceso1",fase:"1", cordinator_id:1)
#Project.create(name:"proyecto2",objetive:"proyecto2",time:"2",status:"proceso2",fase:"2", cordinator_id:2)
#Project.create(name:"proyecto3",objetive:"proyecto3",time:"3",status:"proceso3",fase:"3", cordinator_id:3)
#Project.create(name:"proyecto4",objetive:"proyecto4",time:"4",status:"proceso4",fase:"4", cordinator_id:4)
#Project.create(name:"proyecto5",objetive:"proyecto5",time:"5",status:"proceso5",fase:"5", cordinator_id:5)
#Project.create(name:"proyecto6",objetive:"proyecto6",time:"6",status:"proceso5",fase:"6", cordinator_id:6)
#Project.create(name:"proyecto7",objetive:"proyecto7",time:"7",status:"proceso6",fase:"7", cordinator_id:1)
#Project.create(name:"proyecto8",objetive:"proyecto8",time:"8",status:"proceso7",fase:"8", cordinator_id:2)
#Project.create(name:"proyecto9",objetive:"proyecto9",time:"9",status:"proceso9",fase:"9", cordinator_id:3)

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

