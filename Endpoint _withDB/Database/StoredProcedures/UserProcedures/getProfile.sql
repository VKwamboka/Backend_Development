CREATE OR ALTER  PROCEDURE getProfile(@id VARCHAR(50))
AS
BEGIN
SELECT Id ,Name ,Email, Password FROM UserTable WHERE Id=@id 
END

EXEC getProfile '24c4717a-7ac3-440c-b9bc-36799eca6580'