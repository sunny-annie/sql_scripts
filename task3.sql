--Найдите 10 бронирований с самой высокой стоимостью
select * from bookings b
order by total_amount desc 
limit 10;