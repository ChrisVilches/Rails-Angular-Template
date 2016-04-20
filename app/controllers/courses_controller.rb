class CoursesController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	def index
		render :json => Course.all
	end

	def create
		course = Course.new(course_params)
		if course.save
			render json: course, status: :ok
		else
			render json: course, status: :unprocessable_entity
		end
	end

	def destroy
		course = Course.find(params[:id])
		course.destroy
		render json: course, status: :ok		 		
	end

	private
	def course_params
		params.require(:course).permit(:name, :description)
	end
end
