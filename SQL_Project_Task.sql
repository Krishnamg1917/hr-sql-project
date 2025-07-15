select *
from employees;

select first_name, last_name, concat(first_name,' ',last_name) as Name
from employees;

select employee_id, first_name, last_name, salary
from employees
where salary >=50000;

select avg(salary) as average_salary
from employees;

select count(city) as Number_of_cities
from locations;

select *
from departments
where department_name = 'IT';

select *
from emp_details_view
order by salary
limit 5;

select *
from emp_details_view
order by salary desc
limit 5;

select *
from emp_details_view
where department_name = 'Sales' and region_name = 'Europe';

select *
from emp_details_view
where commission_pct is not null;

select department_name, sum(salary) as total_dpt_wise_salary
from emp_details_view
group by department_name;

select city, sum(commission_pct) as total_city_wise_cp
from emp_details_view
group by city;

select department_name, sum(salary) as total_dpt_wise_salary, max(salary) as Maximum_salary, min(salary) as Minimum_salary
from emp_details_view
group by department_name;

select *
from emp_details_view
order by salary desc
limit 10;

select city, sum(salary) as total_city_wise_salary
from emp_details_view
group by city;

select *
from (select department_name, sum(salary) as total_dpt_wise_salary
from emp_details_view
group by department_name
) as a
order by total_dpt_wise_salary desc;