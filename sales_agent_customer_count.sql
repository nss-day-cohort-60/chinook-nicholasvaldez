SELECT e.FirstName || ' ' || e.LastName AS FullName, COUNT(c.CustomerId) AS TotalCustomers
FROM employee e
LEFT JOIN customer c ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId
ORDER BY TotalCustomers DESC;
