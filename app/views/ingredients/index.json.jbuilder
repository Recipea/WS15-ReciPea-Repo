json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :recipe_id, :name
  json.url ingredient_url(ingredient, format: :json)
end
