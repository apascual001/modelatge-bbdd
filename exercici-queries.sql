#Exercici 1
SELECT COUNT(*) FROM `Flights`

#Exercici 2
SELECT (`Origin`),AVG (`ArrDelay`),AVG (`DepDelay`) FROM `Flights` GROUP BY `Origin`

#Exercici 3
SELECT (`Origin`),AVG (`ArrDelay`), (`colYear`), (`colMonth`) FROM `Flights` GROUP BY `Origin`

#Exercici 4
SELECT  (`City`), (`colYear`), (`colMonth`) , AVG(`ArrDelay`)
FROM `Flights` INNER JOIN USAirports ON Flights.Origin = USAirports.IATA
GROUP BY `City`

#Exercici 5
SELECT (`UniqueCarrier`), (`colYear`), (`colMonth`) , AVG(`ArrDelay`), SUM(`Cancelled`) 
FROM `Flights` 
GROUP BY `UniqueCarrier` 
ORDER BY SUM(`Cancelled`) DESC;

#Exercici 6
SELECT (`TailNum`), SUM(`Distance`) 
FROM `Flights` 
GROUP BY `UniqueCarrier` 
ORDER BY SUM(`Distance`) DESC
LIMIT 10;

#Exercici 7
SELECT (`UniqueCarrier`), AVG(`ArrDelay`) FROM `Flights` 
WHERE ArrDelay > 10
GROUP BY (`UniqueCarrier`)
