SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(assistance_requests.teacher_id) AS total_assistances
FROM teachers
JOIN assistance_requests ON assistance_requests.teacher_id = teachers.id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY teacher, cohort
ORDER BY teacher;