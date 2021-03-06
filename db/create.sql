--
-- create my tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255),
  description TEXT,
  code VARCHAR(15),
  price NUMERIC(10, 2),
  type_of_case_id INTEGER,
  merk_id INTEGER
);

DROP TABLE IF EXISTS type_of_case;
CREATE TABLE type_of_case (
  c_id INTEGER PRIMARY KEY AUTOINCREMENT,
  type_of_case_name TEXT
); 

DROP TABLE IF EXISTS merk;
CREATE TABLE merk (
 m_id INTEGER PRIMARY KEY AUTOINCREMENT,
 merknaam TEXT
);

DROP TABLE IF EXISTS type_of_phone;
CREATE TABLE type_of_phone (
  p_id INTEGER PRIMARY KEY AUTOINCREMENT,
  type_of_phone_name TEXT
);

DROP TABLE IF EXISTS product_type;
CREATE TABLE product_type (
 pt_id INTEGER PRIMARY KEY AUTOINCREMENT,
 product_id INTEGER,
 p_id INTEGER
);

DROP TABLE IF EXISTS colour;
CREATE TABLE colour (
 c_id INTEGER PRIMARY KEY AUTOINCREMENT,
 colour_name TEXT
);

DROP TABLE IF EXISTS product_colour;
CREATE TABLE product_colour (
  pc_id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_id INTEGER,
  c_id INTEGER
);



--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Pink heart phone case', 'Roze telefoonhoesje met hartjes op de achterkant.', ' 816905633-0', 19.99, 2, 2);
insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Green heart phone case', 'Groen telefoonhoesje met hartjes op de achterkant.', ' 077030122-3', 19.99, 2, 2);
insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Blue heart phone case', 'Blauw telefoonhoesje met hartjes op de achterkant.', ' 077030122-3', 19.99, 2, 2);
insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Purple heart phone case', 'Paars telefoonhoesje met hartjes op de achterkant.', ' 077030122-3', 19.99, 2, 1);
insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Yellow heart phone case', 'Geel telefoonhoesje met hartjes op de achterkant.', ' 445924201-X', 19.99, 2, 1);
insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Pink flip phone cover', 'Roze telefoonhoesje om neer te zetten.' , ' 693155505-7', 19.99, 1, 1);
insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Green flip phone cover', 'Groen telefoonhoesje om neer te zetten.', ' 686928463-6', 19.99, 1, 3);
insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Blue flip phone cover', 'Blauw telefoonhoesje om neer te zetten.', ' 492662523-7', 14.99, 1, 2);
insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Purple flip phone cover', 'Paars telefoonhoesje om neer te zetten.', ' 123453474-8', 20.99, 1, 1);
insert into products (name, description, code, price, type_of_case_id, merk_id) values ('Yellow flip phone cover.', 'Geel telefoonhoesje om neer te zetten.', ' 123453474-8', 20.99, 1, 2);

insert into type_of_case (type_of_case_name) values (' Flip cover');
insert into type_of_case (type_of_case_name) values (' Sillicon cover');

insert into merk (merknaam) values (' Katty Chanel');
insert into merk (merknaam) values (' Dana Dior');
insert into merk (merknaam) values (' Merkloos');

insert into type_of_phone (type_of_phone_name) values ('Samsung Galaxy A52s');
insert into type_of_phone (type_of_phone_name) values ('Samsung Galaxy S20');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone SE');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone 11');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone 12');
insert into type_of_phone (type_of_phone_name) values ('Apple iPhone 13');
insert into type_of_phone (type_of_phone_name) values ('Xiaomi Poco X3 Pro ');
insert into type_of_phone (type_of_phone_name) values ('Huawei P30');

insert into product_type (product_id, p_id) values (1, 1);
insert into product_type (product_id, p_id) values (1, 2);
insert into product_type (product_id, p_id) values (1, 3);
insert into product_type (product_id, p_id) values (1, 4);
insert into product_type (product_id, p_id) values (1, 5);
insert into product_type (product_id, p_id) values (1, 6);
insert into product_type (product_id, p_id) values (1, 7);
insert into product_type (product_id, p_id) values (1, 8);
insert into product_type (product_id, p_id) values (2, 1);
insert into product_type (product_id, p_id) values (2, 2);
insert into product_type (product_id, p_id) values (2, 3);
insert into product_type (product_id, p_id) values (2, 4);
insert into product_type (product_id, p_id) values (2, 5);
insert into product_type (product_id, p_id) values (2, 6);
insert into product_type (product_id, p_id) values (2, 7);
insert into product_type (product_id, p_id) values (2, 8);
insert into product_type (product_id, p_id) values (3, 4);
insert into product_type (product_id, p_id) values (3, 5);
insert into product_type (product_id, p_id) values (4, 1);
insert into product_type (product_id, p_id) values (4, 8);
insert into product_type (product_id, p_id) values (5, 6);
insert into product_type (product_id, p_id) values (5, 7);
insert into product_type (product_id, p_id) values (5, 8);
insert into product_type (product_id, p_id) values (6, 3);
insert into product_type (product_id, p_id) values (6, 7);
insert into product_type (product_id, p_id) values (7, 5);
insert into product_type (product_id, p_id) values (8, 1);
insert into product_type (product_id, p_id) values (8, 5);
insert into product_type (product_id, p_id) values (8, 6);
insert into product_type (product_id, p_id) values (9, 3);
insert into product_type (product_id, p_id) values (10, 1);
insert into product_type (product_id, p_id) values (10, 2);
insert into product_type (product_id, p_id) values (10, 3);

insert into colour (colour_name) values ('Pink');
insert into colour (colour_name) values ('Green');
insert into colour (colour_name) values ('Blue');
insert into colour (colour_name) values ('Purple');
insert into colour (colour_name) values ('Yellow');

insert into product_colour (product_id, c_id) values (1, 1);
insert into product_colour (product_id, c_id) values (1, 2);
insert into product_colour (product_id, c_id) values (1, 3);
insert into product_colour (product_id, c_id) values (1, 4);
insert into product_colour (product_id, c_id) values (1, 5);
insert into product_colour (product_id, c_id) values (2, 1);
insert into product_colour (product_id, c_id) values (2, 2);
insert into product_colour (product_id, c_id) values (2, 3);
insert into product_colour (product_id, c_id) values (2, 4);
insert into product_colour (product_id, c_id) values (2, 5);
insert into product_colour (product_id, c_id) values (3, 2);
insert into product_colour (product_id, c_id) values (3, 3);
insert into product_colour (product_id, c_id) values (3, 4);
insert into product_colour (product_id, c_id) values (3, 5);
insert into product_colour (product_id, c_id) values (4, 1);
insert into product_colour (product_id, c_id) values (4, 2);
insert into product_colour (product_id, c_id) values (5, 5);
insert into product_colour (product_id, c_id) values (6, 1);
insert into product_colour (product_id, c_id) values (6, 5);
insert into product_colour (product_id, c_id) values (7, 3);
insert into product_colour (product_id, c_id) values (7, 4);
insert into product_colour (product_id, c_id) values (7, 5);
insert into product_colour (product_id, c_id) values (8, 2);
insert into product_colour (product_id, c_id) values (9, 1);
insert into product_colour (product_id, c_id) values (9, 2);
insert into product_colour (product_id, c_id) values (9, 3);
insert into product_colour (product_id, c_id) values (9, 4);
insert into product_colour (product_id, c_id) values (10, 5);



