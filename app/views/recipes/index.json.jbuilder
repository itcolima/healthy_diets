json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :ingredients, :calories, :procedure, :week, :level
  json.url recipe_url(recipe, format: :json)
end
