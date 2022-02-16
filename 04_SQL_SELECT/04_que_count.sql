  /*  -- Welche VERSCHIEDENEN Sektoren gibt es?

SELECT
DISTINCT sector Industriesektoren
FROM stocks.ccc
ORDER BY sector ASC
;
-- Wieviele VERSCHIEDENEN Sektoren gibt es?
SELECT
count(DISTINCT sector)  "Anzahl Industriesektoren"
FROM stocks.ccc;

-- Welche VERSCHIEDENEN Branchen ?

SELECT
DISTINCT industry Branchen
FROM stocks.ccc
ORDER BY Branchen ASC
;
-- Wieviele VERSCHIEDENEN Branchen ?
SELECT
count(DISTINCT industry) "Anzahl Branchen"
FROM stocks.ccc
;*/
-- Wieviele VERSCHIEDENEN Branchen  in den jeweiligen Industriesektoren ?
SELECT
    sector Industriesektoren, -- nicht aggregiert / organisch
    count(DISTINCT industry) AS Branchen -- aggregiert / durch eine Fkt. entstanden
FROM stocks.ccc
WHERE sector LIKE "Co%" -- Filter in NICHT aggr.(organischen) Feldern
GROUP BY sector -- bei Kombination organisch /aggr.
HAVING Branchen > 10 -- Filter in aggr. Felder / nach GROUP
ORDER BY Branchen DESC
;
