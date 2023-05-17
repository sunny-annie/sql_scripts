SELECT
	DISTINCT arrival_city,
	to_char(scheduled_departure_local,
	'Day') AS weekday_name,
	(scheduled_arrival - scheduled_departure) AS flight_time
FROM
	flights_v AS fv
WHERE
	departure_city = 'Волгоград';