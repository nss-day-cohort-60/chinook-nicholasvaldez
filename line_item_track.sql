SELECT il.InvoiceLineId, t.Name AS TrackName
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId;
