# Write your MySQL query statement below
# SELECT Students.student_id,Students.student_name, Subjects.subject_name, COUNT(Examinations.subject_name) as attended_exams 
# # FROM Students as student
# # JOIN Subjects as subject USING( subject_name)
# # LEFT JOIN Examinations as exam USING( subject_name)
# LEFT JOIN Students USING(student_id )
# GROUP BY student_id, student_name , subject_name
# ORDER by student_id, subject_name


SELECT student.student_id,student.student_name,subject.subject_name,COUNT(exam.subject_name) as attended_exams
FROM Students as student
JOIN Subjects as subject
LEFT JOIN Examinations as exam
ON student.student_id=exam.student_id AND subject.subject_name=exam.subject_name
GROUP BY student.student_id,subject.subject_name
ORDER BY student_id,subject_name;