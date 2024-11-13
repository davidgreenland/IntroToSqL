-- All Events from 20th century, excluding from Europe ContinentName

SELECT EventName, CountryName, CategoryName, ContinentName, EventDate FROM Event
JOIN Country
	ON Event.CountryId = Country.Id
JOIN Category
	ON Event.CategoryId = Category.Id
JOIN Continent
 	ON Country.ContinentId = Continent.Id
WHERE EventDate LIKE '19%'
AND ContinentName NOT LIKE 'Europe';