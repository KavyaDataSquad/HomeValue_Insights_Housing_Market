CREATE DATABASE housing_analysis;
USE housing_analysis;
CREATE TABLE housing (
longitude FLOAT,
latitude FLOAT,
housing_median_age INT,
total_rooms INT,
total_bedrooms INT,
population INT,
households INT,
median_income FLOAT,
median_house_value INT,
ocean_proximity VARCHAR(50)
);

#retriev table 
select *from housing;

-- 1) Average House Price by Location
select ocean_proximity,round(avg(median_house_value),2)as avg_price
from housing
group by ocean_proximity;

-- 2) Highest House Price
select max(median_house_value)as high_house_price
from housing;

-- 3) Lowest House Price
select min(median_house_value)As lowest_house_price
from housing;

-- 4)Average Income by Location
select ocean_proximity,round(avg(median_income),2)as avg_income
from housing
group by ocean_proximity;

-- 5)Sum of Income by Location
select ocean_proximity,round(sum(median_income),2)as total_income
from housing
group by ocean_proximity;

-- 6) Total Population by Location
select ocean_proximity,sum(population)as total_population
from housing
group by ocean_proximity;

-- 7) Top 10 Expensive Houses
select*from housing 
order by median_house_value desc
limit 10;

-- 8) Average Rooms per Location
select ocean_proximity,round(avg(total_rooms),2)as avg_rooms 
from housing
group by ocean_proximity;

-- 9) Houses with Income greater than 5
select*from housing 
where median_income>5;

-- 10) Houses with Price above Average
select*from housing 
where median_house_value >(
select avg(median_house_value)from housing);

-- 11) Count Houses by Location+
select ocean_proximity,count(*)
from housing 
group by ocean_proximity;

-- Portfolio extensions
-- Price distribution and spread by ocean proximity
SELECT ocean_proximity,
       COUNT(*) AS property_records,
       ROUND(AVG(median_house_value), 2) AS avg_median_value,
       ROUND(MIN(median_house_value), 2) AS min_value,
       ROUND(MAX(median_house_value), 2) AS max_value,
       ROUND(AVG(median_income), 2) AS avg_median_income
FROM housing
GROUP BY ocean_proximity
ORDER BY avg_median_value DESC;

-- Income bands and average house value
SELECT CASE
         WHEN median_income < 2 THEN 'Under 2'
         WHEN median_income < 4 THEN '2 to under 4'
         WHEN median_income < 6 THEN '4 to under 6'
         ELSE '6+'
       END AS income_band,
       COUNT(*) AS property_records,
       ROUND(AVG(median_house_value), 2) AS avg_house_value
FROM housing
GROUP BY income_band
ORDER BY MIN(median_income);
