create database cor_db;
use cor_db;

create table employe_c( id  int, name varchar(20), salary int);
insert into employe_c values(1, 'a', 100), (2, 'b', 250), (3, 'c', 400), (4,'d', 100), (5, 'a',300);
-- multiple row subquery when inner query give multiple value=we dont use or operator in this
select * from employe_c;
select * from employe_c

select * from employe_c
where salary in (select salary from employe_c where name='a'); -- or where salary=100 or salary=300

select * from employe_c
where salary =any (select salary from employe_c where name='a');
-- in multiple row subquery we use only three operators in,any,all in this we dont use or ,and operator

select * from employe_c
where salary >any (select salary from employe_c where name='a'); 
-- salary >100 or salary>300

select * from employe_c
where salary <any (select salary from employe_c where name='a');
-- where salary<100 or salary<300

select * from employe_c
where salary =all (select salary from employe_c where name='a'); -- ye kbhi nhi chal skta =all is wrong but  and =any is right,=in bhi wrong hai
select * from employe_c
where salary >all (select salary from employe_c where name='a'); -- mtlb salary>100 and salary>300
select * from employe_c
where salary <all(select salary from employe_c where name='a'); -- means salary<100 and salary<300

