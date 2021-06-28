// Correr esto para crear la tabla. Antes revisar que no falte o sobren usuarios.

create   table TEMPORAL(usuario varchar);
insert into TEMPORAL(usuario) values
('nombre.apellido'), ('nombre.apellido'), ('nombre.apellido');


// Correr esto para realizar la cosulta.

select  TEMPORAL.usuario, a.rolname as user_role_name
, c.rolname as other_role_name
from pg_roles a
inner join pg_auth_members b on a.oid=b.member
inner join pg_roles c on b.roleid=c.oid 
RIGHT JOIN TEMPORAL  on a.rolname=TEMPORAL.usuario;



// En caso de que alguien tenga algun permiso de mas editar y correr esto.

revoke readonly from "nombre.apellido"

//Eliminar la tabla TEMPORAL al terminar.

DROP table public.TEMPORAL;