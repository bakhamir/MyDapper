CREATE PROCEDURE pUsers3
    @id_out INT OUTPUT,
    @id INT,
    @last_name NVARCHAR(255),
    @category_id INT,
    @IIN NVARCHAR(255)
AS
BEGIN
    UPDATE Users
    SET last_name = @last_name, category_id = @category_id, IIN = @IIN
    WHERE Id = @id;

    SET @id_out = @id;
END;

CREATE PROCEDURE pUsers
    @id INT
AS
BEGIN
    SELECT *
    FROM Users
    WHERE Id = @id OR @id IS NULL;
END;
CREATE PROCEDURE pUsers2
    @id INT OUTPUT,
    @last_name NVARCHAR(255),
    @category_id INT,
    @IIN NVARCHAR(255)
AS
BEGIN
    INSERT INTO Users (last_name, category_id, IIN)
    VALUES (@last_name, @category_id, @IIN);

    SET @id = SCOPE_IDENTITY();
END;