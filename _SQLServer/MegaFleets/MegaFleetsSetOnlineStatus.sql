--drop PROCEDURE MegaFleetsSetOnlineStatus;

create PROCEDURE MegaFleetsSetOnlineStatus
(
	@intOnline int,
	@strUserName varchar(max)
)
AS
BEGIN
	UPDATE M SET
	MegaFleetsOnline = @intOnline 
	FROM [MegaFleets].dbo.Users M
	JOIN [HTKB].dbo.Users H ON M.HTKBUserIndex = H.HTKBUserIndex
	where Username = @strUserName 
	COLLATE SQL_Latin1_General_CP1_CS_AS
END