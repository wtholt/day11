class CarsController < ApplicationController
	def show
		@car = Car.find params[:id]
	end

	def new
		@car = Car.new
	end

	def create
		@car = Car.create car_params
		redirect_to root_path
	end

	def edit
		@car = Car.find params[:id]
	end

	def update
		@car = Car.find params[:id]
		@car.update_attributes car_params
		redirect_to root_path
	end

	def destroy
		@car = Car.find params[:id]
		@car.delete
		redirect_to root_path
	end

private
	def car_params
		params.require(:car).permit(
			:make,
			:model,
			:year,
			:seats
		)
	end

end
