--drop procedure MegaFleetsSignUp;

create PROCEDURE MegaFleetsSignUp
(
    @strUsername	varchar(max),
	@strEmail		varchar(max),
	@strPasscode	varchar(max)
)
AS
BEGIN
	IF( (select count(*) from [HTKB].dbo.Users where Username = @strUsername) = 0)
	BEGIN
		INSERT INTO [HTKB].dbo.Users (
		HTKBAdminLevel, HTKBOnline, Username, Passcode, Email
		) 
		VALUES ( 
		0, 0, @strUsername, @strPasscode, @strEmail 
		);

		--subsequent user records created by triggers		
	END
END