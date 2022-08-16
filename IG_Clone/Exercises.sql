# Find 5 oldest users to reward them

# SELECT * FROM users
# ORDER BY created_at
# LIMIT 5;

# What day of the week do most users register on?
# We need to figure out when to schedule an ad campaign

# SELECT 
#     COUNT(*) AS num_users,
#     DAYNAME(created_at) AS day
# FROM users
# GROUP BY day
# ORDER BY num_users DESC;


# We want to target our inactive users with an email campaign.
# Find the users who have never posted a photo

# SELECT username
# FROM users
# LEFT JOIN photos
#     ON users.id = photos.user_id
# WHERE photos.id IS NULL;
    
 
# We're running a new contest to see who can get the most likes on a single photo.
# WHO WON??!!

# SELECT 
#     users.username,
#     photos.id, 
#     likes.user_id,
#     COUNT(*) as total
# FROM photos
# JOIN likes
#     ON photos.id = likes.photo_id
# JOIN users
#     ON users.id = photos.user_id
# GROUP BY photos.id
# ORDER BY total DESC
# LIMIT 1;
    
 

# Our Investors want to know...
# How many times does the average user post?

# SELECT 
#     (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS avg;

# A brand wants to know which hashtags to use in a post
# What are the top 5 most commonly used hashtags?

# SELECT 
#     tags.tag_name,
#     COUNT(*) as total
# FROM photo_tags
# JOIN tags 
#     ON tags.id = photo_tags.tag_id
# GROUP BY tags.id
# ORDER BY total DESC
# LIMIT 5;

 
# We have a small problem with bots on our site...
# Find users who have liked every single photo on the site

# users & likes and count total of photos

# SELECT 
#     users.username,
#     COUNT(*) AS total_liked
# FROM users
# JOIN likes
#     ON users.id = likes.user_id
# GROUP BY users.id
# HAVING total_liked = (SELECT COUNT(*) FROM photos);
# # ORDER BY total_liked DESC;

# We also have a problem with celebrities
# Find users who have never commented on a photo

# SELECT
#     username as celebs
# FROM users
# LEFT JOIN comments
#     ON users.id = comments.user_id
# WHERE comments.id IS NULL;

# MEGA CHALLENGE
# Are we overrun with bots and celebrity accounts?
# Find the percentage of our users who have either never commented on a photo or have commented on every photo

# SELECT 
#     users.username,
#     COUNT(*) AS total_liked
# FROM users
# JOIN likes
#     ON users.id = likes.user_id
# GROUP BY users.id
# HAVING total_liked = (SELECT COUNT(*) FROM photos);
# # ORDER BY total_liked DESC;

# SELECT
#     CONCAT(

# # total of users who have never commented
# # and those who have commented on every post
#         (SELECT
#              COUNT(*)
#          FROM
#         (SELECT
#             COUNT(DISTINCT photo_id) AS comment_count
#         FROM users
#         LEFT JOIN comments
#             ON users.id = comments.user_id
#         GROUP BY users.id
#         HAVING 
#             (comment_count IS NULL) 
#             OR 
#             comment_count = (SELECT COUNT(*) FROM photos)) temp)
       
#         /   # divided by total user count
        
#         (SELECT COUNT(*) FROM users)
    
#         * 100,
# # represented as a percentage of the userbase
        
#         ' % bots and celebs') AS percent_useless;

# # SELECT 
# #     CONCAT (250 / (SELECT COUNT(*) FROM users) * 100,
# #     ' % bots and celebs');


# SELECT
#   CONCAT(
#     (SELECT
#       COUNT(*)
#     FROM
#       (SELECT
#         COUNT(DISTINCT photo_id) AS comment_count
#       FROM users
#       LEFT JOIN comments
#         ON users.id = comments.user_id
#       GROUP BY users.id
#       HAVING
#         comment_count IS NULL
#           OR
#         comment_count =
#           (SELECT COUNT(*) FROM photos)
#       )
#       temp
#     )
#     / (SELECT COUNT(*) FROM users) * 100,
#     ' % bots and celebs') AS percent_useless;