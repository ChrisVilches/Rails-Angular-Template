# Rails & Angular Template

1. Angular UI-Router (sin # para las URLs)
2. Simple Bootstrap template

## Database

Implements three tables

1. Course 
2. Student (N:N with ```course```)
3. Homework (belongs to ```course```)

In order to get all students that belong to a course, do:

```
GET http://localhost:3000/courses/{course_id}/students
```

Or delete a student from a course:

```
DELETE http://localhost:3000/courses/{course_id}/students/{student_id}
```