# -------------Find Earliest Date A User Joined

# SELECT 
#     DATE_FORMAT(created_at, '%M %D %Y') as 'earliest_date'
# FROM users
# ORDER BY created_at ASC
# LIMIT 1;

# -------------Find Email Of The First (Earliest)User

# SELECT 
#     email,
#     DATE_FORMAT(created_at, '%Y-%m-%d %T') as 'created_at'
# FROM users
# ORDER BY created_at ASC
# LIMIT 1;

# SELECT * FROM users
# ORDER BY created_at ASC
# LIMIT 1;

# SELECT * FROM users
# WHERE created_at = (SELECT MIN(created_at) FROM users);

# -------------Users According To The Month They Joined

SELECT 
    DATE_FORMAT(created_at, %M) as 'month'
    COUNT(month) as 'count'
FROM users
GROUP BY month
ORDER BY 'count' DESC;

SELECT 
    Monthname(created_at) AS month,
    COUNT(*) AS count
FROM users
GROUP BY month
ORDER BY count DESC;

# -------------Count Number of Users With Yahoo Emails

# SELECT 
#     COUNT(*) AS yahoo_users
# FROM users
# WHERE email LIKE '%@yahoo.com';

# -------------Calculate Total Number of Users for Each Email Host


SELECT
    CASE
        WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
        WHEN email LIKE '%@gmail.com' THEN 'gmail'
        WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
        ELSE 'other'
    END AS provider,
    COUNT(*) as total_users
FROM users
GROUP BY provider
ORDER BY total_users DESC;
    

