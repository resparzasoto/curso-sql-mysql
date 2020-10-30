-- 1. ¿Qué nacionalidades hay?
SELECT DISTINCT nationality
FROM authors;

-- 2. ¿Cuántos escritores hay de cada nacionalidad?
SELECT nationality, COUNT(author_id) AS authors_for_nationality
FROM authors
GROUP BY nationality
ORDER BY authors_for_nationality DESC;

-- 3. ¿Cuántos libros hay de cada nacionalidad?
SELECT nationality, COUNT(book_id) AS books_for_nationality
FROM authors AS a
INNER JOIN books AS b
ON (a.author_id = b.author_id)
GROUP BY nationality
ORDER BY books_for_nationality DESC;

-- 4. ¿Cuál es el promedio/desviación standard del precio de libros?
SELECT AVG(price) AS average
FROM books;

SELECT STDDEV(price) AS standard_destivation
FROM books;
-- 5. Idem, por nacionalidad

-- 6. ¿Cuál es el precio máximo/mínimo de un libro?
SELECT MAX(price) AS max_price
FROM books;

SELECT MIN(price) AS min_price
FROM books;

-- 7. ¿Cómo quedaría el reporte de prestamos?
SELECT c.name, t.type, b.title
    CONCAT(a.name, " (", a.nationality, ")") AS autor,
    TO_DAYS(NOW()) - TO_DAYS(t.created_at) AS ago
FROM transactions AS t
LEFT JOIN clients AS c
    ON c.client_id = t.client_id
LEFT JOIN books AS b
    ON b.book_id = t.book_id
LEFT JOIN authors AS a
    ON b.author_id = a.author_id