# MySQL dump of database 'lugrawibe' on host 'localhost'
# backup date and time: 29.03.2016 18:18 Uhr
# LugrawibeBackup 2.5
# http://www.LugrawibeBackup.net

# comment:
# wilder dice hola comentando by wil

### used character set: utf8 ###
set names utf8;


### drop all tables first ###

DROP TABLE IF EXISTS `role_user`;
DROP TABLE IF EXISTS `permission_role`;
DROP TABLE IF EXISTS `objetivosgenerales`;
DROP TABLE IF EXISTS `materia_sub_area`;
DROP TABLE IF EXISTS `materia_carrera`;
DROP TABLE IF EXISTS `justificaiongenerals`;
DROP TABLE IF EXISTS `grupos`;
DROP TABLE IF EXISTS `evaluacions`;
DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `unidades`;
DROP TABLE IF EXISTS `temas`;
DROP TABLE IF EXISTS `subareas`;
DROP TABLE IF EXISTS `sistemaunos`;
DROP TABLE IF EXISTS `sistemapgs`;
DROP TABLE IF EXISTS `roles`;
DROP TABLE IF EXISTS `propositosgenerales`;
DROP TABLE IF EXISTS `planglobals`;
DROP TABLE IF EXISTS `permissions`;
DROP TABLE IF EXISTS `password_resets`;
DROP TABLE IF EXISTS `noticias`;
DROP TABLE IF EXISTS `migrations`;
DROP TABLE IF EXISTS `materias`;
DROP TABLE IF EXISTS `informacions`;
DROP TABLE IF EXISTS `images`;
DROP TABLE IF EXISTS `docentes`;
DROP TABLE IF EXISTS `departamentos`;
DROP TABLE IF EXISTS `configuracions`;
DROP TABLE IF EXISTS `carreras`;
DROP TABLE IF EXISTS `autoridads`;
DROP TABLE IF EXISTS `areas`;


### structure of table `areas` ###

CREATE TABLE `areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;


### data of table `areas` ###

-- table is empty


### structure of table `autoridads` ###

CREATE TABLE `autoridads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fecha_Inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;


### data of table `autoridads` ###

-- table is empty


### structure of table `carreras` ###

CREATE TABLE `carreras` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `mision` text COLLATE utf8_unicode_ci NOT NULL,
  `vision` text COLLATE utf8_unicode_ci NOT NULL,
  `lema` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4;


### data of table `carreras` ###

insert into `carreras` values ('1', 'Electronica', '400', 'Ser lideres en Electronica', 'Formar Profesionales con preparación  de alto nivel ', 'Por  La fuerza  Y La razón  ', '2016-02-02', '2016-03-20 23:10:28', '2016-03-20 23:10:28');
insert into `carreras` values ('2', 'Informatica', '401', 'Preparar  profesionales  lideres y emprendedores ', 'ser lideres en el mercado internacional', 'fuerza Informaicos', '2015-10-30', '2016-03-20 23:13:28', '2016-03-20 23:13:28');
insert into `carreras` values ('3', 'Sistemas', '402', 'Ser lideres en el campo de  de Sistemas ', 'somos una carrera emprendedora para el bien de la sociedad y aspiramos en el mercado exterior', 'fueza Sistemas', '2016-03-01', '2016-03-20 23:16:59', '2016-03-20 23:16:59');


### structure of table `configuracions` ###

CREATE TABLE `configuracions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facultad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `organigrama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgenuno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgendos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgentres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgencuatro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `imgencinco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;


### data of table `configuracions` ###

insert into `configuracions` values ('1', 'lugrawibe', '1', 'fcytlogo', 'fcyt', 'organigramafcyt', 'avatar1', 'avatar2', 'avatar3', 'avatar4', 'avatar5', '2016-03-20 20:49:38', '2016-03-20 20:49:38');


### structure of table `departamentos` ###

CREATE TABLE `departamentos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_departamento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12;


### data of table `departamentos` ###

insert into `departamentos` values ('1', 'Matematicas', 'Ciencias  exactas', '2015-10-01', '2016-03-20 22:45:14', '2016-03-20 22:45:14');
insert into `departamentos` values ('2', 'Quimica', 'experimento de  quimica', '2016-02-19', '2016-03-20 22:51:21', '2016-03-20 22:51:21');
insert into `departamentos` values ('3', 'Fisica', 'Ciencias exactas', '2016-03-03', '2016-03-20 22:52:56', '2016-03-20 23:09:28');
insert into `departamentos` values ('4', 'Electronica', 'Descripción de electrónica  en tecnologia ', '2016-02-04', '2016-03-20 22:55:32', '2016-03-20 22:55:32');
insert into `departamentos` values ('5', 'Electromecanica', 'Descripción de Electromecánica de tecnologia', '2015-12-31', '2016-03-20 22:57:39', '2016-03-20 22:57:39');
insert into `departamentos` values ('6', 'Informatica', 'Descripción del departamento de Informática ', '2015-12-31', '2016-03-20 23:01:15', '2016-03-20 23:01:15');
insert into `departamentos` values ('8', 'Civil', 'construcción civil y asesoría en hormigón armado', '2016-01-21', '2016-03-20 23:12:29', '2016-03-20 23:13:21');
insert into `departamentos` values ('9', 'Redes', 'Redes de computadora', '2016-03-25', '2016-03-21 00:46:51', '2016-03-21 00:46:51');
insert into `departamentos` values ('11', 'prueba generación de fecha automatica', 'prueba generación de fecha automatica', '2016-03-25', '2016-03-25 18:30:33', '2016-03-25 18:30:33');


### structure of table `docentes` ###

CREATE TABLE `docentes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `CI` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `docentes_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6;


### data of table `docentes` ###

insert into `docentes` values ('1', 'por designar', '399', '0', '', '', '0', '0', '2016-03-20 20:49:38', '2016-03-20 20:49:38');
insert into `docentes` values ('2', 'jose', '400', '8256923', 'jose@gmail.com', '16 de julio', '65342229', '1', '2016-03-20 20:52:00', '2016-03-20 20:52:00');
insert into `docentes` values ('3', 'juanito torres', '401', '8149969', 'juanito@gmail.com', '26 de julio', '74915450', '1', '2016-03-20 20:54:12', '2016-03-20 20:54:12');
insert into `docentes` values ('5', 'prueba dos', '402', '435345', 'mnmnmn@gmail.com', 'sevsrthdrhdrth', '34534567', '0', '2016-03-25 18:20:15', '2016-03-25 18:20:15');


### structure of table `images` ###

CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `original_name` text COLLATE utf8_unicode_ci NOT NULL,
  `filename` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11;


### data of table `images` ###

insert into `images` values ('1', 'fcytlogo', 'fcytlogo', '2016-03-20 20:49:38', '2016-03-20 20:49:38');
insert into `images` values ('2', 'fcyt', 'fcyt', '2016-03-20 20:49:38', '2016-03-20 20:49:38');
insert into `images` values ('3', 'organigramafcyt', 'organigramafcyt', '2016-03-20 20:49:38', '2016-03-20 20:49:38');
insert into `images` values ('4', 'avatar1', 'avatar1', '2016-03-20 20:49:38', '2016-03-20 20:49:38');
insert into `images` values ('5', 'avatar2', 'avatar2', '2016-03-20 20:49:38', '2016-03-20 20:49:38');
insert into `images` values ('6', 'avatar3', 'avatar3', '2016-03-20 20:49:38', '2016-03-20 20:49:38');
insert into `images` values ('7', 'avatar4', 'avatar4', '2016-03-20 20:49:38', '2016-03-20 20:49:38');
insert into `images` values ('8', 'avatar5', 'avatar5', '2016-03-20 20:49:38', '2016-03-20 20:49:38');
insert into `images` values ('9', 'descarga.png', 'descarga-7936e', '2016-03-23 14:18:44', '2016-03-23 14:18:44');
insert into `images` values ('10', 'images.jpg', 'images', '2016-03-25 00:57:24', '2016-03-25 00:57:24');


### structure of table `informacions` ###

CREATE TABLE `informacions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono_fijo` int(11) NOT NULL,
  `telefono_celular` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3;


### data of table `informacions` ###

insert into `informacions` values ('1', 'dvsv', 'svdsv', '2147483647', '43535435', 'gegwegw@gmail.com', '2016-03-25 19:56:31', '2016-03-25 19:56:31');
insert into `informacions` values ('2', 'wilder Guzman Alvarez', 'Master de de codigo', '448515618', '65342229', 'wumssfcyt@gmail.com', '2016-03-25 20:38:43', '2016-03-25 20:38:43');


### structure of table `materias` ###

CREATE TABLE `materias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `departamento_id` int(10) unsigned NOT NULL,
  `nombre_materia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sigla_materia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` int(11) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `materias_departamento_id_foreign` (`departamento_id`),
  CONSTRAINT `materias_departamento_id_foreign` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24;


### data of table `materias` ###

insert into `materias` values ('1', '1', 'CALCULO I', 'Matematicas1', '400', '2016-03-01', '2016-03-20 23:03:54', '2016-03-20 23:03:54');
insert into `materias` values ('2', '1', 'ALGEBRA I', 'Matematicas1', '401', '2016-02-09', '2016-03-20 23:04:18', '2016-03-20 23:04:18');
insert into `materias` values ('3', '1', 'CALCULO II', 'Matematicas1', '402', '2016-02-07', '2016-03-20 23:04:44', '2016-03-20 23:04:44');
insert into `materias` values ('4', '2', 'Química Organica', 'Quimica2', '403', '2016-02-15', '2016-03-20 23:06:02', '2016-03-20 23:06:02');
insert into `materias` values ('5', '2', 'CONTABILIDAD BASICA', 'Quimica2', '404', '2016-02-16', '2016-03-20 23:06:36', '2016-03-20 23:08:30');
insert into `materias` values ('6', '2', 'métodos y organización de procesos industriales', 'Quimica2', '405', '2016-01-19', '2016-03-20 23:08:12', '2016-03-20 23:08:12');
insert into `materias` values ('7', '3', 'FISICA BASICA I', 'Fisica3', '406', '2016-01-10', '2016-03-20 23:13:56', '2016-03-20 23:13:56');
insert into `materias` values ('9', '3', 'FISICA BASICA III', 'Fisica3', '408', '2016-01-25', '2016-03-20 23:15:12', '2016-03-20 23:15:12');
insert into `materias` values ('10', '4', 'CALCULO NUMERICO', 'Electronica4', '409', '2016-01-04', '2016-03-20 23:16:36', '2016-03-20 23:16:36');
insert into `materias` values ('11', '4', 'INTRODUCCION A LA PROGRAMACION', 'Electronica4', '410', '2016-02-01', '2016-03-20 23:17:36', '2016-03-20 23:17:36');
insert into `materias` values ('12', '5', 'ELEM. DE PROGRAMACION Y ESTRUC. DE DATOS', 'Electromecanica5', '411', '2016-01-21', '2016-03-20 23:19:10', '2016-03-20 23:19:10');
insert into `materias` values ('13', '5', 'INTRODUCCION A LOS MICROCONTROLADORES', 'Electromecanica5', '412', '2016-01-06', '2016-03-20 23:21:17', '2016-03-20 23:21:17');
insert into `materias` values ('14', '6', 'INGENIERIA DE CALIDAD DE SOFTWARE	', 'Informatica6', '413', '2016-01-27', '2016-03-20 23:22:12', '2016-03-20 23:22:12');
insert into `materias` values ('15', '6', 'LOGICA', 'Informatica6', '414', '2016-01-25', '2016-03-20 23:22:39', '2016-03-20 23:22:39');
insert into `materias` values ('16', '6', 'PROGRAMACIÓN FUNCIONAL', 'Informatica6', '415', '2016-01-26', '2016-03-20 23:23:25', '2016-03-20 23:23:25');
insert into `materias` values ('20', '8', 'DIBUJO TECNICO', 'Civil8', '419', '2016-01-11', '2016-03-20 23:26:39', '2016-03-20 23:26:39');
insert into `materias` values ('21', '8', 'ESTADISTICA I', 'Civil8', '420', '2016-03-11', '2016-03-20 23:27:16', '2016-03-20 23:27:16');
insert into `materias` values ('23', '6', 'Modelacion y control Inteligente', 'Informatica6', '421', '2016-02-29', '2016-03-21 01:05:16', '2016-03-21 01:05:16');


### structure of table `migrations` ###

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### data of table `migrations` ###

insert into `migrations` values ('2014_02_20_092409_create_departamentos_table', '1');
insert into `migrations` values ('2014_10_12_000000_create_users_table', '1');
insert into `migrations` values ('2014_10_12_100000_create_password_resets_table', '1');
insert into `migrations` values ('2016_02_15_172536_create_carreras_table', '1');
insert into `migrations` values ('2016_02_15_174022_create_docentes_table', '1');
insert into `migrations` values ('2016_02_15_175810_create_autoridads_table', '1');
insert into `migrations` values ('2016_02_19_160650_create_areas_table', '1');
insert into `migrations` values ('2016_02_19_160703_create_subareas_table', '1');
insert into `migrations` values ('2016_02_20_173040_create_materias_table', '1');
insert into `migrations` values ('2016_02_21_134245_create_planglobals_table', '1');
insert into `migrations` values ('2016_02_23_003626_create_justificaiongenerals_table', '1');
insert into `migrations` values ('2016_02_23_012814_create_propositosgenerales_table', '1');
insert into `migrations` values ('2016_02_23_012912_create_objetivosgenerales_table', '1');
insert into `migrations` values ('2016_02_23_013756_create_evaluacions_table', '1');
insert into `migrations` values ('2016_03_06_121914_CreateImages', '1');
insert into `migrations` values ('2016_03_06_150911_create_sistemaUnos_table', '1');
insert into `migrations` values ('2016_03_07_073309_create_sistemapgs_table', '1');
insert into `migrations` values ('2016_03_11_040513_create_temas_table', '1');
insert into `migrations` values ('2016_03_16_161133_create_unidades_table', '1');
insert into `migrations` values ('2016_03_17_231219_create_grupos_table', '1');
insert into `migrations` values ('2016_03_18_115045_create_configuracions_table', '1');
insert into `migrations` values ('2017_02_17_092109_entrust_setup_tables', '1');
insert into `migrations` values ('2016_03_25_194048_create_informacions_table', '2');
insert into `migrations` values ('2016_03_26_035536_create_noticias_table', '3');


### structure of table `noticias` ###

CREATE TABLE `noticias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `docente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `materia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contenido` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24;


### data of table `noticias` ###

insert into `noticias` values ('7', 'tres', 'ALGEBRA I', 'tres wilder pru tres wilder pru tres wilder pru tres wilder pru tres wilder pru tres wilder pru tres', 'Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general. Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general. Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general.', '2016-03-11', '2016-03-30', '2016-03-26 07:29:51', '2016-03-26 15:40:46');
insert into `noticias` values ('9', 'cinco', 'cinco', 'cinco', 'cinco', '0000-00-00', '0000-00-00', '2016-03-26 07:40:17', '2016-03-26 07:40:17');
insert into `noticias` values ('10', 'seis', 'seis', 'seis', 'seis', '0000-00-00', '0000-00-00', '2016-03-26 07:40:38', '2016-03-26 07:40:38');
insert into `noticias` values ('11', 'siete', 'siete', 'siete', 'siete', '0000-00-00', '0000-00-00', '2016-03-26 07:41:00', '2016-03-26 07:41:00');
insert into `noticias` values ('13', 'nueve', 'nueve', 'nueve', 'nueve', '0000-00-00', '0000-00-00', '2016-03-26 07:41:50', '2016-03-26 07:41:50');
insert into `noticias` values ('14', 'diez', 'diez', 'diez', 'diez', '0000-00-00', '0000-00-00', '2016-03-26 07:42:09', '2016-03-26 07:42:09');
insert into `noticias` values ('15', 'once', 'ALGEBRA I', 'once', 'once', '0000-00-00', '2016-04-15', '2016-03-26 07:42:27', '2016-03-28 05:31:39');
insert into `noticias` values ('16', 'doce', 'doce', 'doce', 'doce', '0000-00-00', '0000-00-00', '2016-03-26 07:42:52', '2016-03-26 07:42:52');
insert into `noticias` values ('17', 'trece', 'trece', 'trece', 'trece', '0000-00-00', '0000-00-00', '2016-03-26 07:43:10', '2016-03-26 11:14:49');
insert into `noticias` values ('18', 'catorce', 'catorce', 'catorce', 'catorce', '0000-00-00', '0000-00-00', '2016-03-26 11:15:44', '2016-03-26 11:15:44');
insert into `noticias` values ('19', 'juanito torres', 'CONTABILIDAD BASICA', 'examen examen examen examen examen examen examen examen examen examen examen examen examen  mmmmmmmm', 'MATERIA: 2010035 APLICACION DE SISTEMAS OPERATIVOS\r\nDOCENTE: CUSSI NICOLAS GROVER HUMBERTO\r\nUsted no tiene notas cargadas para la materia 2010035 APLICACION DE SISTEMAS OPERATIVOS .\r\n\r\n\r\nMATERIA: 2010186 DINAMICA DE SISTEMAS (ELECTIVA)\r\nDOCENTE: ORELLANA ARAOZ JORGE WALTER\r\nUsted no tiene notas cargadas para la materia 2010186 DINAMICA DE SISTEMAS (ELECTIVA) .\r\n\r\n\r\nMATERIA: 2010210 INFORMATICA FORENSE\r\nDOCENTE: ANTEZANA CAMACHO MARCELO\r\nUsted no tiene notas cargadas para la materia 2010210 INFORMATICA FORENSE .\r\n\r\n\r\nMATERIA: 2016023 INGENIERIA ECONOMICA\r\nDOCENTE: ARANIBAR LA FUENTE LIGIA JACQUELINE\r\nUsted no tiene notas cargadas para la materia 2016023 INGENIERIA ECONOMICA .\r\n\r\n\r\nMATERIA: 2010027 INTELIGENCIA ARTIFICIAL\r\nDOCENTE: RODRIGUEZ BILBAO ERIKA PATRICIA\r\nUsted no tiene notas cargadas para la materia 2010027 INTELIGENCIA ARTIFICIAL .\r\n\r\n\r\nMATERIA: 2010047 REDES DE COMPUTADORAS\r\nDOCENTE: ORELLANA ARAOZ JORGE WALTER\r\nUsted no tiene notas cargadas para la materia 2010047 REDES DE COMPUTADORAS .\r\n\r\n\r\nMATERIA: 2010024 TALLER DE INGENIERIA DE SOFTWARE\r\nDOCENTE: RODRIGUEZ BILBAO ERIKA PATRICIA\r\nUsted no tiene notas cargadas para la materia 2010024 TALLER DE INGENIERIA DE SOFTWARE .\r\nMATERIA: 2010035 APLICACION DE SISTEMAS OPERATIVOS\r\nDOCENTE: CUSSI NICOLAS GROVER HUMBERTO\r\nUsted no tiene notas cargadas para la materia 2010035 APLICACION DE SISTEMAS OPERATIVOS .\r\n\r\n\r\nMATERIA: 2010186 DINAMICA DE SISTEMAS (ELECTIVA)\r\nDOCENTE: ORELLANA ARAOZ JORGE WALTER\r\nUsted no tiene notas cargadas para la materia 2010186 DINAMICA DE SISTEMAS (ELECTIVA) .\r\n\r\n\r\nMATERIA: 2010210 INFORMATICA FORENSE\r\nDOCENTE: ANTEZANA CAMACHO MARCELO\r\nUsted no tiene notas cargadas para la materia 2010210 INFORMATICA FORENSE .\r\n\r\n\r\nMATERIA: 2016023 INGENIERIA ECONOMICA\r\nDOCENTE: ARANIBAR LA FUENTE LIGIA JACQUELINE\r\nUsted no tiene notas cargadas para la materia 2016023 INGENIERIA ECONOMICA .\r\n\r\n\r\nMATERIA: 2010027 INTELIGENCIA ARTIFICIAL\r\nDOCENTE: RODRIGUEZ BILBAO ERIKA PATRICIA\r\nUsted no tiene notas cargadas para la materia 2010027 INTELIGENCIA ARTIFICIAL .\r\n\r\n\r\nMATERIA: 2010047 REDES DE COMPUTADORAS\r\nDOCENTE: ORELLANA ARAOZ JORGE WALTER\r\nUsted no tiene notas cargadas para la materia 2010047 REDES DE COMPUTADORAS .\r\n\r\n\r\nMATERIA: 2010024 TALLER DE INGENIERIA DE SOFTWARE\r\nDOCENTE: RODRIGUEZ BILBAO ERIKA PATRICIA\r\nUsted no tiene notas cargadas para la materia 2010024 TALLER DE INGENIERIA DE SOFTWARE .\r\n', '2016-03-26', '2016-03-10', '2016-03-26 15:19:13', '2016-03-26 15:19:13');
insert into `noticias` values ('20', 'juanito torres', 'ALGEBRA I', 'Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a trata', 'Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general. Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general. Para escribir adecuadamente debemos tener en cuenta, en primera instancia, cuál será el tema a tratar, a que de ello se desprenderá el tono que elijamos y el formato general del escrito. No es lo mismo una carta que redactemos para solicitar una mejor atención en una institución gubernamental, o una carta a nuestro superior respecto de un ascenso. Es por ello que el tema determinará, también, el largo o la extensión del comunicado, y su esquema general.', '2016-03-26', '2016-03-16', '2016-03-26 15:30:03', '2016-03-26 15:30:03');
insert into `noticias` values ('21', 'juanito torres', 'ALGEBRA I', '345345345', 'rgegrreg', '2016-03-26', '2016-03-31', '2016-03-26 15:42:11', '2016-03-26 15:42:11');
insert into `noticias` values ('22', 'juanito torres', 'métodos y organización de procesos industriales', 'jjjjjjjjjjjjjjjjj', 'jjjjjjjjjjjjjjjjjj', '2016-03-26', '2016-03-31', '2016-03-26 15:53:59', '2016-03-26 15:53:59');
insert into `noticias` values ('23', 'juanito torres', 'DIBUJO TECNICO', 'sss', 'sss', '2016-03-28', '2016-03-30', '2016-03-28 05:29:09', '2016-03-28 05:29:09');


### structure of table `password_resets` ###

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### data of table `password_resets` ###

-- table is empty


### structure of table `permissions` ###

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36;


### data of table `permissions` ###

insert into `permissions` values ('1', 'crear-materia', 'Crear Materia', 'Crear Materia', '2016-03-20 22:33:33', '2016-03-20 22:33:33');
insert into `permissions` values ('2', 'crear-carrera', 'Crear Carrera', 'Crear Carrera', '2016-03-20 22:35:12', '2016-03-20 22:35:12');
insert into `permissions` values ('6', 'eliminar-materia', 'Eliminar Materia', 'Eliminar Materia', '2016-03-20 22:35:34', '2016-03-20 22:35:34');
insert into `permissions` values ('7', 'editar-materia', 'Editar Materia', 'Editar Materia', '2016-03-20 22:36:26', '2016-03-20 22:36:26');
insert into `permissions` values ('8', 'eliminar-carrera', 'Eliminar Carrera', 'Eliminar carrera', '2016-03-20 22:36:38', '2016-03-20 22:37:06');
insert into `permissions` values ('9', 'crear-area', 'Crear Area', 'Crear Area', '2016-03-20 22:37:29', '2016-03-20 22:37:29');
insert into `permissions` values ('10', 'editar-carrera', 'Editar carrera', 'Editar-carrera', '2016-03-20 22:37:43', '2016-03-20 22:39:56');
insert into `permissions` values ('11', 'eliminar-area', 'Eliminar Area', 'Eliminar Area', '2016-03-20 22:38:18', '2016-03-20 22:38:18');
insert into `permissions` values ('12', 'crear-docente', 'Crear Docente', 'crear-docente', '2016-03-20 22:38:30', '2016-03-20 22:38:30');
insert into `permissions` values ('13', 'eliminar-docente', 'Eliminar Docente', 'eliminar-docente', '2016-03-20 22:39:06', '2016-03-20 22:39:06');
insert into `permissions` values ('14', 'editar-area', 'Editar Area', 'Editar Area', '2016-03-20 22:39:06', '2016-03-20 22:39:06');
insert into `permissions` values ('15', 'editar-docente', 'Editar Docente', 'editar-docente', '2016-03-20 22:40:10', '2016-03-20 22:40:10');
insert into `permissions` values ('16', 'crear-subarea', 'Crear Sub Area', 'Crear Sub Area', '2016-03-20 22:40:50', '2016-03-20 22:40:50');
insert into `permissions` values ('17', 'crear-autoridad', 'Crear Autoridad', 'crear-autoridad', '2016-03-20 22:41:14', '2016-03-20 22:41:14');
insert into `permissions` values ('18', 'eliminar-subarea', 'Eliminar Sub Area', 'Eliminar Sub Area', '2016-03-20 22:41:41', '2016-03-20 22:41:41');
insert into `permissions` values ('19', 'eliminar-autoridad', 'Eliminar autoridad', 'eliminar-autoridad', '2016-03-20 22:42:01', '2016-03-20 22:42:31');
insert into `permissions` values ('20', 'editar-subarea', 'Editar Sub Area', 'Editar Sub Area', '2016-03-20 22:42:36', '2016-03-20 22:42:36');
insert into `permissions` values ('21', 'editar-autoridad', 'Editar autoridad', 'editar-autoridad', '2016-03-20 22:43:13', '2016-03-20 22:43:13');
insert into `permissions` values ('22', 'crear-grupo', 'Crear grupo', 'crear-grupo', '2016-03-20 22:45:23', '2016-03-20 22:45:23');
insert into `permissions` values ('23', 'eliminar-grupo', 'Eliminar grupo', 'eliminar-grupo', '2016-03-20 22:45:57', '2016-03-20 22:45:57');
insert into `permissions` values ('24', 'editar-grupo', 'Editar grupo', 'editar-grupo', '2016-03-20 22:46:31', '2016-03-20 22:46:31');
insert into `permissions` values ('25', 'crear-departamento', 'Crear departamento', 'crear-departamento', '2016-03-20 22:51:09', '2016-03-20 22:51:09');
insert into `permissions` values ('26', 'eliminar-departamento', 'Eliminar departamento', 'eliminar-departamento', '2016-03-20 22:51:53', '2016-03-20 22:51:53');
insert into `permissions` values ('27', 'editar-departamento', 'Editar departamento', 'editar-departamento', '2016-03-20 22:52:40', '2016-03-20 22:52:40');
insert into `permissions` values ('28', 'crear-roles', 'Crear roles', 'crear-roles', '2016-03-20 22:54:03', '2016-03-20 22:54:03');
insert into `permissions` values ('29', 'eliminar-roles', 'Eliminar roles', 'eliminar-roles', '2016-03-20 22:54:33', '2016-03-20 22:54:33');
insert into `permissions` values ('30', 'editar-roles', 'Editar roles', 'editar-roles', '2016-03-20 22:55:11', '2016-03-20 22:55:11');
insert into `permissions` values ('31', 'crear-usuario', 'Crear usuario', 'crear-usuario', '2016-03-20 23:01:03', '2016-03-20 23:01:03');
insert into `permissions` values ('32', 'eliminar-usuario', 'Eliminar usuario', 'eliminar-usuario', '2016-03-20 23:01:33', '2016-03-20 23:01:33');
insert into `permissions` values ('33', 'editar-usuario', 'Editar usuario', 'editar-usuario', '2016-03-20 23:02:09', '2016-03-20 23:02:09');
insert into `permissions` values ('34', 'Sistemas', 'Sistemas', 'Sistemas', '2016-03-21 00:39:31', '2016-03-21 00:40:48');
insert into `permissions` values ('35', 'Redes', 'Redes', 'Redes', '2016-03-21 00:47:22', '2016-03-21 00:47:22');


### structure of table `planglobals` ###

CREATE TABLE `planglobals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `materium_id` int(10) unsigned NOT NULL,
  `nombre_plan_global` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sigla_plan_global` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `codigo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `planglobals_materium_id_foreign` (`materium_id`),
  CONSTRAINT `planglobals_materium_id_foreign` FOREIGN KEY (`materium_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17;


### data of table `planglobals` ###

insert into `planglobals` values ('2', '23', 'Modelacion y control Inteligente', 'Informatica6', '1', '23', '2016-03-21 01:06:21', '2016-03-21 01:06:21');
insert into `planglobals` values ('3', '1', 'CALCULO I', 'Matematicas1', '1', '1', '2016-03-21 01:08:06', '2016-03-25 18:16:26');
insert into `planglobals` values ('4', '1', 'CALCULO I', 'Matematicas1', '0', '1', '2016-03-23 14:16:05', '2016-03-25 17:56:45');
insert into `planglobals` values ('9', '13', '', '', '1', '0', '2016-03-25 17:59:16', '2016-03-25 17:59:16');
insert into `planglobals` values ('10', '10', '', '', '1', '0', '2016-03-25 17:59:35', '2016-03-25 17:59:35');
insert into `planglobals` values ('11', '9', 'FISICA BASICA III', 'Fisica3', '1', '0', '2016-03-25 18:10:15', '2016-03-25 18:10:15');
insert into `planglobals` values ('12', '2', 'ALGEBRA I', 'Matematicas1', '1', '0', '2016-03-25 18:11:17', '2016-03-25 18:11:17');
insert into `planglobals` values ('13', '3', 'CALCULO II', 'Matematicas1', '1', '0', '2016-03-25 18:11:22', '2016-03-25 18:11:22');
insert into `planglobals` values ('14', '4', 'Química Organica', 'Quimica2', '1', '0', '2016-03-25 18:11:31', '2016-03-25 18:11:31');
insert into `planglobals` values ('15', '5', 'CONTABILIDAD BASICA', 'Quimica2', '1', '0', '2016-03-25 18:11:42', '2016-03-25 18:11:42');
insert into `planglobals` values ('16', '6', 'métodos y organización de procesos industriales', 'Quimica2', '1', '0', '2016-03-26 16:16:42', '2016-03-26 16:16:42');


### structure of table `propositosgenerales` ###

CREATE TABLE `propositosgenerales` (
  `plan_global_id` int(10) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `propositos_generales` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `propositosgenerales_plan_global_id_foreign` (`plan_global_id`),
  CONSTRAINT `propositosgenerales_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17;


### data of table `propositosgenerales` ###

insert into `propositosgenerales` values ('3', '2', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 01:08:23', '2016-03-21 01:08:23');
insert into `propositosgenerales` values ('2', '3', '- Proveer al estudiante conocimientos básicos del modelamiento de sistemas continuos. - fusionar conocimientos adquiridos en diferentes asignaturas de la carrera. - Proveer al estudiante conocimientos en técnicas para control inteligente. - Aplicar el conocimiento adquirido a través de un modelo real . - Incentivar al estudiante a la investigación y aplicación de modelacion y control automático en entornos reales.', '2016-03-21 01:08:27', '2016-03-21 01:08:27');
insert into `propositosgenerales` values ('4', '4', '', '2016-03-25 01:19:31', '2016-03-25 01:19:31');
insert into `propositosgenerales` values ('9', '9', '', '2016-03-25 17:59:16', '2016-03-25 17:59:16');
insert into `propositosgenerales` values ('10', '10', '', '2016-03-25 17:59:35', '2016-03-25 17:59:35');
insert into `propositosgenerales` values ('11', '11', '', '2016-03-25 18:10:15', '2016-03-25 18:10:15');
insert into `propositosgenerales` values ('12', '12', '', '2016-03-25 18:11:17', '2016-03-25 18:11:17');
insert into `propositosgenerales` values ('13', '13', '', '2016-03-25 18:11:22', '2016-03-25 18:11:22');
insert into `propositosgenerales` values ('14', '14', '', '2016-03-25 18:11:31', '2016-03-25 18:11:31');
insert into `propositosgenerales` values ('15', '15', '', '2016-03-25 18:11:42', '2016-03-25 18:11:42');
insert into `propositosgenerales` values ('16', '16', '', '2016-03-26 16:16:42', '2016-03-26 16:16:42');


### structure of table `roles` ###

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5;


### data of table `roles` ###

insert into `roles` values ('1', 'administrador', 'ADMINISTRADOR', 'CONTROL TOTAL DEL SISTEMA', '2016-03-20 22:53:21', '2016-03-20 22:53:21');
insert into `roles` values ('2', 'docente', 'DOCENTE', 'FORMADOR', '2016-03-20 23:53:25', '2016-03-20 23:53:25');
insert into `roles` values ('3', 'jefe-de-departamento', 'JEFE DE DE DEPARTAMENTO', 'JEFE DE DE DEPARTAMENTO  ', '2016-03-20 23:55:24', '2016-03-20 23:55:24');
insert into `roles` values ('4', 'director-de-carrera', 'DIRECTOR DE CARRERA', 'DIRECTOR DE CARRERA', '2016-03-20 23:56:53', '2016-03-20 23:56:53');


### structure of table `sistemapgs` ###

CREATE TABLE `sistemapgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_de_facultad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;


### data of table `sistemapgs` ###

insert into `sistemapgs` values ('1', 'Fcyt', 'Lugrawibe', '2016-03-20 20:49:38', '2016-03-20 22:37:48');


### structure of table `sistemaunos` ###

CREATE TABLE `sistemaunos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facultad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;


### data of table `sistemaunos` ###

-- table is empty


### structure of table `subareas` ###

CREATE TABLE `subareas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_id` int(10) unsigned NOT NULL,
  `nombre_subarea` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `subareas_area_id_foreign` (`area_id`),
  CONSTRAINT `subareas_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;


### data of table `subareas` ###

-- table is empty


### structure of table `temas` ###

CREATE TABLE `temas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tema` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `menu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2;


### data of table `temas` ###

insert into `temas` values ('1', 'skin-black', 'sidebar-mini', '2016-03-20 20:49:38', '2016-03-28 05:42:26');


### structure of table `unidades` ###

CREATE TABLE `unidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plan_global_id` int(10) unsigned NOT NULL,
  `nombre_de_la_unidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duracion_de_la_unidad_en_periodos_academicos` int(11) NOT NULL,
  `objetivo_de_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `contenido_de_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `tecnicas_predominantes_propuestas_para_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `evaluacion_de_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `bibliografia_especifica_de_la_unidad` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `unidades_plan_global_id_foreign` (`plan_global_id`),
  CONSTRAINT `unidades_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21;


### data of table `unidades` ###

insert into `unidades` values ('3', '3', 'uno', '2', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 01:08:55', '2016-03-21 01:08:55');
insert into `unidades` values ('4', '3', 'dois', '5', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 01:09:16', '2016-03-21 01:09:16');
insert into `unidades` values ('5', '3', 'tres', '8', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 01:09:43', '2016-03-21 01:09:43');
insert into `unidades` values ('6', '2', 'Introduccion a  los sistemas de control', '2', 'Realizar una introducción general y amplia al área de simulación de sistemas y control inteligente.', '- Introducción un poco de historia.\r\n- Modelos de sistemas \r\n- clasificación. Pasos en el proceso  de modelado y simulación.\r\n- conceptos básicos  de control: lazo abierto, lazo cerrado realimentación, estabilidad, comportamiento dinámico.\r\n- Bibliografia', 'Se utilizara una expocision dialogada. El docente expondra los conceptos  del tema formulando preguntas, con el fin de lograr  participacion del alumno en el proceso de conceptualizacion  de las diferentes etapas  y terninos empleados en esta unidad. \r\nPara la profundizacion  del tema se estudiara  y aplicara conceptos a un ejemplo practico,\r\nA traves de la modelacion de del problema real, donde el estudiante participara en forma creativa para determinar los componentes  del modelo. ', 'Se realizara una evaluacion formativa. Se evaluara el grado de comprencion, la forma practica de los elementos de aplicacion de los elementos utilizados en esta unidad en base a los ejercicios resueltos. ', '[DORF89]', '2016-03-21 01:26:25', '2016-03-21 01:26:25');
insert into `unidades` values ('7', '2', 'Modelos Matematicos de sistemas', '8', 'Estudiar las metodologías del modelamiento matemático de sistemas lineales y no lineales.', 'Ecuaciones diferenciales \r\n- sistemas mecanicos, electricos.\r\n- Definicion de transformada de la place.\r\n- Función de transferencia. Ecuación Caracteristica.\r\n- Representación ecuaciones de estado, flujo de señales y diagramas de bloques.', 'se utilizara una exposicion dialogada. El docente  expondra los concento del tema formulando preguntas con el fin de lograr participacion del alumno en el proceso de conceptualizacion dee diferentes etapas y terminos empleados en esta unidad.', 'Se realizara una evaluacion formativa se evaluaran el grado de comprencion la forma practica de aplicacion de los elementos utilizados en esta unidad en  base a los ejercicios resueltos.', '[DORF89]\r\n[KUO99]\r\n[OGATA90]', '2016-03-21 01:37:32', '2016-03-21 01:37:32');
insert into `unidades` values ('8', '4', '', '0', '', '', '', '', '', '2016-03-25 01:19:31', '2016-03-25 01:19:31');
insert into `unidades` values ('13', '9', '', '0', '', '', '', '', '', '2016-03-25 17:59:16', '2016-03-25 17:59:16');
insert into `unidades` values ('14', '10', '', '0', '', '', '', '', '', '2016-03-25 17:59:35', '2016-03-25 17:59:35');
insert into `unidades` values ('15', '11', '', '0', '', '', '', '', '', '2016-03-25 18:10:15', '2016-03-25 18:10:15');
insert into `unidades` values ('16', '12', '', '0', '', '', '', '', '', '2016-03-25 18:11:17', '2016-03-25 18:11:17');
insert into `unidades` values ('17', '13', '', '0', '', '', '', '', '', '2016-03-25 18:11:22', '2016-03-25 18:11:22');
insert into `unidades` values ('18', '14', '', '0', '', '', '', '', '', '2016-03-25 18:11:31', '2016-03-25 18:11:31');
insert into `unidades` values ('19', '15', '', '0', '', '', '', '', '', '2016-03-25 18:11:42', '2016-03-25 18:11:42');
insert into `unidades` values ('20', '16', '', '0', '', '', '', '', '', '2016-03-26 16:16:42', '2016-03-26 16:16:42');


### structure of table `users` ###

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8;


### data of table `users` ###

insert into `users` values ('1', 'wilder ', 'wilder@gmail.com', '$2y$10$.49Pg17JGgMh/q.cQfu4cep.RpZ.JLgdGXUM2JZxJblVXKHzOOkKi', 'UALLD0VlEiWjB6jYe1vYA0q61DNx4bMjKhLR0tlQhk6GGBG85E4PP4gr2wzc', '2016-03-20 20:50:09', '2016-03-20 20:54:51');
insert into `users` values ('2', 'jose', 'jose@gmail.com', '$2y$10$Bb8RlzlC025tubGAib6G4e33jeKpJWGpxzCYVM.WosP6Sjtah94wq', null, '2016-03-20 20:52:01', '2016-03-20 20:52:01');
insert into `users` values ('3', 'juanito torres', 'juanito@gmail.com', '$2y$10$UPRQvyZ.4xbN46o/spqbP.A4IJ5bGxMz4eOQ0lCjs1/0yvE2GfsxK', '8gBgUNoingSWtAoD7yqH96nSMUyJ5IYT0egLvyeyklKLmUymCg59zakJattk', '2016-03-20 20:54:13', '2016-03-26 16:10:45');
insert into `users` values ('4', 'bernarda', 'bernarda@gmail.com', '$2y$10$k08AAe4DTTLlobATRt46bO/FNaaufv8DIliFH7/aoWc810St0ezSS', 'l1IUwrSjTFfWBEiHoj4CjkNTwf69TM4LxpR2FaSPVkbmnlfzlVxJhiQ1bUub', '2016-03-20 22:28:29', '2016-03-21 01:40:54');
insert into `users` values ('5', 'grashi', 'gractin@gmail.com', '$2y$10$A4FLSULC6349bKNlnMNoKeZ.iEQkIuvTm.WG4FhGSovO.KbgEbeha', 'L21QKtVkw042iC1F89LvVr2yF2ewtGD3lGXrpyCZUMeAMdysrAPQMreTPT9O', '2016-03-20 22:29:01', '2016-03-21 01:40:20');
insert into `users` values ('6', 'PRUEBA', 'WEGHFH@gamil.com', '$2y$10$cFMefyYWAxITi9ZBEDWFQuijiqHfPiA7HCxxLEdMTyzSG5ID6cXXu', null, '2016-03-25 18:17:48', '2016-03-25 18:17:48');
insert into `users` values ('7', 'prueba dos', 'mnmnmn@gmail.com', '$2y$10$VR.v4bFNWfjFvAUI3ppGq.DVEEJwAJhJZspUPG4y9c2cVdVQ.pTki', null, '2016-03-25 18:20:15', '2016-03-25 18:20:15');


### structure of table `evaluacions` ###

CREATE TABLE `evaluacions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plan_global_id` int(10) unsigned NOT NULL,
  `evaluacion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `evaluacions_plan_global_id_foreign` (`plan_global_id`),
  CONSTRAINT `evaluacions_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19;


### data of table `evaluacions` ###

insert into `evaluacions` values ('4', '3', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 01:09:52', '2016-03-21 01:09:52');
insert into `evaluacions` values ('5', '2', 'La finalidad es encaminarse a una evaluación continua, fundamentalmente con participación de los estudiantes. Durante el curso se tendrán cuatro tipos de actividades: - Tareas, trabajos cortos para la casa que consiste en lecturas bibliográficas, ejercicios y otras tareas para domicilio, las que se evaluaran a través de pruebas, informes(resumen analíticos), participación en clases. - Repasos durante el semestre se realizaran repasos en clases consistirán en ejercicios a resolver, sobre las tareas realizados y otros contenidos. - practicas desarrollo de aplicaciones de complejidad pequeña a mediana, utilizando alguna herramienta de programación, trabajo en grupo. - Exámenes, se realizaran los siguientes exámenes Parcial 1: Examen:.........................50% Tareas:...........................10% Repasos:........................15% Prácticas:........................25% Parcial 2: Exámenes:......................50% Repasos:.........................20% Prácticas:........................30% Examen final y segunda instancia comprende todos los temas desarrollados durante todo el semestre, incluyen lecturas bibliográficas, practicas, investigaciones, etc. - Mesas de exámenes, tomar en cuenta como base el material determinado para el examen final.', '2016-03-21 01:37:53', '2016-03-21 01:37:53');
insert into `evaluacions` values ('6', '4', '', '2016-03-25 01:19:31', '2016-03-25 01:19:31');
insert into `evaluacions` values ('11', '9', '', '2016-03-25 17:59:17', '2016-03-25 17:59:17');
insert into `evaluacions` values ('12', '10', '', '2016-03-25 17:59:35', '2016-03-25 17:59:35');
insert into `evaluacions` values ('13', '11', '', '2016-03-25 18:10:15', '2016-03-25 18:10:15');
insert into `evaluacions` values ('14', '12', '', '2016-03-25 18:11:17', '2016-03-25 18:11:17');
insert into `evaluacions` values ('15', '13', '', '2016-03-25 18:11:22', '2016-03-25 18:11:22');
insert into `evaluacions` values ('16', '14', '', '2016-03-25 18:11:31', '2016-03-25 18:11:31');
insert into `evaluacions` values ('17', '15', '', '2016-03-25 18:11:42', '2016-03-25 18:11:42');
insert into `evaluacions` values ('18', '16', '', '2016-03-26 16:16:42', '2016-03-26 16:16:42');


### structure of table `grupos` ###

CREATE TABLE `grupos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `materium_id` int(10) unsigned NOT NULL,
  `docente_id` int(10) unsigned NOT NULL,
  `grupo` int(11) NOT NULL,
  `control_de_plan_global` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `grupos_materium_id_foreign` (`materium_id`),
  KEY `grupos_docente_id_foreign` (`docente_id`),
  CONSTRAINT `grupos_docente_id_foreign` FOREIGN KEY (`docente_id`) REFERENCES `docentes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `grupos_materium_id_foreign` FOREIGN KEY (`materium_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11;


### data of table `grupos` ###

insert into `grupos` values ('1', '1', '2', '2', '1', '2016-03-21 01:04:03', '2016-03-21 01:04:16');
insert into `grupos` values ('2', '23', '2', '1', '1', '2016-03-21 01:38:31', '2016-03-21 01:38:31');
insert into `grupos` values ('3', '2', '1', '0', '1', '2016-03-25 17:50:08', '2016-03-25 17:50:08');
insert into `grupos` values ('4', '3', '1', '0', '1', '2016-03-25 17:52:54', '2016-03-25 17:52:54');
insert into `grupos` values ('5', '5', '1', '0', '1', '2016-03-25 17:53:29', '2016-03-25 17:53:29');
insert into `grupos` values ('6', '13', '1', '0', '1', '2016-03-25 17:59:17', '2016-03-25 17:59:17');
insert into `grupos` values ('7', '10', '1', '0', '1', '2016-03-25 17:59:35', '2016-03-25 17:59:35');
insert into `grupos` values ('8', '9', '1', '0', '1', '2016-03-25 18:10:15', '2016-03-25 18:10:15');
insert into `grupos` values ('9', '4', '1', '0', '1', '2016-03-25 18:11:31', '2016-03-25 18:11:31');
insert into `grupos` values ('10', '6', '1', '0', '1', '2016-03-26 16:16:42', '2016-03-26 16:16:42');


### structure of table `justificaiongenerals` ###

CREATE TABLE `justificaiongenerals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plan_global_id` int(10) unsigned NOT NULL,
  `razon_de_ser_la_asignatura` text COLLATE utf8_unicode_ci NOT NULL,
  `por_que_se_ensena_y_por_que_esta_dentro_del_plan_de_estudios` text COLLATE utf8_unicode_ci NOT NULL,
  `en_que_medida_contribuye_a_la_formacion_integral_del_profesional` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `justificaiongenerals_plan_global_id_foreign` (`plan_global_id`),
  CONSTRAINT `justificaiongenerals_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17;


### data of table `justificaiongenerals` ###

insert into `justificaiongenerals` values ('2', '2', 'El estudio de la simulación utilizando medios medios computacionales y programación para el modelamiento de sistemas reales nos permite poder caracterizar variables del comportamiento del sistema de manera de poder representarlo atra vez de un modelo defunciones y relaciones(matemáticas) que pueden ser reproducidos para ser manipulado y controlados fuera del entorno real(modelo de prueba) de manera de lograr a través de la aplicación de metodologías del control automático inteligente la identificación del modelo estable cuya respuesta sea afectable sin afectar directamente al sistema real, modelo que posteriormente sera aplicado directamente al sistema real.', 'el curso del simulacion del control automatico forma parte actualmente de prácticamente de todas las carreras de ingeniería. la utilización creciente de sistemas entre electrónica, microprocesadores y computadores hacen imprescindibles los conocimientos básicos de modelamiento, simulación y control automático de sistemas. siendo ademas que las técnicas de control son cada vez mas utilizadas para resolver problemas sociológicos, biológicos y económicos, etc.', 'Siendo Basica su principal función es proveer conocimientos y herramientas para que los alumnos puedan fusionar sus conocimientos tanto de electrónica, programación como matemáticas. Los estudiantes adquieren conocimiento sobre dinámica de sistemas, las ventajas y consecuencias de la realimentación, el modelo matemático de sistemas mediante transformada de laplace, aplicación de teorías de inteligencia artificial aplicadas a controladores avanzados como ser lógica difuza, redes neuronales y control adactivo', '2016-03-21 01:07:52', '2016-03-21 01:07:52');
insert into `justificaiongenerals` values ('3', '3', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 01:08:17', '2016-03-21 01:08:17');
insert into `justificaiongenerals` values ('4', '4', '', '', '', '2016-03-25 01:19:31', '2016-03-25 01:19:31');
insert into `justificaiongenerals` values ('9', '9', '', '', '', '2016-03-25 17:59:16', '2016-03-25 17:59:16');
insert into `justificaiongenerals` values ('10', '10', '', '', '', '2016-03-25 17:59:35', '2016-03-25 17:59:35');
insert into `justificaiongenerals` values ('11', '11', '', '', '', '2016-03-25 18:10:15', '2016-03-25 18:10:15');
insert into `justificaiongenerals` values ('12', '12', '', '', '', '2016-03-25 18:11:17', '2016-03-25 18:11:17');
insert into `justificaiongenerals` values ('13', '13', '', '', '', '2016-03-25 18:11:22', '2016-03-25 18:11:22');
insert into `justificaiongenerals` values ('14', '14', '', '', '', '2016-03-25 18:11:31', '2016-03-25 18:11:31');
insert into `justificaiongenerals` values ('15', '15', '', '', '', '2016-03-25 18:11:42', '2016-03-25 18:11:42');
insert into `justificaiongenerals` values ('16', '16', '', '', '', '2016-03-26 16:16:42', '2016-03-26 16:16:42');


### structure of table `materia_carrera` ###

CREATE TABLE `materia_carrera` (
  `carrera_id` int(10) unsigned NOT NULL,
  `materium_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`carrera_id`,`materium_id`),
  KEY `materia_carrera_materium_id_foreign` (`materium_id`),
  CONSTRAINT `materia_carrera_carrera_id_foreign` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `materia_carrera_materium_id_foreign` FOREIGN KEY (`materium_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### data of table `materia_carrera` ###

insert into `materia_carrera` values ('1', '1');
insert into `materia_carrera` values ('1', '2');
insert into `materia_carrera` values ('1', '3');
insert into `materia_carrera` values ('1', '4');
insert into `materia_carrera` values ('1', '5');
insert into `materia_carrera` values ('1', '6');
insert into `materia_carrera` values ('1', '7');
insert into `materia_carrera` values ('1', '9');
insert into `materia_carrera` values ('1', '10');
insert into `materia_carrera` values ('1', '11');
insert into `materia_carrera` values ('1', '12');
insert into `materia_carrera` values ('1', '13');
insert into `materia_carrera` values ('1', '14');
insert into `materia_carrera` values ('1', '15');
insert into `materia_carrera` values ('1', '16');
insert into `materia_carrera` values ('1', '20');
insert into `materia_carrera` values ('1', '21');
insert into `materia_carrera` values ('1', '23');


### structure of table `materia_sub_area` ###

CREATE TABLE `materia_sub_area` (
  `sub_area_id` int(10) unsigned NOT NULL,
  `materium_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`sub_area_id`,`materium_id`),
  KEY `materia_sub_area_materium_id_foreign` (`materium_id`),
  CONSTRAINT `materia_sub_area_materium_id_foreign` FOREIGN KEY (`materium_id`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `materia_sub_area_sub_area_id_foreign` FOREIGN KEY (`sub_area_id`) REFERENCES `subareas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### data of table `materia_sub_area` ###

-- table is empty


### structure of table `objetivosgenerales` ###

CREATE TABLE `objetivosgenerales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plan_global_id` int(10) unsigned NOT NULL,
  `objetivos_generales` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `objetivosgenerales_plan_global_id_foreign` (`plan_global_id`),
  CONSTRAINT `objetivosgenerales_plan_global_id_foreign` FOREIGN KEY (`plan_global_id`) REFERENCES `planglobals` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17;


### data of table `objetivosgenerales` ###

insert into `objetivosgenerales` values ('2', '3', 'prograiiias\r\n(Schanh y Abelson. 1977: Wilensky. 1978: Schaiik y Riesheck, 198 1 ; Dyer, 1983)\r\ncuyo ob-jetívo era la colnpre~isiónd el lenguaje natural. El foco de atenci6n estaba iiienos\r\nen el lenguilje pei so y más en los problemas vinculados a la representacicín y rakonarilierito\r\ndel conociinieiito rieccsario para la coiiiprei~siónd el lenguiije. Entre los problemas\r\nataba el de 121 representación de situaciones estereotipo (Cullirigford. 198 1 ), la des', '2016-03-21 01:08:33', '2016-03-21 01:08:33');
insert into `objetivosgenerales` values ('3', '2', '- Estudiar la simulación y control de sistemas tradicionales. - Estudiar las metodologías de modelamiento matemático de sistemas continuos. - Estudiar las técnicas de representación de control de sistemas e el dominio temporal y el dominio de la place. -técnicas de control inteligente: Adaptivo, difuso y con redes neuronales. - construir un modelo real para la aplicación de conocimiento.', '2016-03-21 01:08:56', '2016-03-21 01:08:56');
insert into `objetivosgenerales` values ('4', '4', '', '2016-03-25 01:19:31', '2016-03-25 01:19:31');
insert into `objetivosgenerales` values ('9', '9', '', '2016-03-25 17:59:16', '2016-03-25 17:59:16');
insert into `objetivosgenerales` values ('10', '10', '', '2016-03-25 17:59:35', '2016-03-25 17:59:35');
insert into `objetivosgenerales` values ('11', '11', '', '2016-03-25 18:10:15', '2016-03-25 18:10:15');
insert into `objetivosgenerales` values ('12', '12', '', '2016-03-25 18:11:17', '2016-03-25 18:11:17');
insert into `objetivosgenerales` values ('13', '13', '', '2016-03-25 18:11:22', '2016-03-25 18:11:22');
insert into `objetivosgenerales` values ('14', '14', '', '2016-03-25 18:11:31', '2016-03-25 18:11:31');
insert into `objetivosgenerales` values ('15', '15', '', '2016-03-25 18:11:42', '2016-03-25 18:11:42');
insert into `objetivosgenerales` values ('16', '16', '', '2016-03-26 16:16:42', '2016-03-26 16:16:42');


### structure of table `permission_role` ###

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### data of table `permission_role` ###

insert into `permission_role` values ('1', '1');
insert into `permission_role` values ('2', '1');
insert into `permission_role` values ('6', '1');
insert into `permission_role` values ('7', '1');
insert into `permission_role` values ('8', '1');
insert into `permission_role` values ('9', '1');
insert into `permission_role` values ('10', '1');
insert into `permission_role` values ('11', '1');
insert into `permission_role` values ('12', '1');
insert into `permission_role` values ('13', '1');
insert into `permission_role` values ('14', '1');
insert into `permission_role` values ('15', '1');
insert into `permission_role` values ('16', '1');
insert into `permission_role` values ('17', '1');
insert into `permission_role` values ('18', '1');
insert into `permission_role` values ('19', '1');
insert into `permission_role` values ('20', '1');
insert into `permission_role` values ('21', '1');
insert into `permission_role` values ('22', '1');
insert into `permission_role` values ('23', '1');
insert into `permission_role` values ('24', '1');
insert into `permission_role` values ('25', '1');
insert into `permission_role` values ('26', '1');
insert into `permission_role` values ('34', '1');
insert into `permission_role` values ('35', '1');
insert into `permission_role` values ('1', '2');
insert into `permission_role` values ('6', '2');
insert into `permission_role` values ('7', '2');
insert into `permission_role` values ('25', '3');
insert into `permission_role` values ('26', '3');
insert into `permission_role` values ('27', '3');
insert into `permission_role` values ('2', '4');
insert into `permission_role` values ('8', '4');
insert into `permission_role` values ('10', '4');


### structure of table `role_user` ###

CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


### data of table `role_user` ###

insert into `role_user` values ('3', '1');
insert into `role_user` values ('3', '2');
insert into `role_user` values ('4', '2');
insert into `role_user` values ('5', '2');
insert into `role_user` values ('3', '3');
insert into `role_user` values ('3', '4');
