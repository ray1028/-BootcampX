select avg(cohorts_duration.total_duration) from 

(select sum(completed_at - started_at) as total_duration
from cohorts c join students s
on c.id = s.cohort_id
join assistance_requests ar
on s.id = ar.student_id
group by cohort_id ) 

as cohorts_duration
