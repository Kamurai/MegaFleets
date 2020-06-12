--drop PROCEDURE MegaFleetsPullUserCounts;

create PROCEDURE MegaFleetsPullUserCounts
AS
BEGIN
	select count(MegaFleetsAdminLevel) as retNum from [MegaFleets].dbo.Users where MegaFleetsAdminLevel = 0
    UNION all
    select count(MegaFleetsAdminLevel)	from [MegaFleets].dbo.Users where MegaFleetsAdminLevel = 1
    UNION all
    select count(MegaFleetsAdminLevel)	from [MegaFleets].dbo.Users where MegaFleetsAdminLevel = 2
    UNION all
    select count(MegaFleetsAdminLevel)	from [MegaFleets].dbo.Users where MegaFleetsAdminLevel = 3
    UNION all
    select count(MegaFleetsOnline)		from [MegaFleets].dbo.Users where MegaFleetsOnline = 1;
END