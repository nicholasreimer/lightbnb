SELECT 
properties.city, 
count(reservations) as total_reservations
FROM reservations

JOIN properties ON property_id = properties.id

GROUP BY properties.city

ORDER BY total_reservations DESC;

/*
-select city directly via the properties table
- get a count for reservations and set it to the alias total_reservations

-JOIN properties table to the reservations table

-group the results by properties.city

-order the results by total_reservation in descending order

*/

