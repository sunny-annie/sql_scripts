SELECT
	DISTINCT to_char(scheduled_departure,
	'month') AS departure_month,
	arrival_city,
	count(*) AS flights_qty
FROM
	flights_v fv
GROUP BY
	departure_month,
	arrival_city
ORDER BY
	departure_month ASC,
	flights_qty DESC;