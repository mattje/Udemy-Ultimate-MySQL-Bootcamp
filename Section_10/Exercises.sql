# What is a good use case for CHAR? 
# CHAR has a fixed number of letters
# CREATE TABLE License_plates (plate CHAR(6))
# This would work well for a databasae of 6-character License_plates

# CREATE TABLE inventory (
#     item_name VARCHAR(100),
#     price DECIMAL (8,2),
#     quantity INT
# );

#DATETIME The supported range is '1000-01-01 00:00:00' to '9999-12-31 23:59:59'.
#TIMESTAMP has a range of '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' UTC.

# SELECT CURTIME();
# SELECT CURDATE();
# SELECT DAYOFWEEK(CURDATE());
# SELECT DAYNAME(CURDATE());
# SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
# SELECT DATE_FORMAT(NOW(), '%M %D at %H:%i');
# CREATE TABLE tweets (
#     content VARCHAR(140),
#     username VARCHAR(80),
#     time_created TIMESTAMP DEFAULT NOW()
# );

