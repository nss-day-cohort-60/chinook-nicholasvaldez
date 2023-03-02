SELECT 
    track.Name AS TrackName, 
    album.Title AS AlbumTitle,
    artist.Name AS ArtistName,
    COUNT(*) AS Purchases 
FROM 
    track 
    JOIN InvoiceLine ON track.TrackId = InvoiceLine.TrackId 
    JOIN invoice ON InvoiceLine.InvoiceId = invoice.InvoiceId 
    JOIN album ON track.AlbumId = album.AlbumId 
    JOIN artist ON album.ArtistId = artist.ArtistId 
WHERE 
    invoice.InvoiceDate BETWEEN '2013-01-01' AND '2013-12-31'
GROUP BY 
    track.TrackId 
ORDER BY 
    Purchases DESC 
LIMIT 10;
