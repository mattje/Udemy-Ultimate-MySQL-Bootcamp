# Find all books with an author_lname

# that contains a space(" ")
# +----------------------+----------------+
# | title                | author_lname   |
# +----------------------+----------------+
# | Oblivion: Stories    | Foster Wallace |
# | Consider the Lobster | Foster Wallace |
# +----------------------+----------------+

SELECT
    title,
    author_lname
FROM books
WHERE author_lname LIKE "% %";