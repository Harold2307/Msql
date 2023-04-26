create database Colegio;
use Colegio;



Create table Estudiante(
doc_estudiante int primary key auto_increment,
    nombre_estudiante varchar(30) not null,
    curso_estudiante varchar(32) not null
   
);
Insert into Estudiante() Values(null,"Mario","10");
Insert into Estudiante() Values(null,"Cristiano","9");
Insert into Estudiante() Values(null,"paula","10");
Insert into Estudiante() Values(null,"anderson","4");
Insert into Estudiante() Values(null,"James","9");
Insert into Estudiante() Values(null,"Pineda","6");
Insert into Estudiante() Values(null,"Andres","9");
Insert into Estudiante() Values(null,"Jose","7");
Insert into Estudiante() Values(null,"Santiago","6");
Insert into Estudiante() Values(null,"pele","10");

create table Materia(
nombre_materia varchar(30) not null,
nombre_profesor varchar(30) not null,
id_materia int primary key auto_increment
);
Insert into Materia() Values("quimica","Fabian",null);
Insert into Materia() Values("Etica","Carlos",null);
Insert into Materia() Values("Literatura","Stiven",null);
Insert into Materia() Values("Matematicas","Pineda",null);
Insert into Materia() Values("Sociales","Frankli",null);
Insert into Materia() Values("Español¿","Paula",null);
Insert into Materia() Values("Eduacion fisica","Dybala",null);
Insert into Materia() Values("Musica","Julian",null);
Insert into Materia() Values("Filosofia","Santiago",null);
Insert into Materia() Values("Fisica","Nicolas",null);

create table Asistencia(
nombre_estudiante varchar(40),
fecha_inasistencia date,
hora_inasistencia time,
materia_inasistencia varchar(40)
);
Insert into Asistencia() values("Maria", '2023/11/10' , "15:00:00", "Matematicas");
Insert into Asistencia() values("Cristiano", '2023/12/31' , "10:30:00", "Filosofia");
Insert into Asistencia() values("Laura", '2023/06/22' , "12:40:00", "Español");
Insert into Asistencia() values("Esteban", '2023/05/22' , "14:55:00", "Quimica");
Insert into Asistencia() values("James", '2023/02/12' , "22:55:00", "Sociales");
Insert into Asistencia() values("Perez", '2023/06/25' , "22:48:00", "educacion fisica");
Insert into Asistencia() values("Andres", '2023/11/14' , "13:50:00", "Religion");
Insert into Asistencia() values("jose", '2023/05/13' , "15:35:00", "Musica");
Insert into Asistencia() values("Messi", '2023/09/15' , "14:15:00", "ingles");
Insert into Asistencia() values("Carlos", '2023/07/10' , "15:35:00", "Fisica");

create table Calificacion(
Nota_estudiante float,
materia varchar(40),
curso_estudiante int,
nombre_profesor varchar(40)
);
insert into Calificacion() values ("4.0", "Fisica", 5, "Michel");
insert into Calificacion() values ("4.0", "matematicas", 10, "Ramos");
insert into Calificacion() values ("3.2", "español", 11, "Maria");
insert into Calificacion() values ("2.0", "biologia", 6, "Pineda");
insert into Calificacion() values ("1.3", "artes", 9, "Frankly");
insert into Calificacion() values ("4.8", "musica", 6, "Sara");
insert into Calificacion() values ("4.4", "etica", 4, "Dybala");
insert into Calificacion() values ("1.5", "educacion fisca", 11, "Nicol");
insert into Calificacion() values ("1.5", "historia", 10, "Armando");
insert into Calificacion() values ("2.4", "Filosofia", 9, "Francisco");

create table NotaFinal(
nombre_materia varchar(40),
nombre_maestro varchar(40),
nombre_estudiante varchar(40),
curso_estudiante int
);
insert into NotaFinal() values ("Fisica", "Maria","Martha", 8);
insert into NotaFinal() values ("Matematicas", "Ramos", "Camila", 10);
insert into NotaFinal() values ("Espñaol", "Dybala", "Laura", 5);
insert into NotaFinal() values ("Biologia", "Pineda", "Harold", 6);
insert into NotaFinal() values ("Artes", "Frankly", "James", 4);
insert into NotaFinal() values ("Educacion Fisica", "Natalia", "Pele", 11);
insert into NotaFinal() values ("Etica", "Maradona","Andres", 5);
insert into NotaFinal() values ("Ingles", "Cristiano", "Jose", 9);
insert into NotaFinal() values ("Historia", "Messi", "Juan", 5);
insert into NotaFinal() values ("Filosofia", "Fabian", "francisco", 10);

select doc_estudiante as ID_estudiante, nombre_estudiante as estudiante, curso_estudiante as curso from Estudiante;
select * from Estudiante limit 5; 
select count(*) from Estudiante where doc_estudiante=2 or nombre_estudiante=4 or curso_estudiante=6;
select * from Estudiante inner join Materia;

select nombre_materia as materia, nombre_profesor as profesor, id_materia from Materia;
select * from Materia limit 5;
select count(*) from Materia where nombre_materia=2 or nombre_profesor=4 or id_materia=6;

select nombre_estudiante as estudiante, fecha_inasistencia as Dia_inasistencia, hora_inasistencia as timepo_inasistencia, materia_inasistencia as clase_inasistencia from Asistencia; 
select * from Asistencia limit 5;
select count(*) from Asistencia where nombre_estudiante=2 or fecha_inasistencia=4 or hora_inasistencia=6 or  materia_inasistencia=8;

select Nota_estudiante as valor_estudiante, materia as nota_materia, curso_estudiante as salon_estudiante, nombre_profesor as id_profesor from Calificacion;
select * from Calificacion limit 5;
select count(*) from Calificaicion where Nota_estudiante=2 or materia=4 or curso_estudiante=6 or nombre_profesor=8;

select nombre_materia as materia, nombre_maestro as Maestro, nombre_estudiante as estudiante, curso_estuidante as curso from NotaFinal; 
select * from NotaFinal limit 5;
select count(*) from NotaFinal where nombre_materia=2 or nombre_maestro=4 or  nombre_estudiante=6 or curso_estuidante=8;





