class StudentsController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	def index
		# List all students that belong to a course
		if params[:course_id]			
			render :json => Student.joins(:courses).where(courses_students: {course_id: params[:course_id]}).references(:courses)
		else
		# List all students
			render :json => Student.all
		end		
	end

	def create
		student = Student.new(student_params)
		student.save
		render nothing: true	
	end

	def update
		# Add to courses_students
		if params[:course_id] && params[:id]
			course = Course.find(params[:course_id])
			student = Student.find(params[:id])
			student.courses<<(course)
			
		# Update student itself
		else
			student = Student.find(params[:id])
			student.update(student_params)
		end
		render nothing: true
	end


	def destroy
		student = Student.find(params[:id])

		# Delete this student from a course
		if params[:course_id]
			course = Course.find(params[:course_id])
			student.courses.delete(course)			
		else

		# Delete this student
			student.destroy
		end
		render nothing: true  	
	end

	private
	def student_params
		params.require(:student).permit(:name, :surname)
	end
end
