# From Scratch

As a hobbyist baker and coder, I want to have my own dedicated website to store my favorite recipes and get to them easily. As a baker, I want to be able to search my recipes by keyword, and filter them by included or excluded ingredients, category, etc. As a coder, I want to eventually be able to analyze my recipes by their ingredients and find possible duplicates by ingredient combination and quantity variance.

### Stack

Hosting: Netlify Free
DB: Postgresql
Backend: Rails API
Testing: RSpec
Frontend: React
Testing: TBD

### v0.1 12/14-12/28

##### Models

- Recipe
  Title: String
  Description (opt): Text
  Base Item?: Boolean
  has_many: Ingredients
  Steps: Text
  has_many: Recipes_Used_IN (example, garam masala)
  has_one Citation
  has_one Source through Citation

- Ingredients (self joins on Recipes)
  Recipe ID: Recipe
  Item ID: Recipe
  Qty: String
  Measure: String
  belongs_to: Recipe
  belongs_to: Item (also a Recipe)

- Citation (joins Recipe and Source with addtl info like page no. or link)
  Recipe ID: Recipe
  Source ID: Source
  Page: String

- Source
  Title: String
  Author: String
  URL: String

##### Routes

GET
/recipes -> Index of non-base item Recipes, Titles only, evtl Categories
/recipes/all -> Index of all items, Titles only
/recipes/:id -> Show a specific recipe

POST
/recipes -> Add a new recipe

PUT/PATCH/DELETE
/recipes/:id -> Update a recipe or destroy it

Started a Graphql implementation but due to lack of good docs, returning to regular Rails API in order to get this up and working more quickly. Writing Model and Request specs
