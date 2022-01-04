SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
FROM assignments
JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
JOIN students ON students.id = assistance_requests.student_id
JOIN teachers ON teachers.id = assistance_requests.teacher_id
ORDER BY duration;