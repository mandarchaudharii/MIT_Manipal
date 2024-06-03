create or replace procedure work(skill_exp in number) is
cursor project is select s.skillname,count(s.skillname) human_resource_available from skill s natural join emp_skill e where e.skill_experience>=skill_exp group by s.skillname;

begin

dbms_output.put_line('human resource for skill experience '||skill_exp ||' are: ');
for i in project loop
dbms_output.put_line('skill name: '||i.skillname);
dbms_output.put_line('human resource: '|| i.human_resource_available);
dbms_output.put_line('--------------------------------');
end loop;

end;
/