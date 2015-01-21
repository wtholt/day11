class EmployeesController < ApplicationController
	def show
		@employee = Employee.find params[:id]
	end

	def new
		@employee = Employee.new
	end

	def create
		@employee = Employee.create employee_params
		redirect_to root_path
	end

	def edit
		@employee = Employee.find params[:id]
	end

	def update
		@employee = Employee.find params[:id]
		@employee.update_attributes employee_params
		redirect_to root_path
	end

	def destroy
		@employee = Employee.find params[:id]
		@employee.delete
		redirect_to root_path
	end


private
	def employee_params
		params.require(:employee).permit(
			:first_name,
			:last_name,
			:email,
			:phone
		)
	end


end
