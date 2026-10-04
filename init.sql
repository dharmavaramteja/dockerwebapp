-- TFI Heroes MySQL practice dataset
-- Salary amounts below are illustrative SAMPLE values in INR crore per film,
-- not verified/official actor remuneration. Actual deals vary by project.

CREATE DATABASE IF NOT EXISTS tfi_movies;
USE tfi_movies;

DROP TABLE IF EXISTS heroes;

CREATE TABLE heroes (
    hero_id INT AUTO_INCREMENT PRIMARY KEY,
    hero_name VARCHAR(100) NOT NULL,
    debut_year YEAR,
    experience_years INT,
    sample_salary_per_film_crore DECIMAL(6,2),
    salary_note VARCHAR(255)
);

INSERT INTO heroes
    (hero_name, debut_year, experience_years, sample_salary_per_film_crore, salary_note)
VALUES
    ('Chiranjeevi', 1978, 48, 50.00, 'Illustrative sample only; not official'),
    ('Nagarjuna', 1986, 40, 10.00, 'Illustrative sample only; not official'),
    ('Venkatesh', 1986, 40, 10.00, 'Illustrative sample only; not official'),
    ('Balakrishna', 1974, 52, 18.00, 'Illustrative sample only; debut as child actor'),
    ('Pawan Kalyan', 1996, 30, 75.00, 'Illustrative sample only; not official'),
    ('Mahesh Babu', 1999, 27, 80.00, 'Illustrative sample only; not official'),
    ('Jr NTR', 2001, 25, 100.00, 'Illustrative sample only; not official'),
    ('Ram Charan', 2007, 19, 100.00, 'Illustrative sample only; not official'),
    ('Allu Arjun', 2003, 23, 100.00, 'Illustrative sample only; not official'),
    ('Prabhas', 2002, 24, 150.00, 'Illustrative sample only; not official'),
    ('Nani', 2008, 18, 25.00, 'Illustrative sample only; not official'),
    ('Vijay Deverakonda', 2011, 15, 20.00, 'Illustrative sample only; not official');

-- Practice queries
SELECT * FROM heroes;
SELECT hero_name, experience_years FROM heroes ORDER BY experience_years DESC;
SELECT hero_name, sample_salary_per_film_crore
FROM heroes ORDER BY sample_salary_per_film_crore DESC;
SELECT AVG(sample_salary_per_film_crore) AS average_sample_salary FROM heroes;
