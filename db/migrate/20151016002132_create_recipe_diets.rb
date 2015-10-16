class CreateRecipeDiets < ActiveRecord::Migration
  def change
    create_table :recipe_diets do |t|
      t.integer :id_diet
      t.integer :id_recipe

      t.timestamps null: false
    end
  end
end
