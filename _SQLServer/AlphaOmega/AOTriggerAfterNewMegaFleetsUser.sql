--No trigger is currently needed after a MegaFleetsUser is created
--Possible on game creation

--DROP TRIGGER AfterNewMegaFleetsUser

CREATE TRIGGER AfterNewMegaFleetsUser
ON [MegaFleets].dbo.Users
AFTER Insert
AS
	--MegaFleets
	INSERT INTO [MegaFleets].dbo.Boxes (
		MegaFleetsUserIndex, Direction, Label, ParentBoxIndex, OrderRank
	) 
	VALUES (
	(SELECT TOP 1 inserted.MegaFleetsUserIndex FROM inserted), 'Horizontal', '', -1, 0);
	
GO