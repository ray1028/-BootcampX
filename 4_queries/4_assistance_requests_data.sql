select t.name as teacher,
	s.name as student,
	a.name as assignment,
	(ar.completed_at - ar.started_at) as duration
from teachers t join assistance_requests ar
on t.id = ar.teacher_id
join students s
on ar.student_id = s.id
left join assignments a
on ar.assignment_id = a.id
order by duration;
