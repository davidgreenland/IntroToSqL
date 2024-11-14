-- Add a new column to Category, ‘Description'. with default value 'test’. Remove column

ALTER TABLE Category
ADD Description varchar(max) 
CONSTRAINT DF__Category__Description DEFAULT 'test'

BEGIN TRANSACTION
	INSERT INTO Category (CategoryName)
		VALUES ('Trumpeting')

SELECT * FROM Category;

ROLLBACK

ALTER TABLE Category
DROP CONSTRAINT DF__Category__Description

ALTER TABLE Category
DROP COLUMN Description
