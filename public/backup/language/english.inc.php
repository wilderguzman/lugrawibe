<?php
/*
 +--------------------------------------------------------------------------+
 | phpMyBackupPro                                                           |
 +--------------------------------------------------------------------------+
 | Copyright (c) 2004-2015 by Dirk Randhahn                                 |
 | http://www.phpMyBackupPro.net                                            |
 | version information can be found in definitions.php.                     |
 |                                                                          |
 | This program is free software; you can redistribute it and/or            |
 | modify it under the terms of the GNU General Public License              |
 | as published by the Free Software Foundation; either version 2           |
 | of the License, or (at your option) any later version.                   |
 |                                                                          |
 | This program is distributed in the hope that it will be useful,          |
 | but WITHOUT ANY WARRANTY; without even the implied warranty of           |
 | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            |
 | GNU General Public License for more details.                             |
 |                                                                          |
 | You should have received a copy of the GNU General Public License        |
 | along with this program; if not, write to the Free Software              |
 | Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307,USA.|
 +--------------------------------------------------------------------------+
*/

/*basic data*/
define('BD_LANG_SHORTCUT',"en"); // used for the php function setlocale() (http://www.php.net/setlocale)
define('BD_DATE_FORMAT',"%x %X"); // used for the php function strftime() (http://www.php.net/strftime)

/*functions.inc.php*/
define('F_START',"Inicio");
define('F_CONFIG',"configuración");
define('F_IMPORT',"importar");
define('F_BACKUP',"Copias de seguridad");
define('F_SCHEDULE',"programar backup");
define('F_DB_INFO',"Información de base de datos");
define('F_SQL_QUERY',"sql consultas");
define('F_HELP',"ayuda");
define('F_LOGOUT',"Salir");
define('F_FOOTER',"Lugrawibe-Tis-Umss &copy; 2016 ");
define('F_NOW_AVAILABLE',"A new version of phpMyBackupPro is now available on %s".PMBP_WEBSITE."%s");
define('F_SELECT_DB',"Selección de base de datos");
define('F_SELECT_ALL',"Seleccionar todos");
define('F_COMMENTS',"Comentarios");
define('F_EX_TABLES',"exportar tablas");
define('F_EX_DATA',"exportar datos");
define('F_EX_DROP',"añadir 'drop table'");
define('F_EX_COMP',"compresión");
define('F_EX_OFF',"ninguna");
define('F_EX_GZIP',"gzip");
define('F_EX_ZIP',"zip");
define('F_DEL_FAILED',"Failed to delete backup %s");
define('F_FTP_1',"FTP connection failed to server");
define('F_FTP_2',"Failed to login with user");
define('F_FTP_3',"FTP upload failed");
define('F_FTP_4',"File succesfully uploaded as");
define('F_FTP_5',"FTP delete of file '%s' failed");
define('F_FTP_6',"File '%s' succesfully deleted on FTP server");
define('F_FTP_7',"File '%s' not available on FTP server");
define('F_MAIL_1',"One receivers email is wrong");
define('F_MAIL_2',"This mail was sent by phpMyBackupPro ".PMBP_VERSION." ".PMBP_WEBSITE." running on");
define('F_MAIL_3',"coudn't be read");
define('F_MAIL_4',"MySQL backup from");
define('F_MAIL_5',"Mail coudn't be sent");
define('F_MAIL_6',"->");
define('F_YES',"Si");
define('F_NO',"no");
define('F_DURATION',"Duración");
define('F_SECONDS',"segundos");
define('F_TIMEOUT',"Function timed out!<br>The reason probably is a database which is to large.<br>Enlarge the values of the PHP directives \"memory_limit\" and \"max_execution_time\" (see <a href=\"http://php.net/ini.list\" target=\"_blank\">PHP manual</a>).");

/*index.php*/
define('I_SQL_ERROR',"ERROR: Please insert your correct MySQL data in the 'configuration'!");
define('I_NAME',"LugrawibeBackup");
define('I_WELCOME',"LugrawibeBackup es software libre licenciado bajo la GNU GPL.<br>
Para obtener ayuda para tratar la ayuda en línea o visita www.LugrawibeBackup.<br><br>
Lugrawibe.");
define('I_CONF_ERROR',"The file ".PMBP_GLOBAL_CONF." is not writeable!");
define('I_DIR_ERROR',"The directory ".PMBP_EXPORT_DIR." is not writeable!");
define('PMBP_I_INFO',"Información del sistema");
define('PMBP_I_SERVER',"Servidor");
define('PMBP_I_TIME',"Tiempo");
define('PMBP_I_PHP_VERS',"PHP Versión");
define('PMBP_I_MEM_LIMIT',"PHP Límite de memoria");
define('PMBP_I_FTP',"FTP transferir posible");
define('PMBP_I_MAIL',"mensajes de correo electrónico que puede enviarse");
define('PMBP_I_GZIP',"gzip compresión posible");
define('PMBP_I_SQL_SERVER',"MySQL Servidor");
define('PMBP_I_SQL_CLIENT',"MySQL Cliente");
define('PMBP_I_NO_RES',"*No se puede recuperar*");
define('PMBP_I_LAST_SCHEDULED',"Última copia de seguridad programada");
define('PMBP_I_LAST_LOGIN',"Último acceso");
define('PMBP_I_LAST_LOGIN_ERROR',"Última entrada incorrecta");

/*config.php*/
define('C_SITENAME',"site name");
define('C_LANG',"language");
define('C_SQL_HOST',"MySQL hostname");
define('C_SQL_USER',"MySQL username");
define('C_SQL_PASSWD',"MySQL password");
define('C_SQL_DB',"only this database");
define('C_FTP_USE',"save backups via FTP?");
define('C_FTP_BACKUP',"use directory backup?");
define('C_FTP_REC',"backup directories recursively?");
define('C_FTP_SERVER',"FTP server (url or IP)");
define('C_FTP_USER',"FTP username");
define('C_FTP_PASSWD',"FTP password");
define('C_FTP_PATH',"FTP path");
define('C_FTP_PASV',"use passive ftp?");
define('C_FTP_PORT',"FTP port");
define('C_FTP_DEL',"delete files on FTP server");
define('C_EMAIL_USE',"use email?");
define('C_EMAIL',"email address");
define('C_STYLESHEET',"skin");
define('C_DATE',"date style");
define('C_DEL_TIME',"delete local backups after x days");
define('C_DEL_NUMBER',"store max x files per database");
define('C_TIMELIMIT',"php timelimit");
define('C_IMPORT_ERROR',"show import errors?");
define('C_NO_LOGIN',"disable login function?");
define('C_LOGIN',"HTTP authentication?");
define('C_DIR_BACKUP',"enable directory backups?");
define('C_DIR_REC',"directory backup with subdirectories?");
define('C_CONFIRM',"confirmation level");
define('C_CONFIRM_1',"empty, delete, import");
define('C_CONFIRM_2',"... all");
define('C_CONFIRM_3',"... ALL");
define('C_CONFIRM_4',"don't confirm anything");

define('C_BASIC_VAL',"Basic configuration");
define('C_EXT_VAL',"Extended configuration");
define('PMBP_C_SYSTEM_VAL',"System variables");
define('PMBP_C_SYS_WARNING',"These system variables are managed by phpMyBackupPro. Don't edit them unless you know what you are doing!");
define('C_TITLE_SQL',"SQL data");
define('C_TITLE_FTP',"FTP settings");
define('C_TITLE_EMAIL',"Backup by email");
define('C_TITLE_STYLE',"Style of phpMyBackupPro");
define('C_TITLE_DELETE',"Automatic deletion of backup files");
define('C_TITLE_CONFIG',"Further configuration items");
define('C_WRONG_TYPE',"is not correct!");
define('C_WRONG_SQL',"MySQL data is not correct!");
define('C_WRONG_DB',"MySQL database name is not correct!");
define('C_WRONG_FTP',"FTP data is not correct!");
define('C_OPEN',"Can't open");
define('C_WRITE',"Can't write to");
define('C_SAVED',"Data successfully saved");
define('C_WRITEABLE',"is not writeable");
define('C_SAVE',"Save data");

/*import.php*/
define('IM_ERROR',"%d error(s) ocurrió. Se puede utilizar 'base de datos vacía' para estar seguro de la base de datos no contiene tablas.");
define('IM_SUCCESS',"Se ha importado");
define('IM_TABLES'," tablas y");
define('IM_ROWS',"tuplas");

define('B_EMPTIED_ALL',"Todas las bases de datos se vaciaron con éxito");
define('B_EMPTIED',"La base de datos se vació con éxito");
define('B_DELETED',"El archivo se ha eliminado correctamente");
define('B_DELETED_ALL',"Todos los archivos se han eliminado con éxito");
define('B_NO_FILES',"Actualmente no existen archivos de copia de seguridad");
define('B_DELETE_ALL_2',"borrar todos los respaldos");
define('B_IMPORT_ALL',"importar todos los respaldos");
define('B_EMPTY_ALL',"Vaciar todos las bases de datos");
define('B_EMPTY_DB',"base de datos vacía");
define('B_DELETE_ALL',"eliminar todas las copias de seguridad");
define('B_INFO',"información");
define('B_VIEW',"ver");
define('B_DOWNLOAD',"descargar");
define('B_IMPORT',"importar");
define('B_IMPORT_FRAG',"|->>Restaurar<<-|");
define('B_DELETE',"Eliminar");
define('B_CONF_EMPTY_DB',"Realmente desea vaciar la base de datos?");
define('B_CONF_DEL_ALL',"¿De verdad quiere eliminar todas las copias de seguridad de esta base de datos?");
define('B_CONF_IMP',"¿Realmente desea importar esta copia de seguridad?");
define('B_CONF_DEL',"¿De verdad quiere eliminar esta copia de seguridad?");
define('B_CONF_EMPT_ALL',"¿Realmente desea vaciar TODAS las bases de datos?");
define('B_CONF_IMP_ALL',"¿Realmente desea importar TODAS últimas copias de seguridad?");
define('B_CONF_DEL_ALL_2',"¿Realmente desea eliminar todas las copias de seguridad?");
define('B_LAST_BACKUP',"Última copia de seguridad construida en");
define('B_SIZE_SUM',"El tamaño total de todas las copias de seguridad");

/*backup.php*/
define('EX_SAVED',"Archivo guardado con éxito como");
define('EX_NO_DB',"No hay base de datos seleccionada");
define('EX_EXPORT',"Backup");
define('EX_NOT_SAVED',"No se pudo guardar la copia de seguridad de base de datos %s en '%s'");
define('EX_DIRS',"Seleccione los directorios de copia de seguridad a un servidor FTP");
define('EX_DIRS_MAN',"Introduzca más rutas de directorios relativas al directorio phpMyBackupPro.<br>separado con '|'");
define('EX_PACKED',"Empacar todo en un archivo ZIP");
define('PMBP_EX_NO_AVAILABLE',"Base de datos %s no está disponible");
define('PMBP_EXS_UPDATE_DIRS',"Actualización de la lista de directorios");
define('PMBP_EX_NO_ARGV',"ejemplo de uso:\n$ php backup.php db1,db2,db3\nPara más funciones lea 'SHELL_MODE.txt' en el directorio 'documentación' ");

/*scheduled.php*/
define('EXS_PERIOD',"Select backup period");
define('EXS_PATH',"Select directory where the PHP file will be placed");
define('EXS_BACK',"back");
define('PMBP_EXS_ALWAYS',"At each call");
define('EXS_HOUR',"hour");
define('EXS_HOURS',"hours");
define('EXS_DAY',"day");
define('EXS_DAYS',"days");
define('EXS_WEEK',"week");
define('EXS_WEEKS',"weeks");
define('EXS_MONTH',"month");
define('EXS_SHOW',"Show script");
define('PMBP_EXS_INCL',"Include this script in the PHP file (%s) you want to do the backup job");
define('PMBP_EXS_SAVE',"or save this script to a new file (will overwrite an existing file!)");

/*file_info.php*/
define('INF_INFO',"información");
define('INF_DATE',"Fecha");
define('INF_DB',"Base de Datos");
define('INF_SIZE',"Tamaño de la copia de la seguridad");
define('INF_COMP',"Esta comprimido");
define('INF_DROP',"Contiene 'drop table'");
define('INF_TABLES',"Contiene tablas");
define('INF_DATA',"Contiene Datos");
define('INF_COMMENT',"Comentarios");
define('INF_NO_FILE',"Archivo no seleccionado");

/*db_status.php*/
define('DB_NAME',"Nombre de la base de datos");
define('DB_NUM_TABLES',"Número de tablas");
define('DB_NUM_ROWS',"Número de tuplas");
define('DB_SIZE',"Tamaño");
define('DB_DIFF',"Los tamaños pueden variar de tamaño de los archivos de copia de seguridad!");
define('DB_NO_DB',"No databases available");
define('DB_TABLES',"Tablas información");
define('DB_TAB_TITLE',"Tablas de la base de datos ");
define('DB_TAB_NAME',"Nombre de la tabla");
define('DB_TAB_COLS',"Número de campos");

/*sql_query.php*/
define('SQ_ERROR',"Ocurrio un error en la linea número");
define('SQ_SUCCESS',"Exitosamente ejecutado");
define('SQ_RESULT',"Resultado de consultas");
define('SQ_AFFECTED',"Número de tuplas afectados");
define('SQ_WARNING',"Attention: This page is only built to send simple sql queries to the databases. Being careless can destroy your databases!");
define('SQ_SELECT_DB',"Seleccione base de datos");
define('SQ_INSERT',"Insert your sql query here");
define('SQ_FILE',"Upload sql file");
define('SQ_SEND',"Run");

/*login.php*/
define('LI_MSG',"Entra en la cuenta (use su nombre de usuario y contraseña de MySQL)");
define('LI_USER',"Nombre de usuario");
define('LI_PASSWD',"Contraseña");
define('LI_LOGIN',"Iniciar sesión");
define('LI_LOGED_OUT',"¡Desconectado!");
define('LI_NOT_LOGED_OUT',"Not securely logged out!<br>To securely logout enter a WRONG password");

/*big_import.php*/
define('BI_IMPORTING_FILE'," importación de archivos");
define('BI_INTO_DB',"en base de datos");
define('BI_SESSION_NO',"número de sesión");
define('BI_STARTING_LINE',"A partir de la línea");
define('BI_STOPPING_LINE',"Al detenerse en línea");
define('BI_QUERY_NO',"Número de consultas a cabo");
define('BI_BYTE_NO',"Número de bytes todavía procesa");
define('BI_DURATION',"Duración de la última sesión");
define('BI_THIS_LAST',"esta sesión / Total");
define('BI_END',"Alcanzado el final del archivo, la importación parece estar bien");
define('BI_RESTART',"Reiniciar la importación  del archivo ");
define('BI_SCRIPT_RUNNING',"Todavía se está ejecutando!<br>Por favor, espere hasta que se llega al final del archivo");
define('BI_CONTINUE',"Continuar desde la línea de");
define('BI_ENABLE_JS',"Active JavaScript para continuar de forma automática");
define('BI_BROKEN_ZIP',"El archivo ZIP parece estar roto");
define('BI_WRONG_FILE',"Se detuvo en línea %s.<br>La consulta actual incluye más de %s líneas de volcado. Eso sucede si se ha creado el archivo de copia de seguridad
por alguna herramienta que no coloque un punto y coma seguido de un salto de línea al final de cada consulta, o si el archivo de copia de seguridad contiene inserciones largos.");

/*get_file.php*/
define("GF_INVALID_EXT","It is only possible to view files with one of these extensions: .php, .php3, .html, .htm, .sql, .sql.zip, .sql.gz. It is not possible to view phpMyBackupPro config files");

?>
