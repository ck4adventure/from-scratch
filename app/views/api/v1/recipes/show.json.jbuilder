
json.id @recipe.id
json.title @recipe.title
json.description @recipe.description
json.baseItem @recipe.base_item
unless @recipe.base_item 
  json.steps @recipe.steps
  json.ingredients @recipe.ingredients do |ing|
    json.id ing.item_id
    json.name ing.item.title
    json.qty ing.qty
    json.measure ing.measure
  end
end
