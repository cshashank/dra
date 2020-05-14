create view geo_view as
select 
	"USA" Country,LD.City,LD.Area State,LD.Description Depot,A.Description Account,LST.label ShipmentStatus,LSMA.Description ShipMethodActualDesc,P.ShipDate,P.ClearanceStatusType,
    LSMO.Description ShipMethodOrgDesc,P.ShipMethodOriginal ShipMethodOrgCode,
    P.CartonCount,P.PieceCount 
from pieces P,accounts A ,lookupdepot LD, lookupstatustypes LST, lookupshipmethods LSMA,lookupshipmethods LSMO
where P.AccountID=A.accountId 
and P.AssignedDepotCode=LD.Code
and P.StatusType=LST.StatusType
and P.ShipMethodActual=LSMA.ShipMethodType
and P.ShipMethodOriginal=LSMO.ShipMethodType