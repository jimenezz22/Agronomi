USE [DB_Agronomi]
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Labranza]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insertar_Labranza]
    @costoPorArado int,
    @costoPorEnmindas int,
    @costoPorTrazado int,
    @costoPorCamas int,
    @costoPorMurillo int,
    @costoPorRastra int,
	@resultadoLabranza float,
    @idTerreno varchar(10),
    @idUsuario int,
    @message varchar(500) output,
    @result int output
AS
BEGIN TRY
    SET @result = 0

    IF NOT EXISTS (SELECT * FROM tbl_Labranza WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario)
    BEGIN
        IF EXISTS (SELECT * FROM tbl_SeleccionTerreno WHERE idUsuario = @idUsuario AND idTerreno = @idTerreno)
        BEGIN
            INSERT INTO tbl_Labranza (costoPorArado, costoPorEnmindas, costoPorTrazado, costoPorCamas, costoPorMurillo, costoPorRastra, resultadoLabranza, idTerreno, idUsuario)
            VALUES (@costoPorArado, @costoPorEnmindas, @costoPorTrazado, @costoPorCamas, @costoPorMurillo, @costoPorRastra, @resultadoLabranza, @idTerreno, @idUsuario)

            SET @result = 1
        END
        ELSE
		BEGIN
            SET @message = 'El terreno especificado no existe en Selección del Terreno.'
		END
    END
    ELSE
	BEGIN
        SET @message = 'El terreno especificado ya ha sido registrado en Labranza.'
	END
END TRY
BEGIN CATCH
    SET @message = ERROR_MESSAGE();
END CATCH
GO
