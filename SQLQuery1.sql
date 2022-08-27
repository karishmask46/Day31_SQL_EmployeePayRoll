--UC1
create database payroll_service1
select name from sys.databases;
use payroll_service1
--UC2
create Table employee_payroll
(
id int identity(1,1) primary key,
name varchar(50) not null ,
salary money not null,
start_date date not null
);

--UC3
insert into employee_payroll values('karishma',35000.0,'2018-05-01'),
('jyothi',10000.0,'2016-07-12'),
('sravani',15000.0,'2019-5-26'),
('sowji',20000.0,'2017-09-05');

--UC4

select * from employee_payroll


update employee_payroll set name ='chandana' where id = 2
update employee_payroll set salary = 20000.0,  start_date = '2015-04-12' where name = 'chandana'

--UC5
select salary from employee_payroll where name = 'sravani'
select name from employee_payroll where start_date >='2018-05-01'
select name from employee_payroll where start_date between '2015-01-02' AND '2017-12-10';

--UC6
--alter table employee_payroll add gender char ;
alter table  employee_payroll add gender nchar not null;
update employee_payroll set gender ='M' where name ='sowji' or name ='sravani';
update employee_payroll set gender = 'F'where name in ('karishma','chandana','jyothi');

--UC7
select  sum(salary) from employee_payroll where gender = 'F'
select sum(salary) from employee_payroll where gender ='M'
select avg(salary) from employee_payroll where gender ='M'
select avg(salary) from employee_payroll where gender ='F' 
select min(salary) from employee_payroll where gender ='M'
select min(salary) from employee_payroll where gender ='F'
select Max(salary) from employee_payroll where gender ='M'
select Max(salary) from employee_payroll where gender ='F'
select count(salary) from employee_payroll where gender = 'F' GROUP BY name;

--UC8
alter table employee_payroll 
add phone varchar(13),
address varchar(100) default 'US' not null,
department varchar(50) default 'IT' not null;

select * from employee_payroll;
 update employee_payroll set phone ='9705309582' where name ='karishma';

--UC9

alter table employee_payroll add
basic_pay money,
Deductions money,
taxable_pay money,
income_tax money;

alter table employee_payroll  add
netpay money;

--UC9
update employee_payroll set department = 'sales' where id =2

insert into employee_payroll values 
('chandana',20000.0,'2015-04-12','F',null,'US','marketing',null,null,null,null,null)
