class RemoveTimeFromUserPost < ActiveRecord::Migration
  def change
  	remove_column :user_posts, :time
  end
end
