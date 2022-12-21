use students_class;

select * from student where student_name like 'H%';

select * from class where stardate like '%12%';

select * from subjects where credit between 3 and 5;

set SQL_SAFE_UPDATES = 0;
update student set class_id = 2 where student_name = "hung";

select student.student_name, subjects.sub_name, mark.mark 
from student
join mark on  mark.student_id = student.student_id
join subjects on  mark.sub_id = subjects.sub_id
;