SELECT 
D.DEPARTMENT,
CASE 
	WHEN P.GENDER='E' THEN 'Erkek'
	WHEN P.GENDER='K' THEN 'Kadın'
END AS GENDER
,COUNT(P.ID) AS PERSONCOUNT
FROM PERSON P
INNER JOIN DEPARTMENT D ON D.ID = P.DEPARTMENTID

WHERE P.OUTDATE IS NULL 

GROUP BY D.DEPARTMENT,GENDER
ORDER BY 1,2