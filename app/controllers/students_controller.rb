class StudentsController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	def index
		# List all students that belong to a course
		if params[:course_id]
			course = Course.find(params[:course_id])		
			render :json => course.students
		else
		# List all students
			render :json => Student.all
		end		
	end

	def create
		student = Student.new(student_params)

		# Handle format error
		if student.save
			render json: student, status: :ok
		else
			render json: student, status: :unprocessable_entity
		end
	end

	def update
		# Add to courses_students
		if params[:course_id]
			course = Course.find(params[:course_id])
			student = Student.find(params[:id])
			student.courses<<(course)
			render json:  student, status: :ok
			
		# Update student itself
		else
			student = Student.find(params[:id])
			student.update(student_params)
			render json:  student, status: :ok
		end		
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
		render json: student, status: :ok
	end

	private
	def student_params
		params.require(:student).permit(:name, :surname)
	end
end
