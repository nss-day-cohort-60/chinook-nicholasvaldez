SELECT ar.Name AS ArtistName, SUM(il.Quantity) AS TotalSales
FROM InvoiceLine il
INNER JOIN Track t ON il.TrackId = t.TrackId
INNER JOIN Album al ON t.AlbumId = al.AlbumId
INNER JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId
ORDER BY TotalSales DESC
LIMIT 3;
