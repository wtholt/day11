class AddEmployeesToTable < ActiveRecord::Migration
  def change
  	add_column :employees, :first_name, :string
  	add_column :employees, :last_name, :string
  	add_column :employees, :email, :string
  	add_column :employees, :phone, :string
  end
end
