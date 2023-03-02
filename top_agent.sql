SELECT e.FirstName || ' ' || e.LastName AS FullName, 
       SUM(i.Total) AS TotalSales
FROM employee e
JOIN customer c ON e.EmployeeId = c.SupportRepId
JOIN invoice i ON c.CustomerId = i.CustomerId
GROUP BY e.EmployeeId
ORDER BY TotalSales DESC
LIMIT 1;
