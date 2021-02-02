SELECT m.employee_id AS employee_id, m.name AS name, COUNT(e.employee_id) AS reports_count, ROUND(SUM(e.age) / COUNT(e.employee_id),0) AS average_age
FROM Employees m
JOIN Employees e
ON m.employee_id = e.reports_to
GROUP BY m.employee_id
ORDER BY 1
