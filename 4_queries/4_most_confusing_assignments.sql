select a.id, name, day, chapter, count(*) as total_requests
from assignments a join assistance_requests ar
on a.id = ar.assignment_id
group by a.id, name, day, chapter
order by total_requests desc;
