select day, 
	count(*) as number_of_assignments,
	sum(duration)
from assignments
group by day
order by day;
