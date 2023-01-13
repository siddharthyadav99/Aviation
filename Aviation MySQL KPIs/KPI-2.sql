use aviation;

SELECT * FROM FLIGHTS LIMIT 10;

############# To show for cancelled flights for each months    
SELECT MONTH,SUM(CANCELLED)
FROM FLIGHTS
WHERE AIRLINE='B6' AND DAY=1
GROUP BY MONTH;    

############# To show total no of Cancelled flights    
SELECT COUNT(*) 
FROM FLIGHTS
WHERE CANCELLED=1 AND AIRLINE='B6' AND DAY=1;    