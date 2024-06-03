set serveroutput on;
/*
create table ACCOUNT(
	account_number number(3) primary key,
	balance number(5) check(balance >= 1000)
);
com
insert into ACCOUNT values(1, 1000);
insert into ACCOUNT values(2, 2000);
*/

create or replace procedure lab8_1(
acc_no in account.account_number%type,
amt in number
) is

v_acc account%rowtype;
t number(5);

BEGIN 
select * into v_acc from ACCOUNT where account_number = acc_no;

t := v_acc.balance - amt;

dbms_output.put_line('Current Balance: ' || v_acc.balance);
if (t >= 1000) then 
	update ACCOUNT set balance = t
	where account_number = acc_no;
	
	dbms_output.put_line('Withdrawal of ' || amt || ' successful');
	dbms_output.put_line('Update balance: ' || t);
else
	dbms_output.put_line('Insufficient funds to withdraw');
	
end if;
END lab8_1;
/