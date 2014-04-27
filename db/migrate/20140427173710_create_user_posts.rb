class CreateUserPosts < ActiveRecord::Migration
  def change
    create_table :user_posts do |t|
      t.string :post
      t.string :time

      t.timestamps
    end
  end
end
