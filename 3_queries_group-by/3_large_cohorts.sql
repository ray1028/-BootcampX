select c.name, count(*) as student_count
from cohorts c join students s
on c.id = s.cohort_id
group by c.name
having count(*) >= 18
order by student_count;
