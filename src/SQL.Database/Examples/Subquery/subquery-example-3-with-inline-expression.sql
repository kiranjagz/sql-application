SELECT PurchaseOrderId, TaxAmt,
 (SELECT sum(OrderQty)
  FROM Purchasing.PurchaseOrderDetail AS pod
  WHERE pod.PurchaseOrderID = poh.PurchaseOrderID
  GROUP BY pod.PurchaseOrderID
 ) AS SumOrderQty
FROM Purchasing.PurchaseOrderHeader AS poh
ORDER BY poh.PurchaseOrderID;