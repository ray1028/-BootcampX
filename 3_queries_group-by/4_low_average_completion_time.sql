select s.name, avg(aa.duration) as average_assignment_duration,
  avg(a.duration) as average_estimated_duration
from students s join assignment_submissions aa
on s.id = aa.student_id
join assignments a
on aa.assignment_id = a.id
where s.end_date is null
group by s.name
order by average_assignment_duration;

