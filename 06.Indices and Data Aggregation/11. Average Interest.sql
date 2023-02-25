SELECT DepositGroup,IsDepositExpired,AVG(DepositInterest)
   FROM WizzardDeposits
   WHERE DepositStartDate > '01/01/1985'
   GROUP BY DepositGroup,IsDepositExpired
   ORDER BY DepositGroup DESC,IsDepositExpired ASC
   