class AddCustomersToTable < ActiveRecord::Migration
  def change
  	add_column :customers, :customer_first_name, :string
  	add_column :customers, :customer_last_name, :string
  	add_column :customers, :customer_email, :string
  	add_column :customers, :customer_phone, :string
  end
end
