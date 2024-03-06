select stu.student_id, stu.student_name, sub.subject_name, count(exam.subject_name) as attended_exams
from students stu
cross join subjects sub
left join examinations exam
on stu.student_id = exam.student_id
and sub.subject_name = exam.subject_name
group by stu.student_id, stu.student_name, sub.subject_name
order by stu.student_id, stu.student_name;