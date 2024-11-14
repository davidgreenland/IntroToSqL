-- 13 All data showing CountryNames sorted by which has the most associated events

SELECT CountryName, COUNT(CountryName) AS total FROM Event
JOIN Country
	ON Event.CountryId = Country.Id
GROUP BY CountryName
ORDER By total DESC;
