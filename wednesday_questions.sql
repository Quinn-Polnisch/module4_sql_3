-- question 1
select customer.first_name, customer.last_name, customer.email, district
from customer 
full join address 
on customer.address_id = address.address_id 
where district = 'Texas';

-- question 2
select customer.first_name, customer.last_name, amount
from customer 
full join payment 
on customer.customer_id = payment.customer_id
where amount > 6.99;

-- question 3
select *
from customer 
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having max(amount) > 175
);

-- question 4
select customer.first_name, customer.last_name, customer.email, district
from customer 
full join address 
on customer.address_id = address.address_id 
full join city 
on address.city_id = city.city_id 
where city = 'Nepal';

-- question 5
select staff.first_name, staff.last_name, staff.staff_id, count(rental_id)
from staff 
full join payment 
on staff.staff_id = payment.staff_id 
group by staff.staff_id 
order by count(payment) desc;

-- question 6
select rating, count(film_id)
from film
group by rating;

-- question 7
select * 
from customer
where customer_id in (
	select customer_id 
	from payment
	group by customer_id 
	having max(amount) > 6.99
);

-- question 8
select staff.first_name, staff.last_name, store_id 
from staff 
full join payment 
on staff.staff_id = payment.staff_id
group by staff.staff_id;

select * from payment where amount = 0;

select * from order_ where total_cost = 0;















