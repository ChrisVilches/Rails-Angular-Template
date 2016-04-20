class StudentsController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	def index
		if params[:course_id]			
			render :json => Student.joins(:courses).where(courses_students: {course_id: params[:course_id]}).references(:courses)
		else
			render :json => Student.all
		end		
	end


	def destroy
		student = Student.find(params[:id])
		if params[:course_id]
			course = Course.find(params[:course_id])
			student.courses.delete(course)
			render nothing: true  	
		else
			student.destroy
			render nothing: true  	
		end
	end
end
