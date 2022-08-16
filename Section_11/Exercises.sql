# SELECT 10 != 10;
# # 0
# SELECT 15 > 14 && 99 - 5 <= 94;
# # 1 && 1 == 1
# SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;
# # 0 || 1 == 1


# Select All Books Written Before 1980 (non inclusive)
# SELECT * FROM books WHERE released_year < 1980;

# Select All Books Written By Eggers Or Chabon
# SELECT * FROM books WHERE author_lname='Eggers' OR author_lname='Chabon';

# Select All Books Written By Lahiri, Published after 2000
# SELECT * FROM books WHERE author_lname='Lahiri' && released_year>2000;

# Select All books with page counts between 100 and 200
# SELECT * FROM books WHERE pages BETWEEN 100 AND 200;


# Select all books where author_lname  starts with a 'C' or an 'S''
# SELECT * FROM books WHERE author_lname LIKE 'C%' || 'S%';

# If title contains 'stories'   -> Short Stories
# Just Kids and A Heartbreaking Work  -> Memoir
# Everything Else -> Novel
# +-----------------------------------------------------+----------------+---------------+
# | title                                               | author_lname   | TYPE          |
# +-----------------------------------------------------+----------------+---------------+
# | The Namesake                                        | Lahiri         | Novel         |
# | Norse Mythology                                     | Gaiman         | Novel         |
# | American Gods                                       | Gaiman         | Novel         |
# | Interpreter of Maladies                             | Lahiri         | Novel         |
# | A Hologram for the King: A Novel                    | Eggers         | Novel         |
# | The Circle                                          | Eggers         | Novel         |
# | The Amazing Adventures of Kavalier & Clay           | Chabon         | Novel         |
# | Just Kids                                           | Smith          | Memoir        |
# | A Heartbreaking Work of Staggering Genius           | Eggers         | Memoir        |
# | Coraline                                            | Gaiman         | Novel         |
# | What We Talk About When We Talk About Love: Stories | Carver         | Short Stories |
# | Where I'm Calling From: Selected Stories            | Carver         | Short Stories |
# | White Noise                                         | DeLillo        | Novel         |
# | Cannery Row                                         | Steinbeck      | Novel         |
# | Oblivion: Stories                                   | Foster Wallace | Short Stories |
# | Consider the Lobster                                | Foster Wallace | Novel         |
# | 10% Happier                                         | Harris         | Novel         |
# | fake_book                                           | Harris         | Novel         |
# | Lincoln In The Bardo                                | Saunders       | Novel         |
# +-----------------------------------------------------+----------------+---------------+

# SELECT * FROM books WHERE title LIKE '%stories%';
# SELECT * FROM books WHERE title='Just Kids' || title LIKE "A Heartbreaking Work%";
# SELECT title, author_lname,
#     CASE
#         WHEN title LIKE '%stories%' THEN 'Short Stories'
#         WHEN title='Just Kids' || title LIKE "A Heartbreaking Work%" THEN 'Memoir'
#         ELSE 'Novel'
#     END AS TYPE
# FROM books;

# Bonus: Make This Happen
# +-----------------------------------------------------+----------------+---------+
# | title                                               | author_lname   | COUNT   |
# +-----------------------------------------------------+----------------+---------+
# | What We Talk About When We Talk About Love: Stories | Carver         | 2 books |
# | The Amazing Adventures of Kavalier & Clay           | Chabon         | 1 book  |
# | White Noise                                         | DeLillo        | 1 book  |
# | A Hologram for the King: A Novel                    | Eggers         | 3 books |
# | Oblivion: Stories                                   | Foster Wallace | 2 books |
# | Norse Mythology                                     | Gaiman         | 3 books |
# | 10% Happier                                         | Harris         | 1 book  |
# | fake_book                                           | Harris         | 1 book  |
# | The Namesake                                        | Lahiri         | 2 books |
# | Lincoln In The Bardo                                | Saunders       | 1 book  |
# | Just Kids                                           | Smith          | 1 book  |
# | Cannery Row                                         | Steinbeck      | 1 book  |
# +-----------------------------------------------------+----------------+---------+
        
# SELECT title, author_lname,
#     CASE
#         WHEN COUNT(*) = 1 THEN '1 book'
#         ELSE CONCAT(COUNT(*), ' books')
#     END AS COUNT 
# FROM books 
# GROUP BY author_lname, author_fname;