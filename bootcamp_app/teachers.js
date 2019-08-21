const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "bootcampx"
});

pool
  .query(
    `
 select c.name, t.name as teacher
 from cohorts c 
 join students s
 on c.id = s.cohort_id
 join assistance_requests ar
 on s.id = ar.student_id
 join teachers t
 on ar.teacher_id = t.id
 where c.name like '%${process.argv[2]}%'
`
  )
  .then(res => {
    res.rows.forEach(ele => console.log(`${ele.name} : ${ele.teacher}`));
  })
  .catch(error => {
    console.error(`query error - ${error.stack}`);
  });
