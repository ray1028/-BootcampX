
select sum(aa.duration) as total_duration
from assignment_submissions aa join students s
on aa.student_id = s.id
join cohorts c on s.id = c.id
where c.name = 'FEB12';
