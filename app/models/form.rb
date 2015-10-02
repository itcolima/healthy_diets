class Form < ActiveRecord::Base

	validates :name, :lastname, :height, :weight, :birthday, :bmi, :gender, presence: {message:"can't be blank"}
	
end
