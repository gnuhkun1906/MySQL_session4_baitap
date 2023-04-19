use quanlisinhvien_thuchanh3;

--  hiển thị các thông tin môn học có credit lớn nhất
select * from `subject` where credit=(select max(credit) from `subject`);

-- hiển thị thông tin môn học có điểm thi cao nhất
 select * from mark where mark=(select max(mark) from mark);

-- hiển thị các thông tin sinh viên  và điểm trung bình của mỗi sinh viên, xếp theo thứ tự giảm dần
select s.*,avg(mark) as "điểm trung bình" 
from student s join mark m on s.studentId=m.StudentId
group by s.StudentId
order by avg(mark) desc;
