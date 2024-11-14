-- EventName, CountryName, ContinentName and CategoryName only

SELECT EventName, CountryName, ContinentName, CategoryName
FROM Event
JOIN Country
	ON Event.CountryId = Country.Id
JOIN Category
	ON Event.CategoryId = Category.Id
JOIN Continent
 	ON Country.ContinentId = Continent.Id;
