


create database corr_db;
use corr_db;

create table employee_c( id  int, name varchar(20), salary int);
insert into employee_c values(1, 'a', 100), (2, 'b', 250), (3, 'c', 400), (4,'d', 380);

select * from employee_c;

select * from employee_c where salary=400;
select * from employee_c where salary=100;
-- nested query= a query with in a query
-- first=inner query chalegi than uske basis per outer query run hogi
select * from employee_c where salary=(select min(salary) from employee_c);
-- subquery with the maximum salary
select * from employee_c where salary=(select max(salary) from employee_c);
insert into employee_c values(5, 'aman', 250);
select * from employee_c;
select * from employee_c where salary=(select salary from employee_c where name='b');
select avg(salary) from employee_c;
select * from employee_c where salary>276;
select * from employee_c where salary>(select avg(salary) from employee_c);

use world;
select * from city;
-- get the name of the city where the district of the city is same for the city abudabi
-- get all the columns from the city table wherwe the pop is the maximum
-- get the district and the name of the city where the country code is same for herat
-- get the district, city and the pop for all the countries of amsterdam and sort the data by population
select name from city where name like 'abu%';
select * from city;
select * from city where population=(select max(population) from city);
select * from country;
select name, district from city  where countrycode=(select countrycode from city  where name='herat');
select countrycode from city where name='amsterdam';
select district ,name , population from city
where countrycode=(select countrycode from city where name='amsterdam')
order by population;
select name from city where district=(select district from city where name='abu dhabi');

-- single row subquery-returns only one row








