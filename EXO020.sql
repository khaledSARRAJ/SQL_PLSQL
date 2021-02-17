SELECT M.NODEPT, M.MOYENNE, E.NOM, E.SALAIRE  
 FROM EMP E, (SELECT NODEPT, AVG(SALAIRE) MOYENNE FROM EMP                 GROUP BY NODEPT) M  
WHERE E.NODEPT = M.NODEPT    AND E.SALAIRE < M.MOYENNE  ;