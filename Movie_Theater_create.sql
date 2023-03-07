	create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	phone_num NUMERIC(13)
);
create table movies (
	film_id SERIAL primary key,
	film_title VARCHAR(150),
	prod_company VARCHAR(150),
	genre VARCHAR(100),
	rating VARCHAR(20)
);
create table inventory (
	upc SERIAL primary key,
	product_amount numeric(3,2)
);

create table projection_room (
	room_id SERIAL primary key,
	film_id INTEGER,
	foreign key(film_id) references movies(film_id)
);

create table tickets (
	ticket_id SERIAL primary KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	order_cost NUMERIC(10,2),
	customer_id INTEGER,
	film_id INTEGER,
	room_id INTEGER,
	foreign key(customer_id) references customer(customer_id),
	foreign key(film_id) references movies(film_id),
	foreign key(room_id) references projection_room(room_id)
);

create table concessions_cart (
	c_total_cost NUMERIC(10,2) primary key, 
	upc INTEGER,
	customer_id INTEGER,
	foreign key(upc) references inventory(upc),
	foreign key(customer_id) references customer(customer_id)
);
