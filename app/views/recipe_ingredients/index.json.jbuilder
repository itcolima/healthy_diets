json.array!(@recipe_ingredients) do |recipe_ingredient|
  json.extract! recipe_ingredient, :id, :id_recipe, :id_ingredient
  json.url recipe_ingredient_url(recipe_ingredient, format: :json)
end
