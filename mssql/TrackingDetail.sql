select 
	A.Description Account,P.OrderNumber,P.PieceID,P.StatusType,P.StatusDate, LST.label ShipmentStatus, P.AssignedDepotCode,
    LSMA.Description ShipMethodActualDesc,P.ShipMethodActual ,P.ShipDate,P.ExpectedDeliveryDate,P.StatusDepotCode,P.ClearanceStatusType,
    LSMO.Description ShipMethodOrgDesc,P.ShipMethodOriginal ShipMethodOrg,
    P.CartonCount,P.PieceCount, LD.Description Depot
from pieces P,accounts A ,lookupdepot LD, lookupstatustypes LST, lookupshipmethods LSMA,lookupshipmethods LSMO
where P.AccountID=A.accountId 
and P.AssignedDepotCode=LD.Code
and P.StatusType=LST.StatusType
and P.ShipMethodActual=LSMA.ShipMethodType
and P.ShipMethodOriginal=LSMO.ShipMethodType