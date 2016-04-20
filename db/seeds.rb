# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago',  name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

courses = Course.create([
	{ name: 'Curso 1',  description: 'Descripcion 1' },
	{ name: 'Curso 2',  description: 'Descripcion 2' },
	{ name: 'Curso 3',  description: 'Descripcion 3' },
	{ name: 'Curso 4',  description: 'Descripcion 4' },
	{ name: 'Curso 5',  description: 'Descripcion 5' },
	{ name: 'Curso 6',  description: 'Descripcion 6' },
	{ name: 'Curso 7',  description: 'Descripcion 7' },
	{ name: 'Curso 8',  description: 'Descripcion 8' },
	{ name: 'Curso 9',  description: 'Descripcion 9' },
	{ name: 'Curso 10',  description: 'Descripcion 10' },
	{ name: 'Curso 11',  description: 'Descripcion 11' },
	{ name: 'Curso 12',  description: 'Descripcion 12' },
	{ name: 'Curso 13',  description: 'Descripcion 13' }
])

students = Student.create([
	{ name: 'Student 1',  surname: 'Apellido 1', courses: Course.where(name: ['Curso 1', 'Curso 3', 'Curso 7', 'Curso 12']) },
	{ name: 'Student 2',  surname: 'Apellido 2', courses: Course.where(name: ['Curso 2', 'Curso 4', 'Curso 5', 'Curso 12']) },
	{ name: 'Student 3',  surname: 'Apellido 3', courses: Course.where(name: ['Curso 5', 'Curso 3', 'Curso 1', 'Curso 11']) },
	{ name: 'Student 4',  surname: 'Apellido 4' },
	{ name: 'Student 5',  surname: 'Apellido 5', courses: Course.where(name: ['Curso 1', 'Curso 4', 'Curso 3', 'Curso 10']) },
	{ name: 'Student 6',  surname: 'Apellido 6' },
	{ name: 'Student 7',  surname: 'Apellido 7', courses: Course.where(name: ['Curso 12', 'Curso 11', 'Curso 5', 'Curso 9']) },
	{ name: 'Student 8',  surname: 'Apellido 8' },
	{ name: 'Student 9',  surname: 'Apellido 9', courses: Course.where(name: ['Curso 2', 'Curso 10', 'Curso 5', 'Curso 8']) },
	{ name: 'Student 10',  surname: 'Apellido 10', courses: Course.where(name: ['Curso 4', 'Curso 8', 'Curso 6', 'Curso 7']) },
	{ name: 'Student 11',  surname: 'Apellido 11', courses: Course.where(name: ['Curso 6', 'Curso 7', 'Curso 5', 'Curso 8']) },
	{ name: 'Student 12',  surname: 'Apellido 12' },
	{ name: 'Student 13',  surname: 'Apellido 13', courses: Course.where(name: ['Curso 7', 'Curso 5', 'Curso 1', 'Curso 3']) },
])

homeworks = Homework.create([
	{ course_id: 1,  description: 'Homework description 1' },
	{ course_id: 2,  description: 'Homework description 2' },
	{ course_id: 3,  description: 'Homework description 3' },
	{ course_id: 1,  description: 'Homework description 4' },
	{ course_id: 1,  description: 'Homework description 5' },
	{ course_id: 6,  description: 'Homework description 6' },
	{ course_id: 7,  description: 'Homework description 7' },
	{ course_id: 2,  description: 'Homework description 8' },
	{ course_id: 9,  description: 'Homework description 9' },
	{ course_id: 3,  description: 'Homework description 10' },
	{ course_id: 11,  description: 'Homework description 11' },
	{ course_id: 12,  description: 'Homework description 12' },
	{ course_id: 13,  description: 'Homework description 13' }
])

