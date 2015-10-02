json.array!(@forms) do |form|
  json.extract! form, :id, :name, :lastname, :height, :weight, :birthday, :bmi, :gender
  json.url form_url(form, format: :json)
end
