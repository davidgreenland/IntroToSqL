-- Wraps an update in a Rollback statement which shows data before and after 

SELECT * FROM Event
WHERE EventId = 99

BEGIN TRANSACTION
	UPDATE Event
		SET CategoryId = 2
		WHERE EventId = 99
ROLLBACK

SELECT * FROM Event
WHERE EventId = 99
