
json.array! @recipes do |recipe|
  json.id recipe.id
  json.title recipe.title
  json.description recipe.description
end