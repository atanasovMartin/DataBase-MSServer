    SELECT e.EmployeeID, e.FirstName, p.Name AS ProjectName
      FROM employees AS e
INNER JOIN EmployeesProjects AS ep
        ON e.EmployeeID = ep.EmployeeID
LEFT OUTER JOIN projects AS p
        ON ep.ProjectID = p.ProjectID
       AND p.StartDate < '20050101'
     WHERE e.EmployeeID = 24