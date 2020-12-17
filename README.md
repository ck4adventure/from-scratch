# From Scratch

As a hobbyist baker and coder, I want to have my own dedicated website to store my favorite recipes and get to them easily. As a baker, I want to be able to search my recipes by keyword, and filter them by included or excluded ingredients, category, etc. As a coder, I want to eventually be able to analyze my recipes by their ingredients and find possible duplicates by ingredient combination and quantity variance.

### The App

Hosting - Netlify Free
DB - Postgresql
Backend - Rails API
Testing - RSpec w Factory, Faker, and Shouldas
Addtl API - GraphQL

Frontend - TBD

### v0.1

- Recipes
- Ingredients (self/double joins on Recipes)

User Stories will be just basic crud actions for Recipes and their Ingredients, goal is to get RSpec testing fully in place and create a traditional rails api, then use those actions to detail the graphql api.

### v.2

- Citation (joins Recipe and Source with addtl info like page no. or link)
- Source

### Goal

I want to be able to have catalogued all the recipes from these sources:

- 660 Curries by Raghavan Iyer, section in front of spice mixes and basics that get used in other recipes
- Mary Berry's Baking Bible, which contains solid starters for recipes found on GBBO
- Good Eats by Alton Brown, 3 book set of recipes, originally developed for TV and organized by episode
- Various "family favorites" and individually shared recipes

I also would like to be able to add these in programmatically, but that doesn't seem to be worth the scripting/scraping time at this point, especially since most are in print form.
