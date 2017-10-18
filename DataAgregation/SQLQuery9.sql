SELECT
CASE 
    WHEN Age >= 0 AND age < 11 THEN '[0-10]'
    WHEN Age >= 11 AND age < 21 THEN '[11-20]'
    WHEN Age >= 21 AND age < 31 THEN '[21-30]'
    WHEN Age >= 31 AND age < 41 THEN '[31-40]'
    WHEN age >= 41 AND age < 51 THEN '[41-50]'
    WHEN age >= 51 AND age < 61 THEN '[51-60]'
    WHEN age >= 61 THEN '[61+]' 
END AS [AgeGroup], COUNT(Age) AS WizzardCount FROM WizzardDeposits
GROUP BY CASE
    WHEN Age >= 0 AND age < 11 THEN '[0-10]'
    WHEN Age >= 11 AND age < 21 THEN '[11-20]'
    WHEN Age >= 21 AND age < 31 THEN '[21-30]'
    WHEN Age >= 31 AND age < 41 THEN '[31-40]'
    WHEN age >= 41 AND age < 51 THEN '[41-50]'
    WHEN age >= 51 AND age < 61 THEN '[51-60]'
    WHEN age >= 61 THEN '[61+]' 
	END