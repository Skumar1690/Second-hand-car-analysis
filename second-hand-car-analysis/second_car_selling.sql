create schema cars;
use cars;
SELECT *from cars.car_dekho;


/*1) Read cara data.*/
select *from cars.car_dekho;

/*2) Total cars : to get a count of total records*/
select count(*) from car_dekho;

/*3) The manager asked the employee how many cars will be avilable in 2023?*/
select *from car_dekho
where year=2023;

select count(*) from car_dekho
where year=2023;

/*4) The manager asked the employee how many cars is avilable in 2020,21,22*/
select count(*) from car_dekho
where year in (2020,2021,2022) group by year;

select count(*) from car_dekho
group by year
having year in (2020,2021,2022);

/*5) clint asked me to print the total of all cars by year. I don't see all the details.*/
select year,count(*) from car_dekho
group by year;

select year,count(*) from car_dekho
group by year
order by count(*) desc # top 3 cars sales
limit 3;

select year,count(*) from car_dekho
group by year
order by count(*) asc # low salling cars
limit 5;

/*6) Clint asked to car dealer agent how many diesel ears will there be in 2020?*/
select count(*) from car_dekho
where year =2020 and fuel='Diesel';

/*7) clint requested a car dealer agent how many petrol cars will there be in 2022?*/
select count(*) from car_dekho
where year=2022 and fuel='petrol';

/*8) The manager told the employee to give a print all the fuel cars (pettol, diesel, and CNG) come by all year.*/
-- select count(*) ,fuel from car_dekho
-- group by year
-- having fuel in ('Petrol','Diesel','CNG');


/*9) Manager said there were more than 100 cars in a given year, which year had more than 100 cars?*/
select count(*),year from car_dekho
group by year
having count(year)>100;

/*10) The manager said to the employee all cars count details between 2015 and 2023; we need a complete list.*/
select count(*) from car_dekho
where year between 2015 and 2023;

/*11) The manager said to the employee all cars details between 2015 to 2023 we need complete list.*/
select  * from car_dekho
where year between 2015 and 2023;

