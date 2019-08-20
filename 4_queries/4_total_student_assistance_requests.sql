select count(*) as total_assistances, name
from assistance_requests ar join students s
on ar.student_id = s.id
where name = 'Elliot Dickinson'
group by name;
