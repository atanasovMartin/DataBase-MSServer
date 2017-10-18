SELECT TOP (50) 
              e.FirstName, 
			  e.LastName, 
			  t.Name as Town,
			  a.AddressText
	     FROM Employees e
        INNER JOIN Addresses a
           ON e.AddressID = a.AddressID
        INNER JOIN Towns t 
           ON a.TownID = t.TownID
     ORDER BY e.FirstName, e.LastName