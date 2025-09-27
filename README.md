# Job Market & AI Skills Trends 2025

## Project Overview
This project analyzes the 2025 job market focusing on AI and data-related skills. Using SQL, it identifies top in-demand skills, skill growth over time, and industries hiring AI-skilled workers.

## Objectives
- Identify the most in-demand AI/Data skills in 2025
- Compare skill demand growth from 2020 to 2025
- Determine which industries are hiring the most AI-skilled workers

## Repository Structure

## Datasets
**job_postings_sample.csv** - Contains job postings with fields: job_id, title, company, industry, location, posting_date  
**job_skills_sample.csv** - Contains skills required for each job with fields: skill_id, job_id, skill  

## SQL Instructions
1. **Create Tables**  
Run `sql/01_create_tables.sql` to create `job_postings` and `job_skills` tables.

2. **Insert Sample Data**  
Run `sql/02_insert_sample_data.sql` to populate tables with sample data.

3. **Run Analysis Queries**  
Run `sql/03_analysis_queries.sql` to get insights such as:
- Top 10 AI/Data skills
- Skill growth 2020 vs 2025
- Industries hiring the most AI-skilled workers

## Insights
- Top AI/Data Skills in 2025: SQL, Python, Machine Learning, AI tools, Data Analytics  
- Tech, Finance, and Healthcare lead in hiring AI-skilled workers  
- SQL remains a consistently in-demand foundational skill
