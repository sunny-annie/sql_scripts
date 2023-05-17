select distinct arrival_city, to_char(scheduled_departure_local, 'Day') as weekday_name, 
(scheduled_arrival - scheduled_departure) AS flight_time from flights_v as fv
where departure_city = 'Волгоград';

