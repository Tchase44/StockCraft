class CreateStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :stocks do |t|
    	t.string :ticker
    	t.float :price

    	t.timestamps
    end
  end
end
