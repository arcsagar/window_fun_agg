select * from sales

select sum(sales) , ship_mode from sales group by ship_mode

select order_date, order_id, sum(sales) , ship_mode from sales group by ship_mode,order_date

select order_date, order_id, ship_mode, sum(sales) over(partition by ship_mode ) from sales


select * from customer

select city, avg(age) from customer group by city order by avg(age)

select * , avg(age) over(partition by city order by city ) from customer 


select * , avg(age) over(partition by city order by city ) from customer order by customer_name


select * , avg(age) over(partition by city ) from customer order by city, customer_name


select ship_mode, order_id, order_date, qty, sum(qty) over(partition by ship_mode) from sales 

total = 10
value = 2

select 2*100 / 10

select 15*100/ 200

select (7.0 *100.0 / 5693.0)


select ship_mode, order_id, order_date, qty, sum(qty) over(partition by ship_mode) as "windowAgg",
qty::float * 100 / sum(qty) over(partition by ship_mode)::float  from sales 

select qty , sum(qty), qty::float * 100/  sum(qty)::float from sales group by qty

select distinct qty from sales

select qty , sum(qty), qty::float * 100/  sum(qty)::float from sales group by qty, ship_mode

select  avg(sales) over(partition by order_date), sum(qty) over(partition by order_date),  min(qty) over(partition by order_date), * from sales



select  avg(sales) over(partition by extract(year from order_date)), * from sales

select * from sales

