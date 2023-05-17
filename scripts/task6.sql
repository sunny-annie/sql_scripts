SELECT
	DISTINCT arrival_city,
	amount
FROM
	flights_v fv
JOIN ticket_flights tf ON
	tf.flight_id = fv.flight_id
WHERE
	tf.amount = (
	SELECT
		min(ticket_flights.amount)
	FROM
		ticket_flights);
