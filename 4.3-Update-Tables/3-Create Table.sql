-- Create a new table with columns with type Id + primary key, text, integer, date, boolean

CREATE TABLE Booking (
	Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Notes varchar(max) NULL,
	Adults smallint DEFAULT 0,
	Children smallint DEFAULT 0,
	Date date NULL,
	EventId int NOT NULL FOREIGN KEY REFERENCES Event(EventId),
	PaymentComplete bit DEFAULT 0
)

BEGIN TRANSACTION
	INSERT INTO Booking (Notes, Adults, Children, Date, EventId)
		VALUES ('Difficult customers', 2, 6, '2025-07-10', (
			SELECT TOP 1 EventId FROM Event
			WHERE EventName Like 'Sharding%'
			)
		)

SELECT * FROM Booking
JOIN Event 
	ON Event.EventId = Booking.EventId

ROLLBACK