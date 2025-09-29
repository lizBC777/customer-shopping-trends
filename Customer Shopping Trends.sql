-- round(1.0 * sum(case when continents = 'Africa' then total_earnings else 0 end)
-- / nullif(sum(total_earnings),0) *100,2)
-- SELECT * FROM shopping_trends.shopping_trends_updated;

-- Q1. How many unique customers have visited the store during the time period provided?
-- (to get a sense of the sample size you are working with.)
SELECT 
	count(distinct `Customer ID`) as total_customers 
FROM shopping_trends.shopping_trends_updated;
-- FINDINGS
-- we have a total of 3900 unique customers(using distinct)

-- Q2. Should the store stock more male or female clothing?
-- (what % of customers are male vs. female?)
with data as(
SELECT
	Gender,
	count(distinct `Customer ID`) as total_customers
FROM shopping_trends.shopping_trends_updated
Group by Gender
)
select 
	sum(total_customers) as total_customers,
    round(100*(sum(case when Gender = 'Female' then total_customers else 0 end)/sum(total_customers)),2) as per_female,
    round(100*(sum(case when Gender = 'Male' then total_customers else 0 end)/sum(total_customers)),2) as per_male
From data
;
-- FINDINGS
-- 32% are female and 68% are male

-- Q3. What seasons are represented in the data?
-- (helps us track trends by time period)
SELECT 
	distinct Season 
FROM shopping_trends.shopping_trends_updated;
-- FINDINGS
-- 'Winter'
-- 'Spring'
-- 'Summer'
-- 'Fall'

-- Q4. What are the most purchased categories and items by season?
-- (This will help guide seasonal stocking strategies.)
SELECT  
	`Item Purchased`,
    count(`Customer ID`) as count_of_items
FROM shopping_trends.shopping_trends_updated
where Season = 'Summer'
Group by 1
Order by 2 desc;
-- FINDINGS
-- In winter the top 4 item purchased are Sunglasses(52),Pants(51), Shirt(50), and Hoodie(48)
-- In Spring the top 4 item purchased are Sweater(52), Shorts(47), Blouse(46), and Coat(46)
-- In Summer the top 4 item purchased are Pants(50), Dress(47), Jewelry(47), and Shoes(46)
-- In Fall the top 4 item purchased are Jacket(54), Hat(50), Handbag(48), and Skirt(46)

-- Q5. What are the most popular item colors by season? 
-- (Color preference can affect buying decisions.)
SELECT  
	Season,
    `Color`,
    count(`Customer ID`) as count_of_items
FROM shopping_trends.shopping_trends_updated
where Season = 'Spring'
Group by 2
Order by 3 desc;
-- In winter the top 4 item colors are Green(50),Yellow(46), Peach(45), and Pink(45)
-- In Spring the top 4 item colors are Olive(52), Gray(48), Teal(46), and Violet(45)
-- In Summer the top 4 item colors are Silver(59), Teal(49), Blue(46), and Green(44)
-- In Fall the top 4 item colors are Magenta(50), Yellow(50), Olive(47), and Orange(45)


-- Q6. Should stocking strategies vary by store location? 
-- (You can also explore if customer gender varies by location.)
-- step 1, find the most popular location 
SELECT 
	Location,
    count(`Customer ID`) as count_of_items
FROM shopping_trends.shopping_trends_updated
Group by 1;
-- 'Kentucky'(79), 'Rhode Island'(63), 'Montana'(96)
-- step 2, use the location to determine the best stocking strategy
select
	`Item Purchased`,
    count(`Customer ID`) as count_of_items
FROM shopping_trends.shopping_trends_updated
where Season = 'Fall'
and location = 'Montana'
Group by 1
Order by 2 desc;
-- in fall in montana, most popular items are Handbag, sweater and t-shirt. Each location should have a different stocking strategy

-- Q7. Which locations are top-performing in terms of customer experience? 
-- (Use metrics like frequency of repeat visits or average spend.)
SELECT 
	Location,
    round(avg(`Review Rating`),2) as avg_rating
FROM shopping_trends.shopping_trends_updated
Group by 1
order by 2 desc;
-- loations such as Texas and Wisconsin have rating above 3.88 and hence other locations can learn from processes in those location

-- Q8. Does having more than 10 previous purchases correlate with higher total spend? 
-- (Understanding customer loyalty and value.)
SELECT 
	case
		when `Previous Purchases` >=10 then 'more than ten'
        else 'less than ten'
        end as previous_purchases_status,
    round(sum(`Purchase Amount (USD)`),2) as total_purchase_amount
FROM shopping_trends.shopping_trends_updated
Group by 1
order by 2 desc;
-- yes, customers who made higher number of purchases previously, maintain the trend of higher purchases when they return
-- they would be a good segment to target with any campaigns













