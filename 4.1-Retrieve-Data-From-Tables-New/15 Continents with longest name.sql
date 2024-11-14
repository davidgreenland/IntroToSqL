-- Events that occurred in the Continent with the longest name

SELECT * FROM Event
JOIN Country 
	ON CountryId = Country.Id
JOIN Continent
	ON ContinentId = Continent.Id
WHERE ContinentName IN 
	(SELECT TOP 1 ContinentName FROM Continent
WHERE ContinentName NOT LIKE 'Not applicable'
ORDER BY LEN(ContinentName) DESC);

-- returns 2 events

--EventId 
--40
--241