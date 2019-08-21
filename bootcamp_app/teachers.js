const { Pool } = require("pg");
const cohortName = process.argv[2];
const values = [`%${cohortName}%`];

const queryStr =     `
select c.name, t.name as teacher
from cohorts c 
join students s
on c.id = s.cohort_id
join assistance_requests ar
on s.id = ar.student_id
join teachers t
on ar.teacher_id = t.id
where c.name like $1
`

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx"
});

pool
  .query(queryStr, values)
  .then(res => {
    res.rows.forEach(ele => console.log(`${ele.name} : ${ele.teacher}`));
  })
  .catch(error => {
    console.error(`query error - ${error.stack}`);
  });
