USE [DB_Agronomi]
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Usuario]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insertar_Usuario]
    @nombre varchar(100),
    @primerApellido varchar(100),
    @segundoApellido varchar(100),
    @correo varchar(200),
    @clave varchar(500),
    @message varchar(500) output,
    @result int output
AS
BEGIN
    SET @result = 0

    -- Verificar si el usuario ya existe en la tabla
    IF NOT EXISTS (SELECT 1 FROM tbl_Usuario WHERE correo = @correo)
    BEGIN
        -- Insertar el nuevo usuario
        INSERT INTO tbl_Usuario (nombre, primerApellido, segundoApellido, correo, clave)
        VALUES (@nombre, @primerApellido, @segundoApellido, @correo, @clave)

        SET @result = 1
        SET @message = 'Usuario insertado correctamente.'
    END
    ELSE
    BEGIN
        -- Indicar que el usuario ya existe
        SET @message = 'El usuario ya existe.'
    END
END
GO
