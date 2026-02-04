CREATE DATABASE music_pipeline;

USE music_pipeline;

CREATE TABLE best_selling_albums (
    album VARCHAR(255),
    artist VARCHAR(255),
    release_year INT,
    genre VARCHAR(100),
    sales_millions FLOAT
);

-- Top 10 best-selling albums
SELECT album, artist, sales_millions
FROM best_selling_albums
ORDER BY sales_millions DESC
LIMIT 10;

-- Total sales by artist
SELECT artist, SUM(sales_millions) AS total_sales
FROM best_selling_albums
GROUP BY artist
ORDER BY total_sales DESC;

SELECT * FROM best_selling_albums;

SHOW DATABASES;


