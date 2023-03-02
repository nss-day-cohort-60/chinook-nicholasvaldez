SELECT 
    track.Name AS TrackName,
    artist.Name AS ArtistName,
    COUNT(*) AS Purchases
FROM 
    InvoiceLine 
    JOIN track ON InvoiceLine.TrackId = track.TrackId 
    JOIN album ON track.AlbumId = album.AlbumId 
    JOIN artist ON album.ArtistId = artist.ArtistId 
GROUP BY 
    InvoiceLine.TrackId 
ORDER BY 
    Purchases DESC 
LIMIT 5;
