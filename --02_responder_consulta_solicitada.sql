--02_responder_consulta_solicitada

--La canción que es el track número 4, del primer artista que aparece en la querie que
--indica los artistas de nacionalidad estadounidense que nacieron después de 1992.

--Inner join y sub query
select C.titulo_cancion as cancion_track4_primer_artista_usa_nacido_despues_1992
from cancion as C 
inner join (
	select nombre_artista 
	from artista
	where nacionalidad = 'Estadounidense'
		and fecha_de_nacimiento >= '1993-01-01'
	order by nombre_artista ASC
	limit 1
	) as A
	on C.artista = A.nombre_artista 
where C.numero_del_track = 4;