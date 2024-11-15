-- Adds a link between Id columns in Event+Category, Event+Country, Country+Continent

ALTER TABLE Event
ADD CONSTRAINT FK_EVENT_CATEGORY
FOREIGN KEY (CategoryId) REFERENCES Category(Id)

-- this automatically names the Key constraint [FK__Event__CountryId__XXXXXXX]
ALTER TABLE Event 
ADD FOREIGN KEY (CountryId) REFERENCES Country(Id)

ALTER TABLE Country
ADD CONSTRAINT FK_Country_ContinentId
FOREIGN KEY (ContinentId) REFERENCES Continent(Id)


-- Throws error: The DELETE statement conflicted with the REFERENCE constraint "FK__Country__ContinentId"
BEGIN TRANSACTION
	DELETE FROM Continent
		WHERE Id = 1

SELECT * FROM Continent

ROLLBACK