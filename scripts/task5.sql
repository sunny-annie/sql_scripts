SELECT
	arrival_city,
	count(*) AS count
FROM
	flights_v fv
WHERE
	departure_city = 'Москва'
GROUP BY
	arrival_city
ORDER BY
	count DESC; 