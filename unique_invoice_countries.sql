SELECT e.FirstName || ' ' || e.LastName AS FullName,
       i.InvoiceId
FROM employee e
JOIN customer c ON e.EmployeeId = c.SupportRepId
JOIN invoice i ON c.CustomerId = i.CustomerId
WHERE e.Title = 'Sales Support Agent';
