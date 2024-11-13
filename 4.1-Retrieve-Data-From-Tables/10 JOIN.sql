SELECT EventName, CountryName 
FROM Event
JOIN Country
ON Event.CountryId = Country.Id;