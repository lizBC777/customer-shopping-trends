# INTRODUCTION TO A RETAIL USE CASE PROJECT

In this project, we source a customer sales trend dataset from Kaggle. We take on the role of customer analytics specialists hired by a large retail store to help them answer one core question.

Link to dataset: https://www.kaggle.com/datasets/iamsouravbanerjee/customer-shopping-trends-dataset

What should the store stock—— and when—— to maximize sales, reduce lost sales, and minimize dead stock?

## UNDERSTAND THE PROBLEM

Review the business context and familiarize yourself with the dataset. What kind of store is this? What does each column mean? What time period is covered?

## DEFINE THE QUESTION AND PLAN YOUR ANALYSIS

Once you understand the business’s challenge, outline the questions you'll use SQL to answer. You may also need to create new features to make your analysis stronger.

## KEY QUESTIONS:

1. How many unique customers have visited the store during the time period provided? (To get a sense of the sample size you're working with.)
3. Should the store stock more male or female clothing? (What % of customers are male vs. female?)
4. What seasons are represented in the data? (Helps us track trends by time period.)
5. What are the most purchased categories and/or items by season? (This will help guide seasonal stocking strategies.)
6. What are the most popular item colors by season? (Color preference can affect buying decisions.)
7. Should stocking strategies vary by store location? (You can also explore if customer gender varies by location.)
8. Which locations are top-performing in terms of customer experience? (Use metrics like frequency of repeat visits or average spend.)
9. Does having more than 10 previous purchases correlate with higher total spend? (Understanding customer loyalty and value.)

## SUMMARY OF FINDINGS AND RECOMMENDATIONS

### 1. Customer Insights & Demographics
Total unique customers: 3,900.

Gender distribution: 68% Male vs. 32% Female → The store should prioritize male clothing but still stock for females to cover demand.

### 2. Seasonal Trends

#### → Seasons represented: Winter, Spring, Summer, Fall.

(i)Top purchased items by season:

a. Winter: Sunglasses (52), Pants (51), Shirt (50), Hoodie (48).

b. Spring: Sweater (52), Shorts (47), Blouse (46), Coat (46).

c. Summer: Pants (50), Dress (47), Jewelry (47), Shoes (46).

d. Fall: Jacket (54), Hat (50), Handbag (48), Skirt (46).

👉 Insight: Each season has distinct preferences → Stocking must be season-specific.

(ii)Top purchased colors by season:

a. Winter: Green (50), Yellow (46), Peach (45), Pink (45).

b. Spring: Olive (52), Gray (48), Teal (46), Violet (45).

c. Summer: Silver (59), Teal (49), Blue (46), Green (44).

d. Fall: Magenta (50), Yellow (50), Olive (47), Orange (45).

### 3. Store Locations
High traffic locations: Montana (96), Kentucky (79), Rhode Island (63).

Montana (Fall season): Handbag, Sweater, T-shirt most popular → Location-specific stocking strategies are essential.

Customer experience (review ratings): Texas and Wisconsin have the highest ratings (>3.88) 

👉 These can serve as benchmarks for improving performance in other states.


### 4. Customer Behavior & Loyalty

Loyalty effect: Customers with ≥10 previous purchases spend significantly more than those with fewer purchases.

 👉 Repeat buyers are the most valuable segment to target with loyalty programs or campaigns.


### Overall Takeaways

1. Focus more on male-oriented clothing, but don’t neglect female demand.

2. Seasonal & color-based stocking is crucial for meeting customer preferences.

3. Tailor strategies by location; one-size-fits-all won’t maximize sales.

4. Learn from high-rated stores (Texas, Wisconsin) to improve customer experience.

5. Invest in loyalty programs — repeat buyers drive revenue growth.
