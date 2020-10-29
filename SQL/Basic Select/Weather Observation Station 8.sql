-- github.com/RodneyShag

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[aeiou].*[aeiou]$';

-- this would be the correct changes, the solution ^ doesn't work with oracle. techinally it was close but they wanted the answer to be more detailed --
SELECT DISTINCT CITY FROM STATION WHERE REGEXP_LIKE(LOWER(CITY), '^[aeiou]') intersect
SELECT DISTINCT CITY FROM STATION WHERE REGEXP_LIKE(LOWER(CITY), '[aeiou]$');
