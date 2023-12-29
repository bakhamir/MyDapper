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