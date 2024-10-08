use bancos;
create table ciudad(
id int primary key not null,
nombre varchar(50));
create table cliente(
cedula bigint,
nombre varchar(50),
apellidos varchar(50),
genero varchar(50),
edad int,
id_ciudad int,
foreign key (id_ciudad)references ciudad(id)
);
alter table cliente add primary key (cedula);
create table banco (
codigo int primary key not null,
nombre varchar(50),
id_ciudad int,
foreign key (id_ciudad) references ciudad(id)
);
create table asesor (
codigo int primary key not null,
nombre varchar(50),
genero varchar(50),
cod_banco int,
foreign key (cod_banco) references banco(codigo)
);
create table credito(
numero int primary key not null,
fecha_apertura date,
cod_asesor int,
cuatas_faltantes int,
valor_cuota decimal(10,2),
saldo decimal(10,2),
foreign key (cod_asesor)references asesor(codigo)
);
create table abono(
id int primary key not null,
fecha date,
num_credito int,
ced_cliente bigint,
valor decimal(10,2),
foreign key (num_credito) references credito(numero),
foreign key(ced_cliente) references cliente(cedula));
 insert into ciudad values (1,'Cali'),
(2,'Bogota'),(3,'Armenia'),
(4,'Pereira'),(5,'Ibague'),
(6,'Manizales'),(7,'Medellin'),
(8,'Pasto'),(9,'Popayan'),
(10,'Neiva'),(11,'Bucaramanga'),
(12,'Barranquilla');
 insert into cliente values
 (9001,'Antonio','Machado','M',35,11),
(9002,'Cecilia','Paredes','F',41,12),
(9003,'Martina','Benitez','F',27,6),
(9004,'Adriana','Abascal','F',25,1),
(9005,'Alfredo','Ballero','M',32,5),
(9006,'Eduardo','Barreto','M',43,10),
(9007,'Beatriz','Domingo','F',28,7),
(9008,'Gabriel','Gaviria','M',46,4),
(9009,'Ricardo','Latorre','M',37,12),
(9010,'Mariana','Obregón','F',33,8),
(9011,'Leticia','Redondo','F',24,6),
(9012,'Vicente','Salazar','M',44,11),
(9013,'William','Escobar','M',52,3),
(9014,'Yolanda','Cancino','F',36,2),
(9015,'Brandon','Quiroga','M',55,10),
(9016,'Daniela','Narvaez','F',58,1),
(9017,'Michael','Ledesma','M',22,9),
(9018,'Fabiola','Hermoso','F',30,7),
(9019,'Esteban','Gongora','M',23,4),
(9020,'Galilea','Cabañas','F',42,2),
(9021,'Ricardo','Salinas','M',54,8),
(9022,'Nicolas','Noriega','M',32,12),
(9023,'Francis','Linares','F',26,3),
(9024,'Mathieu','Granada','M',48,6),
(9025,'Madison','Esparza','F',37,11),
(9026,'Shirley','Batista','F',53,9),
(9027,'Patrick','Allende','M',22,1),
(9028,'Jocelyn','Tulande','F',29,10),
(9029,'Vianney','Iniesta','F',20,4),
(9030,'Rodrigo','Legarda','M',40,7),
(9031,'Beckham','Andrade','M',56,2),
(9032,'Genesis','Clavijo','F',25,5),
(9033,'Raphael','Negrete','M',39,1),
(9034,'Kassidy','Salgado','F',27,8),
(9035,'Eulalia','Rosales','F',42,12),
(9036,'Isadora','Hernani','F',40,11),
(9037,'Rolando','Encinos','M',31,3),
(9038,'Solomon','Becerra','M',55,10),
(9039,'Hillary','Urrutia','F',21,4),
(9040,'Jackson','Mestizo','M',38,9),
(9041,'Richard','Polanco','M',59,7),
(9042,'Cameron','Alcocer','F',24,5),
(9043,'Dominic','Barreto','M',56,1),
(9044,'Celeste','Camacho','F',33,12),
(9045,'Whitney','Donaire','F',50,2),
(9046,'Anthony','Giraldo','M',25,6),
(9047,'Allison','Taborda','F',32,11),
(9048,'Timothy','Murillo','M',53,8),
(9049,'Lindsay','Requena','F',29,4),
(9050,'Clayton','Salcedo','M',44,10);
 
 insert into banco values 
(100,'Popular',2),
(101,'Bancolombia',1),
(102,'Bogota',3),
(103,'Occidente',9),
(104,'AV Villas',4),
(105,'Santander',7),
(106,'Caja Social',10),
(107,'Republica',8),
(108,'Agrario',5),
(109,'Davivienda',6),
(110,'Colpatria',12),
(111,'Granahorrar',11);

insert into asesor values
(800,'Aurelio','M',100),
(801,'Martina','F',109),
(802,'Luciana','F',107),
(803,'Gonzalo','M',105),
(804,'Mariana','F',103),
(805,'Octavio','M',101),
(806,'Leonela','F',108),
(807,'Samanta','F',106),
(808,'Mustafa','M',104),
(809,'Xiomara','F',102),
(810,'Rolando','M',111),
(811,'Natalia','F',102),
(812,'Claudia','F',102),
(813,'Marcelo','M',104),
(814,'Florina','F',106),
(815,'Luciano','M',108),
(816,'Isabela','F',110),
(817,'Armando','M',102),
(818,'Julieta','F',111),
(819,'Maribel','F',101),
(820,'Forrest','M',103),
(821,'Valeria','F',105),
(822,'Rosendo','M',107),
(823,'Ronaldo','M',109),
(824,'Rosalía','F',110),
(825,'Gustavo','M',102);
insert into credito values
 (300,'2024-01-16',815,7,0, 2450000),
(301,'2024-01-26',800,10,0,4350000),
(302,'2024-01-05',801,14,0,3920000),
(303,'2024-01-03',802,12,0,6144000),
(304,'2024-01-18',803,9,0, 2970000),
(305,'2024-01-23',804,15,0,6375000),
(306,'2024-01-25',805,11,0,6171000),
(307,'2024-01-09',810,17,0,2550000),
(308,'2024-01-11',811,13,0,3575000),
(309,'2024-01-12',812,16,0,4368000),
(310,'2024-01-30',813,18,0,5490000),
(311,'2024-02-01',814,8,0, 4280000),
(312,'2024-02-06',815,19,0,3724000),
(313,'2024-02-08',806,6,0, 3495000),
(314,'2024-02-13',807,20,0,3200000),
(315,'2024-02-15',808,5,0, 3117000),
(316,'2024-02-16',809,17,0,3570000),
(317,'2024-02-20',810,11,0,3361600),
(318,'2024-02-22',816,15,0,6600000),
(319,'2024-02-23',817,19,0,5177500),
(320,'2024-02-27',818,13,0,1895400),
(321,'2024-02-28',819,10,0,3160000),
(322,'2024-03-01',820,18,0,5337000),
(323,'2024-03-04',825,12,0,3100200),
(324,'2024-03-04',824,14,0,3190600),
(325,'2024-03-06',823,16,0,3165120),
(326,'2024-03-07',822,20,0,2314000),
(327,'2024-03-08',821,9,0, 4357800),
(328,'2024-03-12',810,5,0, 2683750),
(329,'2024-03-13',811,7,0, 2996910),
(330,'2024-03-15',812,6,0, 2677740),
(331,'2024-03-19',813,8,0, 4608800),
(332,'2024-03-20',814,10,0,3162500),
(333,'2024-03-21',816,20,0,3336000),
(334,'2024-03-22',819,17,0,4520300),
(335,'2024-03-26',818,15,0,6000000),
(336,'2024-03-27',817,19,0,3389600),
(337,'2024-04-01',820,11,0,2625700),
(338,'2024-04-03',821,13,0,4279600),
(339,'2024-04-04',822,18,0,3439800),
(340,'2024-04-05',823,12,0,4359600),
(341,'2024-04-08',824,16,0,4446400),
(342,'2024-04-10',825,14,0,2628500),
(343,'2024-04-12',807,20,0,2795000),
(344,'2024-04-16',806,7,0, 3587500),
(345,'2024-04-17',805,5,0, 2427325),
(346,'2024-04-19',804,9,0, 4931100),
(347,'2024-04-22',803,6,0, 2304936),
(348,'2024-04-24',802,8,0, 3369200),
(349,'2024-04-26',801,14,0,3561600),
(350,'2024-04-30',800,11,0,5541360);

insert into abono values 
(20,'2024-02-16',300,9001,0),
(21,'2024-02-26',301,9002,0),
(22,'2024-02-05',302,9003,0),
(23,'2024-02-03',303,9004,0),
(24,'2024-02-18',304,9005,0),
(25,'2024-02-23',305,9006,0),
(26,'2024-02-25',306,9007,0),
(27,'2024-02-09',307,9008,0),
(28,'2024-02-11',308,9009,0),
(29,'2024-02-12',309,9010,0),
(30,'2024-02-29',310,9011,0),
(31,'2024-03-01',311,9012,0),
(32,'2024-03-06',312,9013,0),
(33,'2024-03-08',313,9014,0),
(34,'2024-03-13',314,9015,0),
(35,'2024-03-15',315,9016,0),
(36,'2024-03-16',316,9017,0),
(37,'2024-03-20',317,9018,0),
(38,'2024-03-23',318,9019,0),
(39,'2024-03-27',319,9020,0),
(40,'2024-03-28',320,9021,0),
(41,'2024-04-01',321,9022,0),
(42,'2024-04-04',322,9023,0),
(43,'2024-04-04',323,9024,0),
(44,'2024-04-06',324,9025,0),
(45,'2024-04-07',325,9026,0),
(46,'2024-04-08',326,9027,0),
(47,'2024-04-12',327,9028,0),
(48,'2024-04-13',328,9029,0),
(49,'2024-04-15',329,9030,0),
(50,'2024-04-19',330,9031,0),
(51,'2024-04-20',331,9032,0),
(52,'2024-04-21',332,9033,0),
(53,'2024-04-22',333,9034,0),
(54,'2024-04-26',334,9035,0),
(55,'2024-03-16',300,9001,0),
(56,'2024-03-26',301,9002,0),
(57,'2024-03-05',302,9003,0),
(58,'2024-03-03',303,9004,0),
(59,'2024-03-18',304,9005,0),
(60,'2024-03-23',305,9006,0),
(61,'2024-03-25',306,9007,0),
(62,'2024-03-09',307,9008,0),
(63,'2024-03-11',308,9009,0),
(64,'2024-03-12',309,9010,0),
(65,'2024-03-29',310,9011,0),
(66,'2024-04-01',311,9012,0),
(67,'2024-04-06',312,9013,0),
(68,'2024-04-08',313,9014,0),
(69,'2024-04-13',314,9015,0),
(70,'2024-04-15',315,9016,0),
(71,'2024-04-16',316,9017,0),
(72,'2024-04-20',317,9018,0),
(73,'2024-04-23',318,9019,0),
(74,'2024-04-27',319,9020,0),
(75,'2024-04-28',320,9021,0),
(76,'2024-04-16',300,9001,0),
(77,'2024-04-26',301,9002,0),
(78,'2024-04-05',302,9003,0),
(79,'2024-04-03',303,9004,0),
(80,'2024-04-18',304,9005,0),
(81,'2024-04-23',305,9006,0),
(82,'2024-04-25',306,9007,0),
(83,'2024-04-09',307,9008,0),
(84,'2024-04-11',308,9009,0),
(85,'2024-04-12',309,9010,0),
(86,'2024-04-29',310,9011,0);


 

