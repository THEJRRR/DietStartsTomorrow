class FixColumnName < ActiveRecord::Migration
	def change
		rename_column :users, :Name, :name
		rename_column :users, :Email, :email
		rename_column :users, :DateOfBirth, :dob
		rename_column :users, :Bio, :bio
		rename_column :users, :Age, :age
	end
end

