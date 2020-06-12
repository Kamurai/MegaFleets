--drop PROCEDURE MegaFleetsPullUserList;

create PROCEDURE MegaFleetsPullUserList
AS
BEGIN
	select * 
	from [MegaFleets].dbo.Users M
	JOIN [HTKB].dbo.Users H ON M.HTKBUserIndex = H.HTKBUserIndex;
END