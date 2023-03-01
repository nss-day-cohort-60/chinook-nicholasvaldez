SELECT c.FirstName || ' ' || c.LastName AS FullName, 
       i.InvoiceId, 
       i.InvoiceDate, 
       i.BillingCountry
FROM customer c
JOIN invoice i ON c.CustomerId = i.CustomerId
WHERE c.Country = 'Brazil';
