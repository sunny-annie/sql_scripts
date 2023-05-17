SELECT
	seat_no,
	count(*) AS count
FROM
	ticket_flights tf
JOIN boarding_passes bp ON
	tf.ticket_no = bp.ticket_no
WHERE
	fare_conditions = 'Business'
GROUP BY
	seat_no
ORDER BY
	count DESC
LIMIT 10;