select seat_no, count(*) AS count from ticket_flights tf 
join boarding_passes bp on tf.ticket_no = bp.ticket_no 
where fare_conditions = 'Business'
group by seat_no
order by count desc
limit 10;