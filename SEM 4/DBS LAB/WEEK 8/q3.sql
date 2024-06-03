create or replace procedure lab8_3(
	v_prjid in work_exp.prjid%type,
	v_add out number
) is

i prj_details%rowtype;

BEGIN
select * into i from prj_details where prjid = v_prjid;
v_add := (i.budget_allocated / (i.end_date - i.start_date)) * (i.actual_end_date - i.end_date);	

END;
/