SELECT
	arrival_city,
	round(avg(amount),
	2) AS average_price
FROM
	flights_v fv
JOIN ticket_flights tf ON
	tf.flight_id = fv.flight_id
GROUP BY
	fv.arrival_city
ORDER BY
	average_price DESC
LIMIT 10;