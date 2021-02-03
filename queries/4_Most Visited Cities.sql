select city, count(reservations.*) as totalvisits
from properties
join reservations
on properties.id = reservations.property_id
group by city
order by count(reservations.*) desc;