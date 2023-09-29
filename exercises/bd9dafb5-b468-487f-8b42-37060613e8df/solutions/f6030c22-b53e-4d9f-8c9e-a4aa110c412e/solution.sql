select first_name, last_name, department_id, salary * 1.2 as "salario incrementado"
from employees
where department_id = 30 and salary * 1.2 < 4000
order by salary;