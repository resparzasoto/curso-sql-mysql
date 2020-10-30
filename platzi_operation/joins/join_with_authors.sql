SELECT b.book_id, a.name, a.author_id, b.title
FROM authors AS a
INNER JOIN books AS b
ON (a.author_id = b.author_id)
WHERE a.author_id BETWEEN 1 AND 5;