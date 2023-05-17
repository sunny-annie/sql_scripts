SELECT
	DISTINCT arrival_city
FROM
	bookings AS b
JOIN tickets t ON
	b.book_ref = t.book_ref
JOIN ticket_flights tf ON
	t.ticket_no = tf.ticket_no
JOIN flights_v fv ON
	tf.flight_id = fv.flight_id
ORDER BY
	total_amount DESC
LIMIT 10;
