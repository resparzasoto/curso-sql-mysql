SELECT b.book_id, a.name, a.author_id, b.title
FROM authors AS a
INNER JOIN books AS b
ON (a.author_id = b.author_id)
WHERE a.author_id BETWEEN 1 AND 5;

SELECT c.name, b.title, d.name, a.type
FROM transactions AS a
INNER JOIN books AS b
ON (a.book_id = b.book_id)
INNER JOIN clients AS c
ON (a.client_id = c.client_id)
INNER JOIN authors AS d
ON (b.author_id = d.author_id)
WHERE c.gender = 'M' AND a.type IN ('SELL', 'LEND');