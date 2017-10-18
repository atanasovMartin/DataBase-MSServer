    SELECT TOP(5) e.EmployeeID, e.FirstName, p.Name  
      FROM Employees e
INNER JOIN EmployeesProjects AS ep
        ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects p
        ON (p.ProjectID = ep.ProjectID)
     WHERE p.StartDate > '2002-08-13' 
	   AND p.EndDate is NUlL
  ORDER BY EmployeeID 
       ASC