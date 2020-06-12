--drop procedure MegaFleetsUpdateUser;

create PROCEDURE MegaFleetsUpdateUser
(
    @userName varChar(max),
    @adminLevel varChar(1)
)
AS
BEGIN
	UPDATE [MegaFleets].dbo.Users SET
	MegaFleetsAdminLevel = @AdminLevel 
	FROM [MegaFleets].dbo.Users M
	JOIN [HTKB].dbo.Users H ON M.HTKBUserIndex = H.HTKBUserIndex
	where Username = @userName 
	COLLATE SQL_Latin1_General_CP1_CS_AS;
END