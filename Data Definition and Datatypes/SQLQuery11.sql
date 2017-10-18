Update Payments
SET TaxRate = TaxRate - (TaxRate / 100) * 3
SELECT TaxRate FROM Payments