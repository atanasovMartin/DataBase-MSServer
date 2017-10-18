SELECT TOP (5) 
              e.EmployeeID, 
			  e.JobTitle, 
			  e.AddressID, 
			  a.AddressText
	     FROM Employees e
   INNER JOIN Addresses  
           AS a          
           ON a.AddressID = e.AddressID
     ORDER BY AddressID 
	      ASC   