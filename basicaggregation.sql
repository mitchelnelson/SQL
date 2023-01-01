-- Print the number of books in the database
SELECT COUNT(*) FROM books;

-- Print out how many books were released in each year
SELECT

    released_year,
    COUNT(*)

FROM books
GROUP BY released_year
ORDER BY 1;

-- Print out total number of books in stock
SELECT SUM(stock_quantity) FROM books;

-- Find the average released_year for each author
SELECT AVG(released_year), author_fname, author_lname FROM books
GROUP BY author_fname, author_lname;

-- Find the fullname of the author who wrote the longest book
SELECT DISTINCT

    CONCAT(author_fname, ' ', author_lname)

FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

-- Display year, # of books, and avg pages
SELECT

    released_year,
    COUNT(*) AS '# books',
    AVG(pages) AS 'avg pages'

FROM books
GROUP BY released_year
ORDER BY 1;