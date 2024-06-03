set serveroutput on;
create or replace function lab8_6 (
	name in varchar,
	empno in number
) return varchar is

email varchar(30);

BEGIN
email := name || '_' || empno || '@digisol.com';
return email;

END;
/