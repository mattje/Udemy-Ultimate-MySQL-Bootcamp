# Print a summary containing the title and year, 
# for the 3 most recent books
# +-----------------------------+
# | summary                     |
# +-----------------------------+
# | Lincoln In The Bardo - 2017 |
# | Norse Mythology - 2016      |
# | 10% Happier - 2014          |
# +-----------------------------+

SELECT
  CONCAT(title, ' - ', released_year)
  AS 'summary'
FROM books
ORDER BY released_year DESC
LIMIT 3;