# Select All Story Collections
# Titles  That contain 'stories'
# +-----------------------------------------------------+
# | title                                               |
# +-----------------------------------------------------+
# | What We Talk About When We Talk About Love: Stories |
# | Where I'm Calling From: Selected Stories            |
# | Oblivion: Stories                                   |
# +-----------------------------------------------------+

SELECT title FROM books
WHERE title LIKE '%stories%';