class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
    	# t.references :user
    	t.string :ticker
    	t.text :body
    	t.timestamps
    end
  end
end
