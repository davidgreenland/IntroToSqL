-- Events with ‘government’ somewhere in the EventDetails

SELECT * FROM Event
WHERE EventDetails LIKE '%government%';