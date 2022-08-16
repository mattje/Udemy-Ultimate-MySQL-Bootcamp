#Print title and author_lname, 
#sorted first by author_lname and then by title
# +-----------------------------------------------------+----------------+
# | title                                               | author_lname   |
# +-----------------------------------------------------+----------------+
# | What We Talk About When We Talk About Love: Stories | Carver         |
# | Where I'm Calling From: Selected Stories            | Carver         |
# | The Amazing Adventures of Kavalier & Clay           | Chabon         |
# | White Noise                                         | DeLillo        |
# | A Heartbreaking Work of Staggering Genius           | Eggers         |
# | A Hologram for the King: A Novel                    | Eggers         |
# | The Circle                                          | Eggers         |
# | Consider the Lobster                                | Foster Wallace |
# | Oblivion: Stories                                   | Foster Wallace |
# | American Gods                                       | Gaiman         |
# | Coraline                                            | Gaiman         |
# | Norse Mythology                                     | Gaiman         |
# | 10% Happier                                         | Harris         |
# | fake_book                                           | Harris         |
# | Interpreter of Maladies                             | Lahiri         |
# | The Namesake                                        | Lahiri         |
# | Lincoln In The Bardo                                | Saunders       |
# | Just Kids                                           | Smith          |
# | Cannery Row                                         | Steinbeck      |
# +-----------------------------------------------------+----------------+

SELECT
    title,
    author_lname
FROM books
ORDER BY 2, 1;