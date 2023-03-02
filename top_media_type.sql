SELECT 
    MediaType.Name AS "Media Type",
    COUNT(*) AS "Total Purchases"
FROM 
    InvoiceLine 
    INNER JOIN Track ON InvoiceLine.TrackId = Track.TrackId 
    INNER JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY 
    MediaType.Name
ORDER BY 
    "Total Purchases" DESC 
LIMIT 1;
