class FixColumnName < ActiveRecord::Migration
	def change
		rename_column :users, :Name, :name
		rename_column :users, :Email, :email
	end
end

