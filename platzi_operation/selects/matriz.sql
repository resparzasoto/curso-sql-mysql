SELECT nationality, COUNT(book_id),
    SUM(IF(year < 1950, 1, 0)) AS `<1950`,
    SUM(IF(year >= 1950 AND year < 1990, 1, 0)) AS `<1990`,
    SUM(IF(year >= 1900 AND year < 2000, 1, 0)) AS `<2000`,
    SUM(IF(year >= 2000, 1, 0)) AS `hoy`
FROM books AS b
INNER JOIN authors AS a
    ON (b.author_id = a.author_id);
WHERE
    a.nationality IS NOT NULL
GROUP BY nationality;
