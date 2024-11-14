-- Add a new Country with an Id of 99

SET IDENTITY_INSERT Country ON

INSERT INTO Country (CountryName, ContinentId, Id)
	VALUES ('Brightland', 9, 99);

SET IDENTITY_INSERT Country OFF