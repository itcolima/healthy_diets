class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :name
      t.date :sdate
      t.date :tdate
      t.text :description

      t.timestamps null: false
    end
  end
end
