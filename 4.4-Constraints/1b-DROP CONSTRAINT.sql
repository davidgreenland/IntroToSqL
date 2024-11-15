-- Remove incorrectly named Key Constraint

ALTER TABLE Country
ADD CONSTRAINT FK__Event__ContinentId
FOREIGN KEY (ContinentId) REFERENCES Continent(Id)

ALTER TABLE Country
DROP CONSTRAINT FK__Event__ContinentId