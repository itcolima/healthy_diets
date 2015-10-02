class ChangeGenderToString < ActiveRecord::Migration
  def change
  	change_column :forms, :gender, :string
  end
end
