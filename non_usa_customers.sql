SELECT FirstName || ' ' || LastName AS FullName, 
       CustomerId, 
       Country 
FROM customer 
WHERE Country <> 'USA';
