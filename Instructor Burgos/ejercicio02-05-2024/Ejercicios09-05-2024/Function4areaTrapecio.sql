use bancos; 
DELIMITER $$
CREATE FUNCTION Area_trapecio (altura float, baseMayor float, baseMenor float)
returns float
BEGIN
DECLARE areaTrapecio float;
set areaTrapecio= altura *(baseMayor+baseMenor)/2;
return areaTrapecio;
END $$
DELIMITER ;
SELECT Area_trapecio (30,50,10) AS areaTrapecio;