select first_name, last_name from employees;
select * from employees;
select count(*) from employees where base_salary > 5000;
select count(1) from employees where base_salary >= 5000;
select first_name from employees where base_salary <> 5000;
select * from employees where base_salary between 1000 and 2000; --includes 1000 and 2000
select * from employees where base_salary in (1600,2700,4200);
select * from employees where hire_date < '2005-1-1';
select first_name || '_' || last_name as "fullnames" from employees;
select id, first_name || ' ' || last_name as "full_name" ,email ||'@gmail.com' as "email_add",
job_title,base_salary+(base_salary+commission_pct) as "net_salary" from employees 
order by id, hire_date limit 50 ;
select distinct(state) from employees;
select * from employees where phone is null;
select * from employees where phone = '';
select state, sum(base_salary) as "total_base" from employees  group by state;
select state,job_title, sum(base_salary) as "total_base" from employees  group by state, job_title order by state;
select initcap('naushi naaz');
select concat('naushi','naaz');
select id,first_name,length(first_name) from employees;
select instr(
select round(2.499,2);
select round (24.9, -1);
select * from departments where id = 1;
select * from employees where id = 395;
select e.id,d.name,e.first_name || ' ' ||e.last_name as "full_name" from employees e,departments d where e.department_id = d.id and d.name = 'IT';
insert into employees(id,first_name,last_name,state,department_id,job_title,base_salary) values(394,'Naushi','Naaz','MA',1,'Business Analyst',34000);
insert into employees values(395,'Nida','Naaz','','MA','','','',null,2,'Business Analyst',36000,200);
update employees set address ='1455 comm ave', zip_code=02135  where first_name = 'Naushi';
delete from employees where id = 395;
create table books (
id int,
title varchar(30),
author varchar(30),
publishyear int,
price float,
last_updated timestamp
);
Select * from books;
alter table employees alter column commission_pct type int;