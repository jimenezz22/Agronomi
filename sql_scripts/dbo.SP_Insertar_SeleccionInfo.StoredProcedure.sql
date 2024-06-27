USE [DB_Agronomi]
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_SeleccionInfo]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Insertar_SeleccionInfo](
    @idTerreno varchar(10),
    @tamanioTerreno float,
    @areaCultivo float,
    @analisisTerreno varchar(100),
    @costoOportunidad int,
    @analisisPatologico varchar(50),
    @ubicacionTerrno varchar(100),
    @idUsuario int,
    @message varchar(500) output,
    @result int output
)
AS
BEGIN
    SET @result = 0

    BEGIN TRY
        IF NOT EXISTS (SELECT * FROM tbl_SeleccionTerreno WHERE idUsuario = @idUsuario AND idTerreno = @idTerreno)
        BEGIN
            INSERT INTO tbl_SeleccionTerreno(idTerreno, tamanioTerreno, areaCultivo, analisisTerreno, costoOportunidad, analisisPatologico, ubicacionTerrno, idUsuario) VALUES
            (@idTerreno, @tamanioTerreno, @areaCultivo, @analisisTerreno, @costoOportunidad, @analisisPatologico, @ubicacionTerrno, @idUsuario)

            SET @result = 1
        END
        ELSE
        BEGIN
            SET @message = 'El registro ya existe'
        END
    END TRY
    BEGIN CATCH
        SET @message = ERROR_MESSAGE()
        SET @result = 0 -- O cualquier otro código de error que desees establecer
    END CATCH
END
GO
