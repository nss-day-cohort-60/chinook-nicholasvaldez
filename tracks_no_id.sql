SELECT album.Title AS "Album name", 
       MediaType.Name AS "Media type", 
       genre.Name AS "Genre"
FROM track
JOIN album ON track.AlbumId = album.AlbumId
JOIN MediaType ON track.MediaTypeId = MediaType.MediaTypeId
JOIN genre ON track.GenreId = genre.GenreId;
