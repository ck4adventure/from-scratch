# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ge1 = Source.find_or_create_by(title: "Good Eats, vol. 1")
if ge1.new_record?
  ge1.author = "Alton Brown"
  ge1.save!
end

ge2 = Source.find_or_create_by(title: "Good Eats, vol. 2")
if ge2.new_record?
  ge2.author = "Alton Brown"
  ge2.save!
end

ge3 = Source.find_or_create_by(title: "Good Eats, vol. 3")
if ge3.new_record?
  ge3.author = "Alton Brown"
  ge3.save!
end

mbbb = Source.find_or_create_by(title: "Mary Berry's Baking Bible")
if mbbb.new_record?
  mbbb.author = "Mary Berry"
  mbbb.save!
end


Recipe.find_or_create_by(title: "flour, all-purpose", base_item: true)
Recipe.find_or_create_by(title: "flour, bread", base_item: true)
sugar = Recipe.find_or_create_by(title: "sugar, white (caster)", base_item: true)
Recipe.find_or_create_by(title: "brown sugar", base_item: true)
Recipe.find_or_create_by(title: "salted butter", base_item: true)
Recipe.find_or_create_by(title: "butter, unsalted", base_item: true)
Recipe.find_or_create_by(title: "milk, whole", base_item: true)
cream = Recipe.find_or_create_by(title: "heavy cream", base_item: true)
Recipe.find_or_create_by(title: "egg", base_item: true)
eggwhite = Recipe.find_or_create_by(title: "egg white", base_item: true)
Recipe.find_or_create_by(title: "egg yolk", base_item: true)
Recipe.find_or_create_by(title: "cumin seeds, whole", base_item: true)
Recipe.find_or_create_by(title: "cumin seeds, ground", base_item: true)
Recipe.find_or_create_by(title: "coriander seeds, whole", base_item: true)
Recipe.find_or_create_by(title: "coriander seeds, ground", base_item: true)
Recipe.find_or_create_by(title: "cardamom pods, whole", base_item: true)
Recipe.find_or_create_by(title: "cayenne chili, ground", base_item: true)
Recipe.find_or_create_by(title: "turmeric, ground", base_item: true)
Recipe.find_or_create_by(title: "mustard seeds, ground", base_item: true)
vanilla = Recipe.find_or_create_by(title: "vanilla extract", base_item: true)

wc = Recipe.find_by(title: "Whipped Cream")
if wc.nil?
  r = Recipe.create!(
    title: "Whipped Cream",
    description: "Fluffy, creamy, goodness",
    ingredients_attributes: [
      {item_id: 8, qty: 1, measure: "cup"},
      {item_id: 2, qty: 2, measure: "Tbl"},
      ],
    steps: "Beat the cream on high until it starts to stiffen. Add sugar a teaspoon at a time and continue beating until stiff peaks form, about 5 to 7 minutes."
  )
  Citation.create!(recipe_id: r.id, source_id: mbbb.id, page: "666")
end

meringues = Recipe.find_by(title: "Basic White Meringues")
if meringues.nil?
  m = Recipe.create!(
    title: "Basic White Meringue",
    ingredients_attributes: [
      { item_id: eggwhite.id, qty: "3", measure: "large" },
      { item_id: sugar.id, qty: "175", measure: "g" },
    ],
    steps: "1. Pre-heat the oven to 120C or about 220F. Line two trays with baking parchment 2. Put the egg whites in a large bowl and whish until soft peaks form. 3. Add the sugar slowly and beat until stiff peaks form. 5. Pipe onto lined trays. 6. Bake for 30 mins then turn off oven and let dry out anouther hour.",
    citation_attributes: { source_id: 4, page: "355"}
  )
end
