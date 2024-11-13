-- 3 Events with the longest EventDetails

SELECT TOP 3 * 
FROM Event
ORDER BY LEN(EventDetails) DESC;