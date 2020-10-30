SELECT a.author_id, a.name, a.nationality, b.title
FROM authors AS a
INNER JOIN books AS b
ON (a.author_id = b.author_id)
WHERE a.author_id BETWEEN 1 AND 5
ORDER BY a.author_id DESC;

SELECT a.author_id, a.name, a.nationality, b.title
FROM authors AS a
LEFT JOIN books AS b
ON (a.author_id = b.author_id)
WHERE a.author_id BETWEEN 1 AND 5
ORDER BY a.author_id ASC;

SELECT a.author_id, a.name, a.nationality, COUNT(b.book_id) AS books
FROM authors AS a
LEFT JOIN books AS b
ON (a.author_id = b.author_id)
WHERE a.author_id BETWEEN 1 AND 5
GROUP BY a.author_id
ORDER BY a.author_id ASC;