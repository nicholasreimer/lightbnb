
SELECT properties.id, 
title, cost_per_night, 
avg(property_reviews.rating) as average_rating
FROM properties

LEFT JOIN property_reviews ON properties.id = property_id

WHERE city LIKE '%ancouv%'

GROUP BY properties.id

HAVING avg(property_reviews.rating) >= 4

ORDER BY cost_per_night

LIMIT 10;

/*
-select properties.id in order to use it later for the group by statement
-select title and cost_per_Night

-create an alias called average_rating that is the avg of rating from the property_reviews table 

-LEFT JOIN property_reviews table onto the properties table so we can access average_rating

-only show results from places that have "ancouv" in the city column'

-only show results by properties.id when ther avg review rating is greater then or equal to 4

-order the results by ther cost_per_night and limit it to only 10 results
*/