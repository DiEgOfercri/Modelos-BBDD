select *
from 
	autor a,
	escribe e,
	libro l
where 
	a.id=e.autor_id
	and
	l.id=e.libro_id
/
