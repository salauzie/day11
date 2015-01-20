class StudentsController < ApplicationController
	def show
		@student = Student.find params[:id]
	end	

	def new
		@student = Student.new
	end

	def create
		@student = Student.create que_params
		redirect_to root_path
	end	

	def edit
		@student = Student.find params[:id]
	end	

	def update
		@student = Student.find params[:id]
		@student.update_attributes que_params
		redirect_to root_path
	end
		
	def destroy
		@student = Student.find params[:id]
		@student.delete
		redirect_to root_path
	end	
private
	def que_params
		params.require(:student).permit(:name)
	end		
end
