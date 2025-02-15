create database uber;
use uber;

select * from bookings;

#1 Retrieve all successful bookings:
select * from bookings
where booking_status = 'success';

#2 Find the average ride distance for each vehicle type:
select vehicle_type, avg(ride_distance)
as avg_distance from bookings
group by vehicle_type;

#3 Get the total number of cancelled rides by customers:
select count(*) from bookings
where cancelled_customer='yes';

#4 List the top 10 customers who booked the highest number of rides:
select customer_id, count(booking_id) as total_rides
from bookings
group by customer_id
order by total_rides desc limit 10;

#5 Get the number of rides cancelled by drivers due to personal and car-related issues:
select count(*) from bookings
where reason_cancelled_driver='Personal & Car related issues';

#6 Find the maximum and minimum driver ratings for Prime Sedan bookings:
select max(driver_rating), min(driver_rating)
from bookings where vehicle_type='Prime Sedan';

#7 Find the average customer rating per vehicle type:
select vehicle_type, avg(customer_rating) from bookings
group by vehicle_type;

#8 Calculate the total booking value of rides completed successfully:
select sum(booking_value) from bookings
where booking_status='success';

#9 List all incomplete rides along with the reason:
select booking_id,reason_incomplete_ride from bookings
where incomplete_rides='yes';

#10 Find the number of rides where ride distance is between 10KM and 25KM:
select count(*) from bookings 
where ride_distance between 10 and 25;