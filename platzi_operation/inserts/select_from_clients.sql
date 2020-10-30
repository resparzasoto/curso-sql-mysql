SELECT name, email, YEAR(NOW()) - YEAR(birthdate) AS edad, gender
FROM clients
WHERE gender = 'F'
    AND name LIKE '%Lop%';