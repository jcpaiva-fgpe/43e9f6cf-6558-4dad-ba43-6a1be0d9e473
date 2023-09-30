select first_name, last_name, job_id from employees
where salary between 10000 and 18000 and commission_pct is null
order by job_id, last_name;