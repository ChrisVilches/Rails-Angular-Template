class HomeworksController < ApplicationController
	skip_before_filter  :verify_authenticity_token

	def index
		render :json => Homework.all
	end

	def destroy
		homework = Homework.find(params[:id])
		homework.destroy
		render json: homework, status: :ok
	end

end