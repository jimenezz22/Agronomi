USE [DB_Agronomi]
GO
/****** Object:  StoredProcedure [dbo].[ConsultarAreaCultivo]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultarAreaCultivo]
    @idTerreno VARCHAR(50),
    @idUsuario INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @areaCultivo int;

    -- Consultar el área de cultivo
    SELECT @areaCultivo = areaCultivo
    FROM tbl_SeleccionTerreno
    WHERE idTerreno = @idTerreno
    AND idUsuario = @idUsuario;

    -- Retornar el área de cultivo
    SELECT @areaCultivo AS areaCultivo;
END
GO
