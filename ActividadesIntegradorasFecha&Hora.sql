/*Utiliza la función DAYOFWEEK para obtener el número del día de la semana
 en que se realizó el envío con ID 7.*/

select dayofweek(fecha_envio) as numero_dia_semana from envios
where id = 7;

/*Utiliza la función DAYOFYEAR para obtener el día del año en que se entregará
 el envío con código de producto 'JKL999'.*/

select dayofyear(fecha_entrega) as dia_del_año from envios
where codigo_producto = 'JKL999';

/*Utiliza la función EXTRACT para obtener el año de la fecha de envío del envío
 con código de producto 'LMN001'.*/

select extract(year from fecha_envio) as año_de_envio from envios
where codigo_producto = 'LMN001';

/*Utiliza la función FROM_DAYS para obtener la fecha correspondiente a 737402
 días a partir del año 0.*/

select from_days(737402) as fecha_correspondiente;

 /*Utiliza la función FROM_UNIXTIME para saber que fecha sería si pasaron
 1.617.799.784 segundos desde 1970.*/

select from_unixtime(1617799784) as fecha_unix;

/*Utiliza la función GET_FORMAT para obtener el formato de fecha “EUR” para
 formatear la fecha de entrega del envío con código de producto 'XYZ789'.*/

select get_format(date, 'EUR') as fromato_fecha;

/*Utiliza la función HOUR para extraer la hora de la fecha de envío del envío con ID 1.*/

select hour(fecha_envio) as hora_envio from envios
where id = 1;

/*Utiliza la función LAST_DAY para obtener el último día del mes de la
 fecha de entrega programada para el envío con código de producto 'XYZ789'.*/

select last_day(fecha_entrega) as ultimo_dia_del_mes from envios
where codigo_producto = 'XYZ789';

/*Utiliza la función LOCALTIME para obtener la hora y la fecha local actual del servidor.*/

select localtime() as hora_fecha_local;

/*Utiliza la función MAKEDATE para crear una fecha correspondiente al
 año 2023 y al día del año 180.*/

select makedate(2023, 180) as fecha_creada;

/*Utiliza la función MAKETIME para crear una hora con 3 horas, 30 minutos y 15 segundos.*/

select maketime(3, 30, 15) as hora_creada;

/*Utiliza la función MICROSECOND para obtener los microsegundos de la
 fecha de entrega del envío con ID 3.*/

select microsecond(fecha_entrega) as microsegundo_de_entrega from envios
where id = 3;

/*Utiliza la función MINUTE para obtener el minuto de la hora de envío
 del envío con ID 4.*/

select minute(fecha_envio) as minuto_de_envio from envios
where id = 4;

/*Utiliza la función MONTH para obtener el mes de la fecha de envío del envío con ID 5.*/

select month(fecha_envio) as mes_envio from envios
where id = 5;

/*Utiliza la función MONTHNAME para obtener el nombre del mes de la
 fecha de envío del envío con ID 6.*/

select monthname(fecha_envio) as nombre_del_envio_del_mes from envios
where id = 6;

/*Utiliza la función NOW para obtener la fecha y hora actual.*/

select now() as fecha_hora_actual;

/*Utiliza la función TIMESTAMPDIFF para calcular la diferencia en 
días entre la fecha de envío del envío con ID 5 y la fecha de entrega del envío con ID 6.*/

select timestampdiff(day, fecha_envio, (select fecha_entrega from envios where id =6)) as diferencia_de_dias
from envios where id = 5;

/*Utiliza la función TO_DAYS para convertir la fecha de envío del envío con ID 7 en días*/

select to_days(fecha_envio) as dias_envio from envios
where id = 7;

/*Utiliza la función TO_SECONDS para convertir la fecha de entrega 
del envío con código de producto 'JKL999' en segundos desde el Año 0.*/

select to_seconds(fecha_entrega) as segundos_desde_el_año_cero from envios
where codigo_producto = 'JKL999';

/*Utiliza la función UNIX_TIMESTAMP para obtener una marca de tiempo 
Unix de la fecha de envío del envío con ID 1.*/

select unix_timestamp(fecha_envio) as marca_unix from envios
where id = 1;

/*Utiliza la función UTC_DATE para obtener la fecha UTC actual.*/

select utc_date() as fecha_utc_actual;

/*Utiliza la función UTC_TIME para obtener la hora UTC actual.*/

select utc_time() as hora_utc_actual;

/*Utiliza la función UTC_TIMESTAMP para obtener la fecha y hora UTC actual.*/

select utc_timestamp() as fecha_hora_utc_actual;

/*Utiliza la función WEEK para obtener el número de semana de la fecha de 
envío del envío con ID 2.*/

select week(fecha_envio) as numero_de_la_semana from envios
where id = 2;

/*Utiliza la función WEEKDAY para obtener el índice del día de la semana 
de la fecha de envío del envío con ID 3.*/

select weekday(fecha_envio) as indice_dia_de_la_semana from envios
where id =3;

/*Utiliza la función WEEKOFYEAR para obtener la semana del calendario de 
la fecha de entrega del envío con ID 4.*/

select weekofyear(fecha_entrega) as semana_calendario from envios
where id = 4;

/*Utiliza la función YEAR para obtener el año de la fecha de envío del envío con ID 5.*/

select year(fecha_envio) as año_de_envio from envios
where id = 5;

/*Utiliza la función YEARWEEK para obtener el año y la semana de la fecha 
de envío del envío con ID 6.
*/

select yearweek(fecha_envio) as año_y_semana from envios
where id = 6;

