select distinct arrival_city, amount from flights_v fv 
join ticket_flights tf on tf.flight_id = fv.flight_id
where tf.amount = (select min(ticket_flights.amount) from ticket_flights);
