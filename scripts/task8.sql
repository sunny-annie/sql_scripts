select distinct to_char(scheduled_departure, 'month') as departure_month, arrival_city, count(*) AS flights_qty from flights_v fv
group by departure_month, arrival_city 
order by departure_month asc, flights_qty desc;