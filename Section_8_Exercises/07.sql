# # Make This Happen...

# # Sorted Alphabetically By Last Name
# +---------------------------------------------+
# | yell                                        |
# +---------------------------------------------+
# | MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
# | MY FAVORITE AUTHOR IS RAYMOND CARVER!       |
# | MY FAVORITE AUTHOR IS MICHAEL CHABON!       |
# | MY FAVORITE AUTHOR IS DON DELILLO!          |
# | MY FAVORITE AUTHOR IS DAVE EGGERS!          |
# | MY FAVORITE AUTHOR IS DAVE EGGERS!          |
# | MY FAVORITE AUTHOR IS DAVE EGGERS!          |
# | MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
# | MY FAVORITE AUTHOR IS DAVID FOSTER WALLACE! |
# | MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
# | MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
# | MY FAVORITE AUTHOR IS NEIL GAIMAN!          |
# | MY FAVORITE AUTHOR IS FREIDA HARRIS!        |
# | MY FAVORITE AUTHOR IS DAN HARRIS!           |
# | MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
# | MY FAVORITE AUTHOR IS JHUMPA LAHIRI!        |
# | MY FAVORITE AUTHOR IS GEORGE SAUNDERS!      |
# | MY FAVORITE AUTHOR IS PATTI SMITH!          |
# | MY FAVORITE AUTHOR IS JOHN STEINBECK!       |
# +---------------------------------------------+
SELECT
  CONCAT(
      'MY FAVORITE AUTHOR IS ', 
      UPPER(author_fname), 
      ' ', 
      UPPER(author_lname), 
      '!'
  )  AS 'yell'
FROM books
ORDER BY author_lname;