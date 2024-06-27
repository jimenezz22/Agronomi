USE [DB_Agronomi]
GO
/****** Object:  StoredProcedure [dbo].[ObtenerCostosTratamientoSiembraLabranza]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ObtenerCostosTratamientoSiembraLabranza]
    @idTerreno VARCHAR(50),
    @idUsuario INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @costoActividad INT;
    DECLARE @resultadoLabranza INT;
    DECLARE @resultadoSiembra INT;

    -- Obtener costoActividad de tbl_TratamientoHierbas
    SELECT @costoActividad = costoActividad
    FROM tbl_TratamientoHierbas
    WHERE idTerreno = @idTerreno
    AND idUsuario = @idUsuario;

    -- Obtener resultadoLabranza de tbl_Labranza
    SELECT @resultadoLabranza = resultadoLabranza
    FROM tbl_Labranza
    WHERE idTerreno = @idTerreno
    AND idUsuario = @idUsuario;

    -- Obtener resultadoSiembra de tbl_Siembra
    SELECT @resultadoSiembra = resultadoSiembra
    FROM tbl_Siembra
    WHERE idTerreno = @idTerreno
    AND idUsuario = @idUsuario;

    -- Retornar los resultados
    SELECT @costoActividad AS costoActividad, @resultadoLabranza AS resultadoLabranza, @resultadoSiembra AS resultadoSiembra;
END
GO
