select a.oid as user_role_id
, a.rolname as user_role_name
, b.roleid as other_role_id
, c.rolname as other_role_name
from pg_roles a
inner join pg_auth_members b on a.oid=b.member
inner join pg_roles c on b.roleid=c.oid 
where a.rolname = 'nombre.apellido' 
and a.rolname = 'nombre.apellido' 
and a.rolname = 'nombre.apellido' 
