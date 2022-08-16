# Instagram clone capstone
# CREATE DATABASE insta;
# use insta;

# DROP TABLE users;

# CREATE TABLE users (
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     username VARCHAR(255) UNIQUE NOT NULL,
#     created_at TIMESTAMP DEFAULT NOW()
# );

# INSERT INTO users (username) VALUES
# ('BlueTheCat'),
# ('CharlieBrown'),
# ('ColtSteele');

# # DESC users;
# # SELECT * FROM users;

# # CREATE TABLE photos (
# #     id INT AUTO_INCREMENT PRIMARY KEY,
# #     image_url VARCHAR(255) NOT NULL,
# #     user_id INT NOT NULL,
# #     created_at TIMESTAMP DEFAULT NOW(),
# #     FOREIGN KEY(user_id) 
# #         REFERENCES users(id) 
# #         ON DELETE CASCADE
# # );

# # show tables;
# # DESC photos;

# INSERT INTO photos (image_url, user_id) VALUES
# ('/asdlfkj', 1),
# ('/asdlfffj', 2),
# ('/aasdfdlfkj', 2);

# SELECT * FROM photos;

# SELECT * 
# FROM photos
# JOIN users
#     ON photos.user_id = users.id;

# DROP TABLE comments;

# CREATE TABLE comments (
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     comment_text VARCHAR(255),
#     user_id INT NOT NULL,
#     photo_id INT NOT NULL,
#     created_at TIMESTAMP DEFAULT NOW(),
#     FOREIGN KEY (photo_id) REFERENCES photos(id),
#     FOREIGN KEY (user_id) REFERENCES users(id)
# # );

# INSERT INTO comments (comment_text, user_id, photo_id) VALUES
# ('Meow', 1, 4),
# ('Amazing shot!', 3, 5),
# ('I <3 This', 2, 4);

# SELECT * FROM comments;

# CREATE TABLE likes (
#     user_id INT NOT NULL,
#     photo_id INT NOT NULL,
#     created_at TIMESTAMP DEFAULT NOW(),
#     FOREIGN KEY (user_id) REFERENCES users(id),
#     FOREIGN KEY (photo_id) REFERENCES photos(id),
#     PRIMARY KEY (user_id, photo_id)
# );

# INSERT INTO likes (user_id, photo_id) VALUES
# (1,4),
# (2,5),
# (1,5),
# (1,6),
# (3,6);

# # wont' work due to primary key constraint
# INSERT INTO likes (user_id, photo_id) VALUES
# (1,4);

# CREATE TABLE follows (
#     follower_id INT NOT NULL,
#     leader_id INT NOT NULL,
#     created_at TIMESTAMP DEFAULT NOW(),
#     FOREIGN KEY (follower_id) REFERENCES users(id),
#     FOREIGN KEY (leader_id) REFERENCES users(id),
#     PRIMARY KEY (follower_id, leader_id)
# );

# INSERT INTO follows (follower_id, leader_id) VALUES
# (1,2),
# (1,3),
# (3,1),
# (2,3);

# INSERT INTO follows (follower_id, leader_id) VALUES
# (1,3);

# CREATE table tags (
#     id INT AUTO_INCREMENT PRIMARY KEY,
#     tag_name VARCHAR(255) UNIQUE,
#     created_at TIMESTAMP DEFAULT NOW()
# );

# CREATE TABLE photo_tags (
#     photo_id INT NOT NULL,
#     tag_id INT NOT NULL,
#     FOREIGN KEY (photo_id) REFERENCES photos(id),
#     FOREIGN KEY (tag_id) REFERENCES tags(id),
#     PRIMARY KEY (photo_id, tag_id)
# );

# INSERT INTO tags(tag_name) VALUES
# ('adorable'),
# ('cute'),
# ('sunrise');

# INSERT INTO photo_tags (photo_id, tag_id) VALUES
# (4,1),
# (4,2),
# (5,3),
# (6,2);
