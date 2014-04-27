class CreateUser < ActiveRecord::Migration
  def change
    create_table :post_ownership do |t|
    	t.string :name
    	t.timestamps
    end

    create_table :posts do |t|
    	t.belongs_to :post_ownership
    	t.datetime :post_date
    	t.timestamps
  	end
  end
end
