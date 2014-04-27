class PossibleRecipe < ActiveRecord::Migration
  def change
  	create_table :cooks do |t|
  		t.string :name
  		t.timestamp
  	end

  	create_table :ingredients do |t|
  		t.string :name
  		t.timestamp
  	end

  	create_table :recipes do |t|
  		t.belongs_to :cook
  		t.belongs_to :ingredient
  		t.string :required_ingredient
  		t.timestamp
  	end
  end
end
