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

ActiveRecord::Schema.define(version: 2024_11_24_120709) do

  create_table "deployment_units", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "unitname", null: false
    t.integer "lv", null: false
    t.integer "hp", null: false
    t.integer "power", null: false
    t.integer "magicpower", null: false
    t.integer "skill", null: false
    t.integer "speed", null: false
    t.integer "luck", null: false
    t.integer "defense", null: false
    t.integer "magicdefense", null: false
    t.integer "charm", null: false
    t.integer "move", null: false
    t.bigint "deployment_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["deployment_id"], name: "index_deployment_units_on_deployment_id"
  end

  create_table "deployments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.string "chapter", null: false
    t.boolean "visible", null: false
    t.integer "view", default: 0, null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_deployments_on_user_id"
  end

  create_table "jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "move", null: false
    t.string "ability", null: false
    t.string "lank", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "condition", null: false
    t.string "effect", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "unit1", null: false
    t.string "unit2", null: false
    t.string "support_level", null: false
    t.string "support_effect", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "unit_jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "job", null: false
    t.bigint "unit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unit_id"], name: "index_unit_jobs_on_unit_id"
  end

  create_table "unit_skills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "skill", null: false
    t.bigint "unit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unit_id"], name: "index_unit_skills_on_unit_id"
  end

  create_table "unit_weapons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "weapon", null: false
    t.bigint "unit_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unit_id"], name: "index_unit_weapons_on_unit_id"
  end

  create_table "units", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.string "unitname", null: false
    t.integer "lv", null: false
    t.integer "hp", null: false
    t.integer "power", null: false
    t.integer "magicpower", null: false
    t.integer "skill", null: false
    t.integer "speed", null: false
    t.integer "luck", null: false
    t.integer "defense", null: false
    t.integer "magicdefense", null: false
    t.integer "charm", null: false
    t.integer "move", null: false
    t.float "hp_grow", null: false
    t.float "power_grow", null: false
    t.float "magicpower_grow", null: false
    t.float "skill_grow", null: false
    t.float "speed_grow", null: false
    t.float "luck_grow", null: false
    t.float "defense_grow", null: false
    t.float "magicdefense_grow", null: false
    t.float "charm_grow", null: false
    t.float "move_grow", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_name", null: false
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "user_sex", null: false
    t.string "favorite_game"
    t.string "favorite_unit"
    t.string "favorite_weapon"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "power", null: false
    t.integer "range", null: false
    t.string "type", null: false
    t.string "effect", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "deployment_units", "deployments"
  add_foreign_key "deployments", "users"
  add_foreign_key "unit_jobs", "units"
  add_foreign_key "unit_skills", "units"
  add_foreign_key "unit_weapons", "units"
end
