class HomeController < ApplicationController
	def index
		@cars = Car.all
		@employees = Employee.all
		@customers = Customer.all
	end
end
