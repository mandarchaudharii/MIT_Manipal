set serveroutput on;
create or replace function lab8_4(
	v_prjid work_exp.prjid%type,
	v_empcode work_exp.empcode%type
) return number is

v_rat char(1);
inc number(5);

BEGIN
select rating into v_rat from work_exp 
where empcode = v_empcode and prjid = v_prjid;

if v_rat = 'A' then inc := 30000;
elsif v_rat = 'B' then inc := 20000;
else inc := 10000;
end if;

return inc;

END;
/
