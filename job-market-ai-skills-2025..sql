-- =========================================
-- Job Market & AI Reskilling Trends (2025)
-- FULL MySQL Script: Database, Tables, Sample Data, Key Queries
-- =========================================

-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS job_market_2025;
USE job_market_2025;

-- Step 2: Create Tables

-- Job postings table
CREATE TABLE IF NOT EXISTS job_postings (
job_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255),
company VARCHAR(255), 
industry VARCHAR(100),
location VARCHAR(100),
posting_date DATE
);

-- Skills required for each job
CREATE TABLE IF NOT EXISTS job_skills (
skill_id INT PRIMARY KEY AUTO_INCREMENT,
job_id INT,
skill VARCHAR(100),
FOREIGN KEY (job_id) REFERENCES job_postings(job_id)
);

-- 1. Top 10 AI/Data Skills in 2025
SELECT skill, COUNT(*) AS demand_count
FROM job_skills
GROUP BY skill
ORDER BY demand_count DESC
LIMIT 10;

-- 2. Skill Demand Growth (2020 vs 2025)
SELECT skill, 
SUM(CASE WHEN YEAR(posting_date) = 2020 THEN 1 ELSE 0 END) AS demand_2020,
SUM(CASE WHEN YEAR(posting_date) = 2025 THEN 1 ELSE 0 END) AS demand_2025
FROM job_skills js
JOIN job_postings jp ON js.job_id = jp.job_id
GROUP BY skill
ORDER BY demand_2025 - demand_2020 DESC;


-- Insert job postings
INSERT INTO job_postings (title, company, industry, location, posting_date)
VALUES 
('Data Analyst', 'JP Morgan', 'Finance', 'NY', '2025-01-10'),
('Machine Learning Engineer', 'TechCorp', 'Tech', 'CA', '2025-02-15');

-- Insert skills
INSERT INTO job_skills (job_id, skill)
VALUES
(1, 'SQL'),
(1, 'Python'),
(2, 'Machine Learning'),
(2, 'AI');

-- 3. Industries Hiring the Most AI-Skilled Workers
SELECT industry, COUNT(*) AS job_count
FROM job_postings jp
JOIN job_skills js ON jp.job_id = js.job_id
WHERE LOWER(skill) IN ('python', 'sql', 'machine learning', 'ai')
GROUP BY industry
ORDER BY job_count DESC;

-- 4. Jobs per Location
SELECT location, COUNT(*) AS num_jobs
FROM job_postings
GROUP BY location
ORDER BY num_jobs DESC;