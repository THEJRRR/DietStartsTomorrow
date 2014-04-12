class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Name
      t.string :Email
      t.string :DateOfBirth
      t.string :Bio
      t.integer :Age

      t.timestamps
    end
  end
end
