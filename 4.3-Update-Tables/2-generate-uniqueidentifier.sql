-- Add a new column to Event called EventGuid, generate a new UUID for each entry

BEGIN TRANSACTION
	ALTER TABLE Event
	ADD EventGuid uniqueidentifier NOT NULL
		DEFAULT newid()

SELECT * FROM Event

COMMIT