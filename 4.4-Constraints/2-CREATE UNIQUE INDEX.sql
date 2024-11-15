-- Adds a rule that does not allow duplicate CountryNames to be added in the Country table

CREATE UNIQUE INDEX idx_countryname
ON Country (CountryName)