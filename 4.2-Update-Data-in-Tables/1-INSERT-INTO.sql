-- Adds new entry to  Event, Country, Continent and Category tables

INSERT INTO Continent (ContinentName)
	VALUES ('Salfordia');

INSERT INTO Country (CountryName, ContinentId)
	VALUES ('Brightland', 9);

INSERT INTO Category (CategoryName)
	Values ('Database News');

INSERT INTO Event (EventName, EventDetails, EventDate, CountryId, CategoryId)
	VALUES ('Sharding goes viral', 'After many months, sharding completes at Bright HR. DatabaseWorld.org award the team a lifetime subscription. Speaking from the top of the Shard at the awards ceremony, A. B. Dullah, said he was mildly pleased',
		'2024-11-30', 44, 21);
