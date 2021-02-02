SELECT inTime.event_day AS day, inTime.emp_id AS emp_id, SUM(outTime.out_time - inTime.in_time) AS total_time
FROM Employees inTime
JOIN Employees outTime
ON inTime.emp_id = outTime.emp_id AND inTime.event_day = outTime.event_day AND inTime.in_time = outTime.in_time
GROUP BY 1, 2
ORDER BY 1, 2;
