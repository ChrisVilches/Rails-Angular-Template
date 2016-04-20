class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key "courses_students", "courses", name: "courses_students_course_id_fk"
    add_foreign_key "courses_students", "students", name: "courses_students_student_id_fk"
    add_foreign_key "homeworks", "courses", name: "homeworks_course_id_fk"
  end
end
