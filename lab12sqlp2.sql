-- Lines starting with double dash are ignored by the DB
SELECT * 
FROM courses

-- Exercise Q1
SELECT concat(course_name, '-', semester);

-- Exercise Q2
SELECT course_id, title, status, due_date
FROM assignments
WHERE strftime('%w', due_date) = '5'  -- '5' is Friday
  AND status != 'Completed'
  AND due_date < '2024-12-31'
ORDER BY due_date;

-- Exercise Q3
SELECT *
FROM assignments
WHERE due_date > '2024-11-24'

-- Exercise Q4
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status
ORDER BY assignment_count;

-- Exercise Q5
SELECT course_id, title
FROM assignments
ORDER BY LENGTH() DESC;

-- Exercise Q6
SELECT upper(title)
FROM assignments

-- Exercise Q7
SELECT title
FROM assignments
WHERE due_date LIKE '____-09-%';

-- Exercise Q8
SELECT title
FROM assignments
WHERE due_date IS NULL;