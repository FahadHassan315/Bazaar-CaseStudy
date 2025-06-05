use bazaar;
select * from dataset1;
select cousignup_datent(*) from dataset2;

SELECT COUNT(*) AS paid_channel_signups
FROM dataset1
WHERE acquisition_platform IN ('Google', 'Facebook', 'tiktok');

SELECT 
    (COUNT(CASE WHEN first_order_date IS NOT NULL AND first_order_date != '' THEN 1 END) * 100.0) / COUNT(*) AS percent_users_with_orders
FROM dataset1;

SELECT 
    (COUNT(CASE WHEN first_order_date IS NOT NULL THEN 1 END) * 100.0) / COUNT(*) AS percent_users_with_orders
FROM dataset1;

SELECT 
    (COUNT(CASE WHEN first_order_date IS NOT NULL AND first_order_date != '' THEN 1 END) * 100.0) / COUNT(*) AS percent_users_with_orders
FROM dataset1;

SELECT acquisition_platform, COUNT(*) AS user_count
FROM dataset1
GROUP BY acquisition_platform
ORDER BY user_count DESC
LIMIT 1;