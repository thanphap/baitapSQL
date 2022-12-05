
-- 5 người đã like nhà hàng nhiều nhất
SELECT user.user_id, user.full_name, COUNT(like_res.user_id) as total_like
FROM user
LEFT JOIN like_res
ON user.user_id = like_res.user_id
GROUP BY user.user_id, user.full_name
ORDER BY total_like DESC
LIMIT 5;

-- 2 nhà hàng có lượt like nhiều nhất

SELECT restaurant.res_id, restaurant.res_name, COUNT(like_res.res_id) as total_like
FROM restaurant
LEFT JOIN like_res
ON restaurant.res_id = like_res.res_id
GROUP BY restaurant.res_id, restaurant.res_name
ORDER BY total_like DESC
LIMIT 2;

-- Người đã đặt hàng nhiều nhất

SELECT user.user_id, user.full_name, SUM(order.amount) as total_amount
FROM user
LEFT JOIN `order`
ON user.user_id = order.user_id
GROUP BY user.user_id, user.full_name
ORDER BY total_amount DESC
LIMIT 1;

-- Người không hoạt động trên hệ thống

SELECT user.user_id, user.full_name, COUNT(like_res.user_id) as total_like, COUNT(rate_res.user_id) as total_rate, COUNT(order.user_id) as total_order
FROM user
LEFT JOIN like_res
ON user.user_id = like_res.user_id
LEFT JOIN rate_res
ON user.user_id = rate_res.user_id
LEFT JOIN `order`
ON user.user_id = order.user_id
GROUP BY user.user_id, user.full_name
HAVING total_like = 0 AND total_rate = 0 AND total_order = 0;

-- Tính trung bình sub_food của 1 food

SELECT food.food_id, food.food_name, AVG (sub_food.sub_price) as avg_sub_price
FROM food
LEFT JOIN sub_food
ON food.food_id = sub_food.food_id
GROUP BY food.food_id, food.food_name
HAVING avg_sub_price IS NOT NULL;


