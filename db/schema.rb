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

ActiveRecord::Schema.define(version: 2019_11_20_143843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "phone", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "lower((email)::text)", name: "index_users_on_lower_email"
    t.index "lower((first_name)::text) varchar_pattern_ops", name: "index_users_on_lower_first_name_varchar_pattern_ops"
    t.index "lower((last_name)::text) varchar_pattern_ops", name: "index_users_on_lower_last_name_varchar_pattern_ops"
    t.index "regexp_replace((phone)::text, '[^0-9]+'::text, ''::text)", name: "index_users_on_regexp_replace_phone_0_9"
  end

end
