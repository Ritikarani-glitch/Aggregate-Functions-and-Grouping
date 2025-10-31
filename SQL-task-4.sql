use masterCREATE TABLE Library (
    Book_ID INT,
    Title VARCHAR(100),
    Author VARCHAR(100),
    Genre VARCHAR(50),
    Published_Year INT,
    Quantity INT DEFAULT 1
);

select * from Library
-----------1.Apply aggregate functions on numeric columns----

SELECT COUNT(*) AS Total_Books
FROM Library;

SELECT SUM(Quantity) AS Total_Copies
FROM Library;

SELECT AVG(Published_Year) AS Avg_Year
FROM Library;

SELECT MIN(Published_Year) AS Oldest_Book,
       MAX(Published_Year) AS Newest_Book
FROM Library;

------2.Use GROUP BY to categorizeselect * from LibrarySELECT Genre, COUNT(*) AS Total_Books
FROM Library
GROUP BY Genre;

SELECT Genre, SUM(Quantity) AS Total_Copies
FROM Library
GROUP BY Genre;

SELECT Genre, AVG(Quantity) AS Avg_Quantity
FROM Library
GROUP BY Genre;

------------3.Filter groups using HAVING--------select * from LibrarySELECT Genre, COUNT(*) AS Total_Books
FROM Library
GROUP BY Genre
HAVING COUNT(*) > 1;
SELECT Genre, SUM(Quantity) AS Total_Copies
FROM Library
GROUP BY Genre
HAVING SUM(Quantity) > 10


-----Combination condition----



SELECT Genre, AVG(Quantity) AS Avg_Qty
FROM Library
WHERE Published_Year > 2000
GROUP BY Genre
HAVING AVG(Quantity) > 7;

SELECT Genre, SUM(Quantity) AS Total_Copies
FROM Library
GROUP BY Genre
HAVING SUM(Quantity) > 5
ORDER BY Total_Copies DESC;





