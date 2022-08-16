# Find The Longest Book
# Print Out the Title and Page Count
# +-------------------------------------------+-------+
# | title                                     | pages |
# +-------------------------------------------+-------+
# | The Amazing Adventures of Kavalier & Clay |   634 |
# +-------------------------------------------+-------+
SELECT
    title,
    pages
FROM books ORDER BY pages DESC
LIMIT 1;