customers(customer_id, first_name, last_name,company,city,country,phone_no,email,)

create table customers(
customer_id int primary key,
first_name varchar (150),
last_name varchar (150),
company varchar (150),
city varchar (150),
age int,
country varchar (150),
phone_no bigint
CHECK (age <= 78)
)
select * from customers

insert into customers values (15365,'andrew','goodman','Stewart-Flynn','Rowlandberg', 45 ,'Macao',8965485100)
insert into customers values (15366,'alvin','lane',' Proctor and Lawrence','Bethside', 72 ,'Papua New Guinea',8715852152)

copy customers from 'D:\data analytics\DA PRACTISE\tasks\task_4_sql.csv' delimiter ',' csv 

--distinct query 
select distinct age from customers
select distinct city ,age from customers
select distinct city, country from customers

--where query 
select * from customers where age = 35
select first_name from customers where age < 35
select phone_no from customers where customer_id=15365
select phone_no, first_name from customers where customer_id= 20646

--AND query
select * from customers where last_name = 'goodman' and age = 45
select * from customers  where city = 'West Sandra' and country = 'Japan'
select  * from customers where age = 45  and customer_id = 20356

--OR query
select * from customers where age = 45 or age = 68
select * from customers where last_name = 'lane' or country = 'China'

--Update query
select * from customers where customer_id = 18471
update customers set last_name ='harding larry' where customer_id = 18471 

--alter query
alter table customers add column price double precision
select * from customers
update customers set price = 1000 where customer_id = 15365
update customers set price = 5000 where customer_id = 15366

--- IN 
select  * from customers where customer_id = 18471 OR customer_id = 20646 OR customer_id = 15113 OR  city = 'Bethside'
select * from customers where customer_id in(18471,20646,15113)


--between
select * from customers where age >= 50 AND age <=60 
select *  from customers where age between 30 and 40






