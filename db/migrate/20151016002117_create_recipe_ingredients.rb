class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.integer :id_recipe
      t.integer :id_ingredient

      t.timestamps null: false
    end
  end
end
