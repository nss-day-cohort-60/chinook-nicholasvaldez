SELECT e.FirstName || ' ' || e.LastName AS FullName, SUM(i.Total) AS TotalSales
FROM employee e
JOIN customer c ON e.EmployeeId = c.SupportRepId
JOIN invoice i ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.EmployeeId
