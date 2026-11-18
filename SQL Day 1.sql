--The Case of ITC--
--Create the data table for DISTRIBUTORS to supply products across diff cities and regions--
--id name city region phone--
CREATE TABLE distributors (
  distributor_id INTEGER PRIMARY KEY, 
  name	TEXT NOT NULL,                        
  city TEXT, 
  region TEXT, 
  phone TEXT
);

--Dropping table for distributors--
DROP TABLE distributors;


--Create a table name products with the column,product_id,product_name,brand,category,price,stock. Product id should be integer-unique, name text not null unique , 
--brand text, category text not null, price real value >0, stock whole number, if missing then 0

CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL UNIQUE,
  brand TEXT,
  category TEXT NOT NULL,
  price REAL CHECK(price>0),
  stock INTEGER DEFAULT 0
);

DROP TABLE products;

--Create a table name sales containing sale_id unique, product_id, distributor_id, sale_date text, quantity integer >0,amount 
-- foreign id

CREATE TABLE sales (
  sale_id INTEGER PRIMARY KEY,
  product_id INTEGER,
  distributor_id INTEGER,
  sale_date TEXT,
  quantity INTEGER CHECK(quantity>0),
  amount REAL,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (distributor_id) REFERENCES distributors(distributor_id)
);  

--Checking the column of all the three tables 
PRAGMA	table_info(distributors);
PRAGMA	table_info(products);
PRAGMA	table_info(sales);

--Inserting the data according to variables

INSERT INTO products VALUES (1, 'Aashirvaad Atta 5kg', 'Aashirvaad', 'Staples', 265, 120);
INSERT INTO products VALUES (2, 'Aashirvaad Salt', 'Aashirvaad', 'Staples', 28, 300);
INSERT INTO products VALUES (3, 'Sunfeast Dark Fantasy', 'Sunfeast', 'Biscuits', 40, 500);
INSERT INTO products VALUES (4, 'Sunfeast Marie Light', 'Sunfeast', 'Biscuits', 30, 450);
INSERT INTO products VALUES (5, 'Bingo Mad Angles', 'Bingo', 'Snacks', 20, 600);
INSERT INTO products VALUES (6, 'Bingo Tedhe Medhe', 'Bingo', 'Snacks', 10, 800);
INSERT INTO products VALUES (7, 'Yippee Noodles', 'Yippee', 'Noodles', 14, 700);
INSERT INTO products VALUES (8, 'Classmate Notebook', 'Classmate', 'Stationery', 55, 400);
INSERT INTO products VALUES (9, 'Fabelle Chocolate', 'Fabelle', 'Chocolates', 180, 90);
INSERT INTO products VALUES (10, 'Fiama Soap', 'Fiama', 'Personal Care', 70, 250);
INSERT INTO products VALUES (11, 'Vivel Soap', 'Vivel', 'Personal Care', 45, 0);
INSERT INTO products VALUES (12, 'Mangaldeep Agarbatti', 'Mangaldeep', 'Home Care', 60, 150);




