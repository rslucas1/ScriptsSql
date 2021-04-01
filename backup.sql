DECLARE @StrListaBancos VARCHAR(256),
		@NomeBackupCompleto VARCHAR(256),
		@NomeBackupDiferencial VARCHAR(256),
		@StrDataHora VARCHAR(20),
		@StrNomeBD VARCHAR(256),
		@StrDiretorio VARCHAR(520),
		@StrBackupCompletoName VARCHAR(256),
		@StrBackupCompletoDescription VARCHAR(510),
		@StrBackupDiferencialName VARCHAR(256),
		@StrBackupDiferencialDescription VARCHAR(510),
		@StrComando NVARCHAR(max),
		@Filename VARCHAR(50)


--INFORME O NOME DOS BANCOS SEPARADOS POR VÍRGULA
SET @StrListaBancos = 'WMS'

--INFORME O DIRETORIO DO BACKUP
SET @StrDiretorio = 'D:\MSSQLBAC\'

DECLARE @output TABLE(splitdata NVARCHAR(MAX))
DECLARE @start INT, 
		@end INT,
		@delimiter CHAR(1)

SET @delimiter = ','

	SELECT @start = 1, @end = CHARINDEX(@delimiter, @StrListaBancos)
	WHILE @start < LEN(@StrListaBancos) + 1
	BEGIN
		IF @end = 0
		    SET @end = LEN(@StrListaBancos) + 1

		INSERT INTO @output (splitdata)
		VALUES(SUBSTRING(@StrListaBancos, @start, @end - @start))
		SET @start = @end + 1
		SET @end = CHARINDEX(@delimiter, @StrListaBancos, @start)
	END


DECLARE BancosCursor CURSOR
FOR	
	SELECT  
		LTRIM(RTRIM(splitdata))
	FROM  
		@output

OPEN BancosCursor

FETCH NEXT FROM BancosCursor INTO @StrNomeBD
WHILE (@@fetch_status <> -1)
BEGIN
	IF (@@fetch_status <> -2) AND EXISTS (SELECT 1 FROM sys.sysdatabases WHERE name = @StrNomeBD ) AND DATABASEPROPERTYEX ( @StrNomeBD , 'status' ) = 'ONLINE'
	BEGIN
	
		SET @StrBackupCompletoName = 'BKP ' + @StrNomeBD + ' Full'
		SET @StrBackupCompletoDescription = 'BKP ' + @StrNomeBD + ' Full'
		SET @StrBackupDiferencialName = 'BKP ' + @StrNomeBD + ' Diferencial'
		SET @StrBackupDiferencialDescription = 'BKP ' + @StrNomeBD + ' Diferencial'
		SET @StrDataHora = CONVERT(NVARCHAR(20),GETDATE(),112)
		SET @NomeBackupCompleto = @StrDiretorio + @StrNomeBD + '_Completo.bak'

		BACKUP DATABASE @StrNomeBD TO  DISK = @NomeBackupCompleto WITH  INIT ,  NOUNLOAD ,FORMAT,  NAME = @StrBackupCompletoName,  SKIP , COMPRESSION,  DESCRIPTION = @StrBackupCompletoDescription 

		SET @NomeBackupDiferencial = @StrDiretorio + @StrNomeBD + '_Diferencial.bak'
		--BACKUP DATABASE @StrNomeBD TO  DISK = @NomeBackupDiferencial WITH  DIFFERENTIAL ,  DESCRIPTION = @StrBackupDiferencialName, FORMAT, INIT,  NAME = @StrBackupDiferencialDescription, SKIP, NOREWIND, NOUNLOAD

		--Shrink do arquivo de log
		SELECT @filename = name
		FROM 
			sys.master_files
		WHERE database_id = DB_ID(@StrNomeBD)
		AND type = 1

		SELECT @StrComando = 'use '+ @StrNomeBD +';'+ '
		DBCC SHRINKFILE (N'''+ @filename + ''' , 50) WITH NO_INFOMSGS'	

		EXECUTE Sp_executesql @StrComando

	END

	FETCH NEXT FROM BancosCursor INTO @StrNomeBD
END
DEALLOCATE BancosCursor