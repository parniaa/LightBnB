-- Show all details about properties located in Vancouver including their average rating.
select properties.id, title, cost_per_night, avg(rating) as "avrgrating"
from properties
join property_reviews
on property_id = properties.id
where city like 'Vancouver'
group by properties.id
having avg(rating) > 4
order by cost_per_night desc;