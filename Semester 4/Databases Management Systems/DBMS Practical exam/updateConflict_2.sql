-- Transaction 2
BEGIN TRANSACTION;
UPDATE Company SET CPhone = '987654321' WHERE CompanyID = 1;
COMMIT
SELECT * FROM Company
