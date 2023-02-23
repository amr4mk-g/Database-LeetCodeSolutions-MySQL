SELECT (CASE WHEN MOD(id, 2) != 0 AND n != id THEN id+1
    WHEN MOD(id, 2) != 0 AND n = id THEN id
    ELSE id-1 END) AS id, student
FROM seat, (SELECT COUNT(*) AS n FROM seat) AS n ORDER BY id;
