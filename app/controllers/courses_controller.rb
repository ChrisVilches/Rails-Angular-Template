class CoursesController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	def index
		render :json => Course.all
	end

	def create
		course = Course.new(course_params)
		course.save
		render nothing: true
	end

	def destroy
		course = Course.find(params[:id])
		course.destroy
		render nothing: true  		 		
	end

	private
	def course_params
		params.require(:course).permit(:name, :description)
	end
end
