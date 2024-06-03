set serveroutput on;
create or replace function lab8_5(
	v_code in char
) return varchar is

v_cli client.name%type;

BEGIN
select name into v_cli from client 
where phone like v_code || '%' and rownum = 1;

return v_cli;
END;
/