--drop PROCEDURE MegaFleetsGetValidUser;

create PROCEDURE MegaFleetsGetValidUser
(
	@strUserName varchar(max),
	@strPasscode varchar(max)
)
AS
BEGIN
	--if user does exists in HTKB User Table
	if( (select count(*) from [HTKB].dbo.Users where Username = @strUsername) >= 1 )
	BEGIN
		--if user does not exist in MegaFleets User table
		if(
			(
				select count(*)
				from [HTKB].dbo.Users H
				JOIN [MegaFleets].dbo.Users M ON H.HTKBUserIndex = M.HTKBUserIndex
				where Username = @strUsername
			) < 1
		)
		BEGIN
			--get HTKBUserIndex
			DECLARE @HTKBUserIndex int = (
				select TOP 1 HTKBUserIndex 
				from [HTKB].dbo.Users 
				where Username = @strUsername
			);

			INSERT INTO [MegaFleets].dbo.Users (HTKBUserIndex, MegaFleetsAdminLevel, MegaFleetsOnline) 
			VALUES (@HTKBUserIndex, 0, 0);
		END
	END
		
	select TOP 1 * 
	from [HTKB].dbo.Users H
	JOIN [MegaFleets].dbo.Users M ON H.HTKBUserIndex = M.HTKBUserIndex
	where Username = @strUserName COLLATE SQL_Latin1_General_CP1_CS_AS and Passcode = @strPasscode COLLATE SQL_Latin1_General_CP1_CS_AS;
END