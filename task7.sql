select arrival_city, round(avg(amount), 2) as average_price from flights_v fv 
join ticket_flights tf on tf.flight_id = fv.flight_id
group by fv.arrival_city 
order by average_price desc 
limit 10;