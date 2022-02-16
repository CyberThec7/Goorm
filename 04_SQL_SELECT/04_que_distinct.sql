/* QUERIES - DISTINCT 
-- alle Sektoren 
SELECT
sector
FROM stocks.ccc
#ORDER BY sector ASC// wenn wir die machen alles wird nicht klar ???
LIMIT 50
;*/
-- nur das erste Auftreten von Sektoren
-- welche VERSCHIEDENE Sektoren gibt es?
/*SELECT
    DISTINCT sector Industriesektoren 
FROM stocks.ccc
ORDER BY sector ASC /

LIMIT 50
;
SELECT
    DISTINCT industry Branchen 
FROM stocks.ccc
ORDER BY industry DESC
LIMIT 50
;*/
-- welche VERSCHIEDENEN Auszahlungs-Rhythmen gibt es?

SELECT
DISTINCT payouts "Auszahlungen p.a."
FROM stocks.ccc
ORDER BY payouts ASC;

SELECT 
    industry Branche,
    c_name Unternehmen,
    ticker "DOW-SYMBOL"
    FROM stocks.ccc
    WHERE payouts = 12
ORDER BY Branche ASC;




    