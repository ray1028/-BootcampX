select c.name, avg(completed_at - started_at) as average_assistance_time
from cohorts c join students s
on c.id = s.cohort_id
join assistance_requests ar
on ar.student_id = s.id 
group by c.name
order by average_assistance_time;
