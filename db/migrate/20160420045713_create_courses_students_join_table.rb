class CreateCoursesStudentsJoinTable < ActiveRecord::Migration
  def change
  	create_table :courses_students, id: false do |t|
    	t.references :course
    	t.references :student
    	#add_foreign_key :courses_students, :students, dependent: :delete
    	#add_foreign_key :courses_students, :courses, dependent: :delete
end
  end
end
