select s.name, avg(aa.duration) as average_assignment_duration
from students s join assignment_submissions aa
on s.id = aa.student_id
where s.end_date is null
group by s.name
order by average_assignment_duration desc;

