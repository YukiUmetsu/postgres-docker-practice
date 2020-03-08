CREATE TABLE make (
	make_id INTEGER PRIMARY KEY,
	make_name TEXT NOT NULL
);

CREATE TABLE model (
	model_id INTEGER PRIMARY KEY,
	make_id INTEGER NOT NULL,
	model_name TEXT NOT NULL,
	FOREIGN KEY (make_id) REFERENCES make (make_id)
);

CREATE TABLE car (
	car_id INTEGER PRIMARY KEY,
	model_id INTEGER NOT NULL,
	vin	TEXT NOT NULL,
	model_year INTEGER NOT NULL,
	sticker_price REAL NOT NULL,
	FOREIGN KEY (model_id) REFERENCES model (model_id)
);

CREATE TABLE customer (
	customer_id INTEGER PRIMARY KEY,
	first_name TEXT	NOT NULL,
	last_name TEXT NOT NULL,
	gender TEXT	NOT NULL,
	ssn	TEXT NOT NULL
);


CREATE TABLE foreign_make (
	foreign_make_id INTEGER PRIMARY KEY,
	make_name TEXT NOT NULL
);

CREATE TABLE location (
	location_id INTEGER PRIMARY KEY,
	location_name TEXT NOT NULL,
	street_address TEXT NOT NULL,
	city TEXT NOT NULL,
	state TEXT NOT NULL,
	zipcode TEXT NOT NULL
);

CREATE TABLE sales_rep (
	sales_rep_id INTEGER PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	ssn TEXT NOT NULL,
	phone_number TEXT NOT NULL,
	street_address TEXT NOT NULL,
	city TEXT NOT NULL,
	state TEXT NOT NULL,
	zipcode TEXT NOT NULL
);

CREATE TABLE sale (
	sale_id INTEGER PRIMARY KEY,
	car_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	location_id INTEGER NOT NULL,
	sales_rep_id INTEGER NOT NULL,
	sales_amount REAL NOT NULL,
	sales_date TEXT NOT NULL,

	FOREIGN KEY (car_id) REFERENCES car (car_id),
	FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
	FOREIGN KEY (location_id) REFERENCES location (location_id),
	FOREIGN KEY (sales_rep_id) REFERENCES sales_rep (sales_rep_id)
);


