# Rails & Angular Template

1. Angular UI-Router (without using #)
2. Simple Bootstrap template
3. Compiles Typescript automatically

## Database

It implements three tables:

1. Course 
2. Student (N:N with ```course```)
3. Homework (belongs to ```course```)

In order to get all students that belong to a course, do:

```
GET http://localhost:3000/courses/{course_id}/students
```

Add a student to a course:

```
PUT http://localhost:3000/courses/{course_id}/students/{student_id}
```

Or delete a student from a course:

```
DELETE http://localhost:3000/courses/{course_id}/students/{student_id}
```

## Installation

```bash
$ bundle install
$ rake db:migrate
$ rake db:seed
```