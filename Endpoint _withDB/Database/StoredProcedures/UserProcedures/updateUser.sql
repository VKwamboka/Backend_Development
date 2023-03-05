
CREATE PROCEDURE UpdateUser (
    @id VARCHAR(100), @name VARCHAR(200),@email VARCHAR(300) ,@password VARCHAR(150))
AS
BEGIN


IF EXISTS(SELECT * FROM UserTable WHERE Id=@id)
BEGIN
UPDATE UserTable SET  name = COALESCE(@name, name),
        email = COALESCE(@email, email),
        password = COALESCE(@password, password)
WHERE Id=@id

END

END