SELECT BillingCountry AS Country, COUNT(*) AS TotalInvoices
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalInvoices DESC;
