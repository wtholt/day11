class CustomersController < ApplicationController
	def show
		@customer = Customer.find params[:id]
	end

	def new
		@customer = Customer.new
	end

	def create
		@customer = Customer.create customer_params
		redirect_to root_path
	end
	def edit
		@customer = Customer.find params[:id]
	end

	def update
		@customer = Customer.find params[:id]
		@customer.update_attributes customer_params
		redirect_to root_path
	end
	
	def destroy
		@customer = Customer.find params[:id]
		@customer.delete
		redirect_to root_path
	end
private
	def customer_params
		params.require(:customer).permit(
			:customer_first_name,
			:customer_last_name,
			:customer_email,
			:customer_phone
		)
	end
end
