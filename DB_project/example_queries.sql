--12.1 ENUNT: Afisati pentru fiecare client numele, prenumele dar si valoarea maxima a unei comenzi 
--Satisafce cerinta a)

 
SELECT  
	cl.nume_client,  
	cl.prenume_client,  
	( SELECT MAX(p.pret_produs * con.cantitate_comandata)  
	FROM comanda co  
	JOIN contine con ON co.ID_comanda = con.ID_comanda  
	JOIN produs p ON con.ID_produs = p.ID_produs  
	WHERE co.ID_client = cl.ID_client ) AS val_max_comanda  
FROM CLIENT cl; 

 

--Subcererea corelata din clauza SELECT sincronizeaz? tabelul CLIENT (din afara subcererii, notat ca cl) cu valorile selectate din subcererea care utilizeaz? tabelele COMANDA, CONTINE ?i PRODUS.  




--12.2 ENUNT: Selecteaza produsele cu denumire mai lunga de 8 caractere 
--Satisface cerinta b)



SELECT  
	aux.nume_produs,  
	aux.lungime  
FROM ( 	 
	SELECT nume_produs, LENGTH(nume_produs) AS lungime  
	FROM produs )aux  
WHERE aux.lungime > 8; 

--Subcererea nesincronizat? este realizat? în clauza FROM + functie prelucrare siruri de caractere LENGTH : E) 




--12.3 ENUNT:S? se afi?eze ID-ul clientului, num?rul total de comenzi plasate în anul 2024 ?i suma total? a comenzilor acestuia. Se vor afi?a doar clien?ii care au plasat mai mult de o comanda ?i a c?ror sum? total? a comenzilor este mai mare decât media sumelor comenzilor tuturor clien?ilor din anul 2024. 
--Satisface cerinta c)

SELECT  
    c.ID_client,  
    COUNT(co.ID_comanda) AS numar_comenzi,  
    SUM(cont.cantitate_comandata * p.pret_produs) AS suma_totala_comenzi 
FROM CLIENT c 
JOIN COMANDA co ON c.ID_client = co.ID_client 
JOIN CONTINE cont ON co.ID_comanda = cont.ID_comanda 
JOIN PRODUS p ON cont.ID_produs = p.ID_produs 
WHERE  
    EXTRACT(YEAR FROM co.data_comanda) = 2024 
GROUP BY c.ID_client 
HAVING  
    COUNT(co.ID_comanda) > 1  
    AND SUM(cont.cantitate_comandata * p.pret_produs) > ( 
        SELECT AVG(sub_cont.cantitate_comandata * sub_p.pret_produs) 
        FROM COMANDA sub_co 
        JOIN CONTINE sub_cont ON sub_co.ID_comanda = sub_cont.ID_comanda 
        JOIN PRODUS sub_p ON sub_cont.ID_produs = sub_p.ID_produs 
        WHERE EXTRACT(YEAR FROM sub_co.data_comanda) = 2024 
    ); 

--Func?ii de grup utilizate: COUNT, SUM, AVG. 
--Grup?ri de date: GROUP BY c.ID_client. 
--Filtrare la nivel de grupuri: Realizat? prin clauza HAVING, care folose?te subcererea nesincronizat? pentru calcularea mediei sumelor comenzilor.




--12.4 ENUNT: S? se afi?eze ID-ul produsului, numele produsului, numele categoriei din care face parte fiecare produs, cantitatea disponibil? din stoc (înlocuind valorile NULL cu 0), ?i un mesaj care indic? dac? produsul este "Stoc disponibil" sau "Stoc epuizat". Rezultatele vor fi ordonate descresc?tor dup? cantitatea disponibil?. 
--Satisface cerinta d)
 
SELECT  
    p.ID_produs,  
    p.nume_produs,  
    c.nume_categorie,  
    NVL(p.cantitate_disponibila, 0) AS cantitate_disponibila,  
    DECODE(NVL(p.cantitate_disponibila, 0), 0, 'Stoc epuizat', 'Stoc disponibil') AS mesaj_stoc 
FROM PRODUS p 
LEFT JOIN CATEGORIE c ON p.ID_categorie = c.ID_categorie 
ORDER BY NVL(p.cantitate_disponibila, 0) DESC;




--12.5 ENUNT: S? se afiseze numele produsului transformat în majuscule, lungimea numelui produsului, cantitatea comandat? ?i un mesaj "Cantitate mare" sau "Cantitate mic?" în func?ie de valoarea cantit??ii comandate (mai mare sau egal? cu 20 sau mai mic? de 20) pentru comenzile din anul 2024. De asemenea, s? se afiseze ultima zi a lunii din care face parte data comenzii ?i s? fie utilizat un bloc de cerere WITH. 
---Satisface cerintele e) si f)

WITH Produs_Comenzi_2024 AS (  
    SELECT   
        p.ID_produs,   
        p.nume_produs,   
        c.cantitate_comandata,   
        co.data_comanda  
    FROM CONTINE c  
    JOIN PRODUS p ON c.ID_produs = p.ID_produs  
    JOIN COMANDA co ON c.ID_comanda = co.ID_comanda  
    WHERE EXTRACT(YEAR FROM co.data_comanda) = 2024  
)  
SELECT   
    UPPER(pc.nume_produs) AS nume_produs,                       
    LENGTH(UPPER(pc.nume_produs)) AS lungime_nume_produs,       
    pc.cantitate_comandata AS cantitate_comandata,               
    CASE   
        WHEN pc.cantitate_comandata >= 20 THEN 'Cantitate mare'   
        ELSE 'Cantitate mica'   
    END AS mesaj_cantitate,                                    
    LAST_DAY(pc.data_comanda) AS ultima_zi_luna,                
    TO_CHAR(pc.data_comanda, 'Day, DD Month YYYY') AS detalii_comanda  
FROM Produs_Comenzi_2024 pc  
ORDER BY pc.nume_produs ASC; 

 
--Func?ii pe ?iruri de caractere: UPPER pentru transformarea numelui produsului în majuscule; LENGTH pentru a calcula lungimea numelui produsului 
--Func?ii pe date calendaristice: LAST_DAY pentru a afi?a ultima zi a lunii din data comenzii; TO_CHAR 
--Expresie CASE: utilizat? pentru a genera un mesaj despre cantitatea comandat? (mare sau mic?) în func?ie de valoarea acesteia 
--Bloc WITH: blocul de cerere WITH este utilizat pentru a organiza ?i simplifica selec?ia datelor înainte de a le prelucra ?i afi?a în cererea principal?. 




--13.1 
--?terge toate înregistr?rile din tabela ADUGA care au o dat? de ad?ugare mai recent? decât 
--anul în care a fost ad?ugat? prima dat? o înregistrare în tabela ADAUGA."

DELETE FROM ADAUGA
WHERE EXTRACT(YEAR FROM data_adaugare) > (
    SELECT EXTRACT(YEAR FROM MIN(data_adaugare))
    FROM ADAUGA
);

--13.2 --Sa se mareasca pretul produselor cu 10% a caror denumire se termina cu litera 'n' 

UPDATE PRODUS 
SET pret_produs = pret_produs * 1.1 
WHERE ID_produs IN ( 
    SELECT ID_produs 
    FROM PRODUS 
    WHERE LOWER(nume_produs) LIKE '%n' 
); 

--select * from produs 

--13.3 --Sa se actualizeze numele ora?ului în 'LA' pentru toate m?rcile care au sediul în Los Angeles. 

UPDATE MARCA 
SET sediu_marca = 'LA' 
WHERE ID_marca IN ( 
    SELECT ID_marca 
    FROM MARCA 
    WHERE LOWER(sediu_marca) = 'los angeles' 
); 

 
