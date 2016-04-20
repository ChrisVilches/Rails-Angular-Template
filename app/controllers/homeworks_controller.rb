class HomeworksController < ApplicationController
	def index
		render :json => Homework.all
	end

	def destroy
		homework = Homework.find(params[:id])
		homework.destroy
		render nothing: true  		 		
	end

end
