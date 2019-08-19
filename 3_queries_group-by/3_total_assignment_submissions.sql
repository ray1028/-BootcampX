select c.name, count(*) as total_submissions
from cohorts c 
join students s 
on c.id = s.cohort_id
join assignment_submissions aa
on s.id = aa.student_id
group by c.name
order by total_submissions desc;
