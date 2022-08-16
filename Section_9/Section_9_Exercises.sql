# 1 - Print the number of books in the database

# SELECT COUNT(*) FROM books;

# 2 - Print out how many books were released in each year

# SELECT COUNT(*) FROM books GROUP BY released_year;
# SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

# 3 - Print out the total number of books in stock

# SELECT SUM(stock_quantity) FROM books;

# 4 - Find the average released_year for each author

# SELECT AVG(released_year) FROM books
# GROUP BY author_lname, author_fname;

# SELECT 
#     author_fname,
#     author_lname,
#     AVG(released_year) AS 'avg release year'
# FROM books
# GROUP BY
#     author_lname,
#     author_fname;
        
# 5 - Find the full name of the author who wrote the longest book

# SELECT CONCAT(author_fname, ' ', author_lname) FROM books
# WHERE pages = (SELECT MAX(pages) FROM books);

# SELECT
#     CONCAT_WS(' ', author_fname, author_lname) AS 'full name'
# FROM books
# ORDER BY pages DESC LIMIT 1;

# SELECT pages, CONCAT(author_fname, ' ', author_lname) FROM books
# ORDER BY pages DESC LIMIT 1;

# 6 - Make example table happen

SELECT
    released_year AS 'year',
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year;
