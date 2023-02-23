SELECT a.id FROM Weather AS a 
JOIN Weather AS b ON DATEDIFF(a.recordDate, b.recordDate) = 1
AND a.temperature > b.temperature;
