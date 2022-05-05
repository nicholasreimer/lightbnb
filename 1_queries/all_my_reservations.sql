SELECT 
reservations.id, 
properties.title, 
properties.cost_per_night, 
reservations.start_date, avg(rating) as average_rating
FROM reservations

JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id

WHERE reservations.guest_id = 1

GROUP BY properties.id, reservations.id

ORDER BY reservations.start_date

LIMIT 10;

/*
-select reservations.id from the reservations table
-select properties.title from the properties table
-select properties.cost_per_night from the properties table

-make the avergae rating alias equal to gettin reservations.start_date plus the avg of rating

-JOIN the diffrerent table sso they can be accessed accordingly

-only show results where reservations.guest_id = 1

-group these results by properties.id , reservations.id

-order the results by reservations.start_date and only show 10 results total


*/