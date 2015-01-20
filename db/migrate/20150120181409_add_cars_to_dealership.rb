class AddCarsToDealership < ActiveRecord::Migration
  def change
  	add_column :cars, :make, :string
  	add_column :cars, :model, :string
  	add_column :cars, :year, :string
  	add_column :cars, :seats, :string

  end
end
