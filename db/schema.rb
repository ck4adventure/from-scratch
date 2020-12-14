# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_14_223644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "citations", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "source_id", null: false
    t.string "page"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id", "source_id"], name: "index_citations_on_recipe_id_and_source_id", unique: true
    t.index ["recipe_id"], name: "index_citations_on_recipe_id"
    t.index ["source_id"], name: "index_citations_on_source_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "item_id", null: false
    t.string "qty"
    t.string "measure"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["item_id"], name: "index_ingredients_on_item_id"
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title", null: false
    t.text "description"
    t.text "steps"
    t.boolean "base_item", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title"], name: "index_recipes_on_title"
  end

  create_table "sources", force: :cascade do |t|
    t.string "author", null: false
    t.string "website"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author"], name: "index_sources_on_author"
    t.index ["title"], name: "index_sources_on_title"
  end

end
