INSERT INTO clients (name, email, birthdate, gender)
VALUES  ('Randal Pyper', 'rpyper0@google.com.br', '2020-07-30', 'M'),
        ('Tina Pethybridge', 'tpethybridge1@free.fr', '2020-08-23', 'F'),
        ('Rori Hellyer', 'rhellyer2@wunderground.com', '2019-11-26', 'F'),
        ('Nathan Stampfer', 'nstampfer3@nifty.com', '2020-05-21', 'M'),
        ('Chrisy Pashbee', 'cpashbee4@howstuffworks.com', '2020-05-31', 'M'),
        ('Paquito Walters', 'pwalters5@google.com.hk', '2020-03-26', 'M'),
        ('Cinderella Epp', 'cepp6@is.gd', '2020-05-07', 'F'),
        ('Laney Matthisson', 'lmatthisson7@godaddy.com', '2020-02-03', 'F'),
        ('Austin Seman', 'aseman8@berkeley.edu', '2020-08-13', 'F'),
        ('Dieter Bellord', 'dbellord9@ft.com', '2020-09-07', 'M');


INSERT INTO clients (name, email, birthdate, gender, active)
VALUES ('Dieter Bellord', 'dbellord9@ft.com', '2020-09-07', 'M', 0)
ON DUPLICATE KEY UPDATE active = VALUES(active);