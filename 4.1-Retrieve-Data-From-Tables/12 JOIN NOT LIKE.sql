-- All Events from 20th century, excluding from Europe ContinentName

SELECT EventName, CountryName, CategoryName, ContinentName, EventDate FROM Event
JOIN Country
	ON Event.CountryId = Country.Id
JOIN Category
	ON Event.CategoryId = Category.Id
JOIN Continent
 	ON Country.ContinentId = Continent.Id
WHERE EventDate BETWEEN '1900-01-01' AND '1999-12-31'
AND ContinentName NOT LIKE 'Europe';