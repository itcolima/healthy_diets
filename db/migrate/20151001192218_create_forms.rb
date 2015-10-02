class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.string :lastname
      t.float :height
      t.float :weight
      t.date :birthday
      t.float :bmi
      t.boolean :gender

      t.timestamps null: false
    end
  end
end
