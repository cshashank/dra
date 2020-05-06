select 
	P.PieceID,BP.OrderNumber,BP.BatchID,BP.Pin,B.BatchNumber, B.BatchType,B.Location
from 
	pieces P,batchpieces BP,batches B
where
		P.PieceID=BP.PieceID and BP.BatchID=B.BatchID  