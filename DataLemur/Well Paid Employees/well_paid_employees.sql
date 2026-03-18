SELECT 
  emp.employee_id,
  emp.name AS employee_name
FROM employee mgr JOIN employee emp ON mgr.employee_id=emp.manager_id
AND emp.salary>mgr.salary;
