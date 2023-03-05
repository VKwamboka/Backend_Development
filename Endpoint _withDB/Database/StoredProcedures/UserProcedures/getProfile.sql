CREATE OR ALTER  PROCEDURE getProfile(@id VARCHAR(50))
AS
BEGIN
SELECT Id ,Name ,Email, Password FROM UserTable WHERE Id=@id 
END