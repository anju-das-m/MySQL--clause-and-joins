select distinct salary from employees;
select age as "Employee_age", salary as "Employee_salary" from employees;
select * from employees where salary > 50000 and hire_date <"2016-01-01";
update employees set designation ="Data scientist" where designation is null;
set sql_safe_updates=0;
set sql_safe_updates=1;
select * from employees order by department_id asc, salary desc;
select * from employees where hire_date >= "2018-01-01" and hire_date <"2019-01-01" order by hire_date asc limit 5;
select sum(salary) as total_finance_salary from employees where department_id = (select department_id from departments where department_name ="finance");
select min(age) as Minimum_age from employees;
select l.location, max(e.salary) as Maximum_salary from location as l join employees as e on l.location_id=e.location_id group by l.location_id,l.location;
select designation, avg(salary) as average_salary from employees where designation like "%analyst%" group by designation;
select d.department_name , count(e.employee_id) as Total_employees from departments as d left join employees as e on d.department_id=e.department_id 
group by d.department_id,d.department_name having count(e.employee_id)<3;
select l.location, avg(e.age) as Average_age from location as l join employees as e on l.location_id=e.location_id
where e.gender="f" group by l.location having avg(e.age)<30;
select e.employee_name,e.designation,d.department_name from employees as e inner join departments as d 
on e.department_id=d.department_id;
select d.department_name,count(e.employee_id) as Total_employees from departments as d left join employees as e on d.department_id=e.department_id
group by d.department_id,d.department_name;
select l.location,e.employee_name from employees as e right join location as l on e.location_id=l.location_id;