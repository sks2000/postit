class AddComments < ActiveRecord::Migration
  def up
  	create_table :comments do |t|
  	  t.integer :post_id
  	  t.integer :user_id
  	  t.text :body

  	  t.timestamps
  	end
  end

  def down
  	drop table :comments
  end
end
