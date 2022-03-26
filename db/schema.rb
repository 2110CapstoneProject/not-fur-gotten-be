ActiveRecord::Schema.define(version: 2022_03_26_215204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pet_id"
    t.index ["pet_id"], name: "index_applications_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "description"
    t.string "species"
    t.string "owner_story"
    t.string "gender"
    t.string "owner_email"
    t.string "owner_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "applications", "pets"
end
