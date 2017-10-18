 SELECT e.EmployeeID,e.FirstName,m.EmployeeID AS manager_id,m.FirstName AS manager_name
   FROM employees AS e
   JOIN employees AS m
     ON m.EmployeeID = e.ManagerID
  WHERE e.ManagerID IN (3,7)
ORDER BY e.EmployeeID