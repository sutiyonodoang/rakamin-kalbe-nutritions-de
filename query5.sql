# Create a Query to display all customer orders where 
# purchase amount is less than 100 or exclude those orders 
# which order date is on or greater than 25 Aug2022 and 
# customer id is above 2001.
    
customer_orders
SELECT *
FROM customer_orders
WHERE
    purchase_amount < 100
    OR (
        order_date < '2022-08-25'
        AND customer_id <= 2001
    );
