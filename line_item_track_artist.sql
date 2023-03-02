SELECT il.InvoiceLineId, t.Name AS TrackName, ar.Name AS ArtistName
FROM invoiceline il
JOIN track t ON il.TrackId = t.TrackId
JOIN album al ON t.AlbumId = al.AlbumId
JOIN artist ar ON al.ArtistId = ar.ArtistId
ORDER BY il.InvoiceLineId ASC;
