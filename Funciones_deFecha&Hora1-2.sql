/*Crea una tabla llamada "envios" con cuatro columnas: "id" de tipo INT como clave primaria
 y autoincremental, "fecha_envio" de tipo DATETIME,  "fecha_entrega" de tipo DATETIME y 
 "codigo_producto" de tipo VARCHAR(10). Luego,*/
 
 create table envios (
 id int auto_increment primary key,
 fecha_envio datetime,
 fecha_entrega datetime,
 codigo_producto varchar(10)
 );

/*inserta siete filas en la tabla "envios" 
 con los siguientes datos:

Fecha Envío: '2022-01-15 08:00:00', Fecha Entrega: '2022-01-20 12:30:00', Código Producto: 'ABC123'.

Fecha Envío: '2022-02-10 10:15:00', Fecha Entrega: '2022-02-15 14:45:00', Código Producto: 'XYZ789'.

Fecha Envío: '2022-03-05 09:30:00', Fecha Entrega: '2022-03-10 13:20:00', Código Producto: 'PQR456'.

Fecha Envío: '2022-04-20 11:45:00', Fecha Entrega: '2022-04-25 15:10:00', Código Producto: 'LMN001'.

Fecha Envío: '2022-05-12 07:55:00', Fecha Entrega: '2022-05-17 10:25:00', Código Producto: 'DEF777'.

Fecha Envío: '2022-06-08 08:20:00', Fecha Entrega: '2022-06-13 12:40:00', Código Producto: 'GHI888'.

Fecha Envío: '2022-07-03 10:05:00', Fecha Entrega: '2022-07-08 14:15:00', Código Producto: 'JKL999'.
*/

insert into envios (fecha_envio, fecha_entrega, codigo_producto) values
( '2022-01-15 08:00:00', '2022-01-20 12:30:00', 'ABC123'),
( '2022-02-10 10:15:00', '2022-02-15 14:45:00', 'XYZ789'),
( '2022-03-05 09:30:00', '2022-03-10 13:20:00', 'PQR456'),
( '2022-04-20 11:45:00', '2022-04-25 15:10:00', 'LMN001'),
( '2022-05-12 07:55:00', '2022-05-17 10:25:00', 'DEF777'),
( '2022-06-06 08:20:00', '2022-06-13 12:40:00', 'GHI888'),
( '2022-07-03 10:05:00', '2022-07-08 14:15:00', 'JKL999');

/*Utilizando la función DATE_ADD, calcula la fecha de entrega programada para un envío con código 
de producto 'ABC123' cuando se le añaden 5 días a la fecha de envío.
*/

SELECT date_add(fecha_envio, interval 5 day) as fecha_entrega_programada from envios
where codigo_producto = 'ABC123';

/*Utilizando la función ADDTIME, encuentra la hora estimada de entrega para un envío con código 
de producto 'XYZ789' si se suma 4 horas y 30 minutos a la hora de entrega. 
*/

select addtime(fecha_entrega, '4:30:00') as hora_de_entrega from envios
where codigo_producto ='XYZ789';

/*Utilizando la función CONVERT_TZ, convierte la fecha de envío de un envío con código 
de producto 'PQR456' de la zona horaria 'UTC' (+00:00) 
a la zona horaria de Argentina GMT-3 (-03:00).*/

SELECT convert_tz(fecha_envio, '+00:00', '-03:00') as fecha_envio_argentina from envios
where codigo_producto = 'PQR456';

/*Calcula la diferencia en días entre la fecha de entrega y la fecha de envío para el
 envío con código de producto 'LMN001' utilizando la función DATEDIFF.*/
 
 select datediff(fecha_entrega, fecha_envio) as dias_de_diferencia from envios
 where codigo_producto = 'LMN001';

/*Utiliza la función CURDATE para obtener la fecha actual y, a continuación, obtener la
 diferencia en días entre la fecha de entrega con código de producto 'DEF777'
 y la fecha actual.*/
 
 select datediff(fecha_entrega, curdate()) as dias_para_la_entrega from envios
 where codigo_producto ='DEF777';
 
 /*Utilizando la función CURTIME, obtén la hora actual del sistema.*/
 
 select curtime() as hora_actual;

/*Utiliza la función DATE para extraer la fecha de envío del envío con ID 3.*/

select date(fecha_envio) as fecha_de_envio from envios
where id = 3; 

/*Utiliza la función DATE_ADD para calcular la fecha de entrega programada 
para el envío con código de producto 'XYZ789' si se le agregan 3 días a la fecha de envío.*/

select date_add(fecha_envio, interval 3 day) as nueva_fecha_entrega from envios
where codigo_producto = 'XYZ789'; 

/*Utiliza la función DATE_FORMAT para mostrar la fecha de envío del envío con ID 6 en el
 formato 'DD-MM-YYYY'.*/
 
 Select date_format(fecha_envio, '%d-%m-%y') as fecha_formateada from envios
 where id = 6;

/*Utiliza la función DATE_SUB para calcular la fecha de envío del envío 
con ID 4 si se le restan 2 días.*/

select date_sub(fecha_envio, interval 2 day) as nueva_fecha_envio from envios
where id = 4;

/*Utiliza la función DATEDIFF para calcular la diferencia en días entre la fecha
 de envío y la fecha de entrega programada para el envío con código de producto 'PQR456'.*/
 
 select datediff(fecha_entrega, fecha_envio) as dias_diferencia from envios
 where codigo_producto = 'PQR456';
 
 /*Utiliza la función DAY para obtener el día del mes en que se realizó el envío con ID 2.*/
 
 select day(fecha_envio) as dia_envio from envios
 where id = 2;

/*Utiliza la función DAYNAME para obtener el nombre del día de la semana en que
 se entregará el envío con código de producto 'DEF777'.*/
 
 select dayname(fecha_entrega) as dia_entrega from envios
 where codigo_producto = 'DEF777';

/* Utiliza la función DAYOFMONTH para obtener el día del mes en que se entregará
 el envío con código de producto 'GHI888'.*/
 
 select dayofmonth(fecha_entrega) as dia_del_mes_entrega from envios
 where codigo_producto = 'GHI888';
 
 /*- - - - - - - - - - - - - - - - - - - - - */
 
 /*Utiliza la función PERIOD_ADD para agregar un período de 3 meses al año-mes '2022-07'.*/
 
 select period_add(202207,3) as nuevo_periodo;
 
 /*Utiliza la función PERIOD_DIFF para calcular el número de meses
 entre los períodos '2022-03' y '2022-12'.*/
 
 select period_diff(202212, 202203) as meses_diferencia;
 
 /*Utiliza la función QUARTER para obtener el trimestre de la fecha de entrega
 del envío con código de producto 'PQR456'.*/
 
 select quarter(fecha_entrega) as timestre from envios
 where codigo_producto ='PQR456';
 
 /*Utiliza la función SEC_TO_TIME para convertir 3665 segundos en formato 'hh:mm:ss'.*/
 
 SELECT sec_to_time(3665) as tiempo_en_formato;
 
 /*Utiliza la función SECOND para obtener los segundos de la hora de envío del envío con ID 2.*/
 
 select second(fecha_envio) as segundos_envio from envios
 where id = 2;
 
 /*Utiliza la función STR_TO_DATE para convertir la cadena '2022()08()15' en una fecha.*/
 
 select str_to_date('2022()08()15', '%Y()%m()%d') as fecha_convertida;
 
 /*Utiliza la función SUBDATE (o DATE_SUB) para restar 5 días a la
 fecha de entrega del envío con código de producto 'GHI888'.*/
 
 select date_sub(fecha_entrega, interval 5 day) as nueva_fecha_entrega from envios
 where codigo_producto = 'GHI888';
 
 /*Utiliza la función SUBTIME para restar 2 horas y 15 minutos a
 la hora de envío del envío con ID 7.*/
 
 select subtime(fecha_envio, '2:15:00') as nueva_hora_envio from envios
 where id = 7;
 
 /*Utiliza la función TIME para extraer la porción de tiempo de la
 fecha de envío del envío con ID 1.*/
 
 select time(fecha_envio) as hora_envio from envios
 where id = 1;
 
 /*Utiliza la función TIME_FORMAT para formatear la hora de envío del
 envío con ID 2 en 'hh:mm:ss'.*/
 
 select time_format(fecha_envio, '%H:%i:%s' ) as hora_formateada from envios
 where id = 2;
 
 /*Utiliza la función TIME_TO_SEC para convertir la hora de envío del
 envío con ID 3 en segundos.*/
 
 select time_to_sec(fecha_envio) as segundos_envio from envios
 where id = 3;
 
 /*Utiliza la función TIMEDIFF para calcular la diferencia de horas entre 
las fechas de envío y entrega del envío con ID 4.*/

select timediff(fecha_entrega, fecha_envio) as diferencia_de_horas from envios
where id = 4;

/*Utiliza la función SYSDATE para obtener la hora exacta en la que se 
ejecuta la función en la consulta. Para comprobar esto invoca SYSDATE, 
luego la función SLEEP durante 5 segundos y luego vuelve a invocar la 
función SYSDATE, y verifica la diferencia entre ambas invocaciones con TIMEDIFF.*/

select sysdate() as hora_de_inicio;
select sleep(5);
select sysdate() as hora_de_culminacion;
select timediff(sysdate(),(select sysdate() from (select sysdate() as tiempo)as temp)) 
as diferencia_tiempo;

/*Crea una consulta que utilice la función TIMESTAMP para obtener todos 
los valores de fecha_envio sumandole 12 horas.*/

select timestamp(fecha_envio, '12:00:00') as fecha_envio_de_mas_de_12_horas from envios;

 /*Utiliza la función TIMESTAMPADD para agregar 3 horas a la 
fecha de entrega del envío con código de producto 'XYZ789'.*/

select timestampadd(hour, 3, fecha_entrega) as nueva_fecha_de_entrega from envios
where codigo_producto = 'XYZ789';
 