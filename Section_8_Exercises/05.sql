# Find The 3 Books With The Lowest Stock

# Select title, year, and stock
# +-----------------------------------------------------+---------------+----------------+
# | title                                               | released_year | stock_quantity |
# +-----------------------------------------------------+---------------+----------------+
# | American Gods                                       |          2001 |             12 |
# | Where I'm Calling From: Selected Stories            |          1989 |             12 |
# | What We Talk About When We Talk About Love: Stories |          1981 |             23 |
# +-----------------------------------------------------+---------------+----------------+

SELECT
    title,
    released_year,
    stock_quantity
FROM books
ORDER BY 
    stock_quantity ASC, 
    title ASC 
LIMIT 3;