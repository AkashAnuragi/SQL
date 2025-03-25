Select e.employee_id, e.name, 
Count(emp.employee_id) as reports_count,
ROUND(avg(emp.age)) as average_age
from Employees e 
join employees emp on e.employee_id = emp.reports_to
group by e.employee_id, e.name
order by e.employee_id;
