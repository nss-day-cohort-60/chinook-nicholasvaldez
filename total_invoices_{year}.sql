SELECT COUNT(*) AS NumInvoices, 
       strftime('%Y', InvoiceDate) AS Year 
FROM Invoice 
WHERE Year = '2009' OR Year = '2011' 
GROUP BY Year;
