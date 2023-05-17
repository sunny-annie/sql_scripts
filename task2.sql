select * from flights_v fv 
where departure_city = 'Екатеринбург' and arrival_city = 'Москва' 
and scheduled_departure  > bookings.now()
order by scheduled_departure asc
limit 1;
