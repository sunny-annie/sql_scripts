select arrival_city from bookings as b
join tickets t on b.book_ref = t.book_ref
join ticket_flights tf on t.ticket_no = tf.ticket_no 
join flights_v fv  on tf.flight_id = fv.flight_id 
order by total_amount desc 
limit 10;
