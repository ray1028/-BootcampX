
select c.name, sum(completed_at - started_at) as total_duration
from cohorts c join students s
on c.id = s.cohort_id
join assistance_requests ar
on s.id = ar.student_id
group by c.name 
order by total_duration;
