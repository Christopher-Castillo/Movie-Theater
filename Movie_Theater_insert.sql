insert into customer(
customer_id,first_name,last_name,phone_num) 
values(1,'Chris','Castle','7472618802');

insert into movies(film_id,film_title,prod_company,genre,rating)
values(1,'Puss in Boots ', 'Dream Works','Adventure/Comedy','PG');

insert into inventory(upc,product_amount)
values(1,9.00);

insert into projection_room (room_id,film_id)
values(1,1);

insert into tickets (ticket_id,customer_id,film_id,room_id)
values(1,1,1,1);

insert into concessions_cart (c_total_cost,upc,customer_id)
values(5.57,1,1)

select  film_title, rating, prod_company 
from movies;