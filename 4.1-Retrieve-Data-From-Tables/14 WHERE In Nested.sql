-- Events that have a duplicate EventDate

SELECT * FROM Event
WHERE EventDate IN (SELECT EventDate
FROM Event
GROUP BY EventDate
HAVING COUNT(*) > 1)
ORDER BY EventDate;
