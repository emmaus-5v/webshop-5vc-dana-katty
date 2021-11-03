--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Pink heart phone case', 'Roze telefoonhoesje met hartjes op de achterkant.', '816905633-0', 19.99);
insert into products (name, description, code, price) values ('green heart phone case', 'Groen telefoonhoesje met hartjes op de achterkant.', '077030122-3', 19.99);
insert into products (name, description, code, price) values ('Blue heart phone case', 'blauw telefoonhoesje met hartjes op de achterkant.', '445924201-X', 19.99);
insert into products (name, description, code, price) values ('Purple heart phone case', 'paars telefoonhoesje met hartjes op de achterkant.' , '693155505-7', 19.99);
insert into products (name, description, code, price) values ('Kiss for Corliss, A (Almost a Bride)', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', '686928463-6', 14);
insert into products (name, description, code, price) values ('Velvet Goldmine', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', '492662523-7', 14);

