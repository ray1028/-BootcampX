select t.name as teacher, c.name as cohort, count(*) as total_assistances
from teachers t join assistance_requests ar
on t.id = ar.teacher_id
join students s
on ar.student_id = s.id
join cohorts c
on s.cohort_id = c.id
where c.name = 'JUL02'
group by t.name, c.name
order by t.name;
