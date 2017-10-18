SELECT DepositGroup, MAX(MagicWandSize) AS LongestMagicWandByDeposit FROM WizzardDeposits 
GROUP BY DepositGroup`