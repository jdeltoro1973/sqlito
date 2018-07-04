#Extrae las palabras de un campo separadas por un valor, en este caso es un espacio en blanco ' ', 
#los agrupa por papabra y los despliega de mayo a menor número de incidencias

SELECT palabra, count(*) cuenta
FROM ( 
  SELECT regexp_split_to_table(tabla, ' ') as palabra
  FROM esquema.tabla
) t
GROUP BY palabra order by cuenta desc
