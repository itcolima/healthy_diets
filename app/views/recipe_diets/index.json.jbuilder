json.array!(@recipe_diets) do |recipe_diet|
  json.extract! recipe_diet, :id, :id_diet, :id_recipe
  json.url recipe_diet_url(recipe_diet, format: :json)
end
