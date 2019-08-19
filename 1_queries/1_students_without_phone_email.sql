select name, id, cohort_id
from students 
where email is NULL
or phone is NULL;
