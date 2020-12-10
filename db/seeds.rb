# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.find_or_create_by(title: "flour, all-purpose", base_item: true)
Recipe.find_or_create_by(title: "flour, bread", base_item: true)
Recipe.find_or_create_by(title: "sugar, white (caster)", base_item: true)
Recipe.find_or_create_by(title: "brown sugar", base_item: true)
Recipe.find_or_create_by(title: "salted butter", base_item: true)
Recipe.find_or_create_by(title: "butter, unsalted", base_item: true)
Recipe.find_or_create_by(title: "milk, whole", base_item: true)
Recipe.find_or_create_by(title: "heavy cream", base_item: true)
Recipe.find_or_create_by(title: "egg", base_item: true)
Recipe.find_or_create_by(title: "egg white", base_item: true)
Recipe.find_or_create_by(title: "egg yolk", base_item: true)
Recipe.find_or_create_by(title: "cumin seeds, whole", base_item: true)
Recipe.find_or_create_by(title: "cumin seeds, ground", base_item: true)
Recipe.find_or_create_by(title: "coriander seeds, whole", base_item: true)
Recipe.find_or_create_by(title: "coriander seeds, ground", base_item: true)
Recipe.find_or_create_by(title: "cardamom pods, whole", base_item: true)
Recipe.find_or_create_by(title: "cayenne chili, ground", base_item: true)
Recipe.find_or_create_by(title: "turmeric, ground", base_item: true)
Recipe.find_or_create_by(title: "mustard seeds, ground", base_item: true)

wc = Recipe.find_by(title: "Whipped Cream")
if wc.nil?
  Recipe.create!(
    title: "Whipped Cream",
    description: "Fluffy, creamy, goodness",
    ingredients_attributes: [
      {item_id: 8, qty: 1, measure: "cup"},
      {item_id: 2, qty: 2, measure: "Tbl"},
      ],
    steps: "Beat the cream on high until it starts to stiffen. Add sugar a teaspoon at a time and continue beating until stiff peaks form, about 5 to 7 minutes."
  )
end  
