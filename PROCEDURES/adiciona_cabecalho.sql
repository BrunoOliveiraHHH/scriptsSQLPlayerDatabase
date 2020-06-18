CREATE PROCEDURE adiciona_cabecalho
    @ptsExp INT

AS

BEGIN
    DECLARE @nivel INT;

    IF(@ptsExp >= 300)
        SET @nivel = 1;
    ELSE
        SET @nivel = 0;


    INSERT INTO [dbo].[tb_dados_cabecalho]
        ([id_personagem]
        ,[nome_personagem]
        ,[classe]
        ,[raca]
        ,[tendencia]
        ,[jogador]
        ,[nivel]
        ,[ptsEXP])
    VALUES
        (1
           , 'Luna Sanguini'
           , 1
           , 1
           , 1
           , 1
           , @nivel
           , @ptsExp);
END;
GO