 # CREATE TRIGGER trigger_name
#     trigger_time trigger_event ON table_name FOR EACH ROW
#     BEGIN
#     ...
#     END;
    
# DELIMITER $$

# CREATE TRIGGER must_be_adult
#      BEFORE INSERT ON users FOR EACH ROW
#      BEGIN
#           IF NEW.age < 18
#           THEN
#               SIGNAL SQLSTATE '45000'
#                     SET MESSAGE_TEXT = 'Must be an adult!';
#           END IF;
#      END;
# $$

# DELIMITER ;


# CREATE DATABASE trigger_demo;

# use trigger_demo;

# CREATE TABLE users (
#     username VARCHAR(100),
#     age INT
# );

# INSERT INTO users (username, age) VALUES
#     ('sue', 53);
    
# SELECT * FROM users;

INSERT INTO users (username, age) VALUES
    ('yang', 17);
    
SELECT * FROM users;