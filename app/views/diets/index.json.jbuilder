json.array!(@diets) do |diet|
  json.extract! diet, :id, :name, :sdate, :tdate, :description
  json.url diet_url(diet, format: :json)
end
