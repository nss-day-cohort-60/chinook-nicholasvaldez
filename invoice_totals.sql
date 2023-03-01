SELECT i.Total AS InvoiceTotal, 
       c.FirstName || ' ' || c.LastName AS CustomerName, 
       c.Country AS CustomerCountry, 
       e.FirstName || ' ' || e.LastName AS SalesAgentFullName
FROM Invoice i 
JOIN Customer c ON i.CustomerId = c.CustomerId 
JOIN Employee e ON c.SupportRepId = e.EmployeeId;
