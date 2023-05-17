select arrival_city, count(*) as count from flights_v fv  
where departure_city = 'Москва'
group by arrival_city
order by count desc; 