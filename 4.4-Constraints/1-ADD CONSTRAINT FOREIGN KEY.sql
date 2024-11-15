-- Adds a link between Id columns in Event+Category, Event+Country, Country+Continent

-- Naming convention
-- FK_ForeignKeyTable_PrimaryKeyTable
-- FK table "depends on" primary key table
-- Event depends on category
-- FK_Event_Category
-- Event depends on Country
-- FK_Event_Country
-- Country depends on Continent
-- FK_Country_Continent

ALTER TABLE Event
	ADD CONSTRAINT FK_Event_Category
	FOREIGN KEY (CategoryId) REFERENCES Category(Id)

-- this automatically names the Key constraint [FK__Event__CountryId__XXXXXXX]
ALTER TABLE Event 
	ADD FOREIGN KEY (CountryId) REFERENCES Country(Id)

ALTER TABLE Country
	ADD CONSTRAINT FK_Country_Continent
	FOREIGN KEY (ContinentId) REFERENCES Continent(Id)


-- Throws error: The DELETE statement conflicted with the REFERENCE constraint "FK__Country__ContinentId"
BEGIN TRANSACTION
	DELETE FROM Continent
		WHERE Id = 1

SELECT * FROM Continent

ROLLBACK