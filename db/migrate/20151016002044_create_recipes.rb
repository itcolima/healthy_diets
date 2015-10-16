class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :ingredients
      t.integer :calories
      t.text :procedure
      t.integer :week
      t.string :level

      t.timestamps null: false
    end
  end
end
