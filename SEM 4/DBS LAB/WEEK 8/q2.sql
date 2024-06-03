set serveroutput on;
create or replace procedure lab8_2(
	v_skill in emp_skill.skillid%type,
	v_skill_exp in emp_skill.skill_experience%type
) is

cursor c_skill is
	select empno from emp_skill 
	where skillid = 'S1' and skill_experience >= 6;

BEGIN
for i in c_skill loop 
	dbms_output.put_line(i.empno);
end loop;

END;
/