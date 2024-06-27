USE [DB_Agronomi]
GO
/****** Object:  StoredProcedure [dbo].[SumarCostosPorIdTerreno]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SumarCostosPorIdTerreno]
    @idTerreno varchar(10),
	@idUsuario INT
AS
BEGIN
    DECLARE @totalCosto INT;

    -- Inicializar el totalCosto
    SET @totalCosto = 0;

    -- Sumar los valores de tbl_Aporca
    SELECT @totalCosto = @totalCosto + ISNULL(resultadoAporca, 0) 
    FROM tbl_Aporca
    WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario;

    -- Sumar los valores de tbl_Bactericidas
    SELECT @totalCosto = @totalCosto + ISNULL(costoPorAplicacion, 0) 
    FROM tbl_Bactericidas
    WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario;

    -- Sumar los valores de tbl_Fungicidas
    SELECT @totalCosto = @totalCosto + ISNULL(costoPorAplicacion, 0) 
    FROM tbl_Fungicidas
    WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario;

    -- Sumar los valores de tbl_Insecticidas
    SELECT @totalCosto = @totalCosto + ISNULL(costoPorAplicacion, 0) 
    FROM tbl_Insecticidas
    WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario;

	-- Sumar los valores de tbl_Nematicidas
    SELECT @totalCosto = @totalCosto + ISNULL(costoPorAplicacion, 0) 
    FROM tbl_Nematicidas
    WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario;

	-- Sumar los valores de tbl_Estimulador
    SELECT @totalCosto = @totalCosto + ISNULL(costoPorAplicacion, 0) 
    FROM tbl_EstimuladorCrecimiento
    WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario;

	-- Sumar los valores de tbl_Quema
    SELECT @totalCosto = @totalCosto + ISNULL(costoPorAplicacion, 0) 
    FROM tbl_Quema
    WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario;

	-- Sumar los valores de tbl_CombateMalezas
    SELECT @totalCosto = @totalCosto + ISNULL(costoPorAplicacion, 0) 
    FROM tbl_CombateMalezas
    WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario;

    -- Retornar el totalCosto
    SELECT @totalCosto AS TotalCosto;
END
GO
