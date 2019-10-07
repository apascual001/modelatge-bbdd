#Exercici 1
SELECT COUNT(*) FROM `Flights`

#Exercici 2
SELECT (`Origin`),AVG (`ArrDelay`),AVG (`DepDelay`) FROM `Flights` GROUP BY `Origin`

#Exercici 3
SELECT Origin,colYear,colMonth,AVG(ArrDelay) 
FROM Flights 
GROUP BY Origin,colYear,colMonth
ORDER BY Origin,colYear,colMonth ,AVG(ArrDelay)

#Exercici 4
SELECT City,colYear,colMonth,AVG(ArrDelay) 
FROM Flights INNER JOIN USAirports ON Flights.Origin = USAirports.IATA
GROUP BY City,colYear,colMonth
ORDER BY City,colYear,colMonth,AVG(ArrDelay)DESC

#Exercici 5
SELECT UniqueCarrier, colYear, colMonth , AVG(ArrDelay), SUM(Cancelled) 
FROM Flights 
GROUP BY UniqueCarrier, colYear,colMonth 
ORDER BY SUM(Cancelled) DESC, UniqueCarrier, colYear,colMonth 

#Exercici 6
SELECT TailNum, SUM(Distance) as totaldistance
FROM Flights 
GROUP BY TailNum 
ORDER BY totaldistance DESC
LIMIT 10;

#Exercici 7
SELECT UniqueCarrier, AVG(ArrDelay) as avg_delay FROM Flights 
GROUP BY UniqueCarrier
HAVING avg_delay > 10
ORDER BY AVG(ArrDelay) DESC,UniqueCarrier
