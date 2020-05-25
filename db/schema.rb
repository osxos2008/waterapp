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

ActiveRecord::Schema.define(version: 2020_05_21_063120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alashiab_alsoqia", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date"
    t.float "almzre_soqia"
    t.float "almzre_naqlat"
    t.float "bljorashy_soqia"
    t.float "bljorashy_naqlat"
    t.float "bnekbeer_soqia"
    t.float "bnekbeer_naqlat"
    t.float "almosa_soqia"
    t.float "almosa_naqlat"
    t.float "aljnaben_soqia"
    t.float "aljnaben_naqlat"
    t.float "alaqeq_soqia"
    t.float "alaqeq_naqlat"
    t.float "lef_soqia"
    t.float "lef_naqlat"
    t.float "bnehasan_soqia"
    t.float "bnehasan_naqlat"
    t.float "alhlah_soqia"
    t.float "alhalah_naqlat"
    t.float "dos_soqia"
    t.float "dos_naqlat"
    t.float "blkhzmr_soqia"
    t.float "blkhzmr_naqlat"
    t.float "bneadwan_soqia"
    t.float "bneadwan_naqlat"
    t.float "althrawen_soqia"
    t.float "althrawen_naqlat"
    t.float "alqsmh_soqia"
    t.float "alqsmh_naqlat"
    t.float "nbhan_soqia"
    t.float "nbhan_naqlat"
    t.float "nkhal_soqia"
    t.float "nkhal_naqlat"
    t.float "kra_soqia"
    t.float "kra_naqlat"
    t.float "ghamidalznad_soqia"
    t.float "ghamidalznad_naqlat"
    t.float "tota_soqia"
    t.float "total_naqlat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_alashiab_alsoqia_on_user_id"
  end

  create_table "aljnabeen_tanks", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.float "almontag_tank"
    t.float "aljbeel_Tank"
    t.float "abdan_tank"
    t.float "alfryh_tank"
    t.float "algema_tank"
    t.float "shra_tank"
    t.float "alrahwa_tank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_aljnabeen_tanks_on_user_id"
  end

  create_table "aljnabens", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date"
    t.string "product", default: "product"
    t.float "purification_station"
    t.float "alrahwah_Well"
    t.float "quantity_sent_from_desalination"
    t.float "product_total"
    t.string "distribution", default: "distribution"
    t.string "networks", default: "networks"
    t.float "abdaan"
    t.float "alfrya"
    t.float "alqame"
    t.float "shra"
    t.float "alrahwah"
    t.float "networks_total"
    t.string "almnahel", default: "almnahel"
    t.float "aljbail_aljnaben"
    t.float "distribution_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_aljnabens_on_user_id"
  end

  create_table "aqiq_thrad_tanks", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.float "aqiq_station1"
    t.float "aqiq_station2"
    t.float "aqiq_station3"
    t.float "aqiq_station4"
    t.float "shahbah_tank"
    t.float "bani_kaber_tank"
    t.float "bani_dhabyan_station_tank"
    t.float "bani_dahabyan_tank"
    t.float "bani_hedah_tank"
    t.float "baljurashy_tank"
    t.float "thrad_station1_tank"
    t.float "susabad_station_tank"
    t.float "mushereef_tank"
    t.float "aunoq_tank"
    t.float "jarab_tank"
    t.float "blue_tank"
    t.float "thrad_station2_tank"
    t.float "thrad_station3_tank"
    t.float "thrad_station4_tank"
    t.float "almzree_tank"
    t.float "thrad_station5_tank"
    t.float "bani_saeed_tank"
    t.float "aom_gayth_tank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_aqiq_thrad_tanks_on_user_id"
  end

  create_table "aqiqs", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.string "product"
    t.float "aqiq_produce"
    t.float "thrad_produce"
    t.float "from_althlya_to_almzree"
    t.float "from_althlya_to_baljurashy"
    t.float "from_althlya_to_shahba"
    t.float "from_althlya_to_aradah"
    t.float "from_althlya_to_abdan"
    t.float "total_produce"
    t.string "distribution"
    t.float "albaha_shahba1"
    t.float "albaha_shahba2"
    t.float "almzree"
    t.float "bany_dhabyan"
    t.float "almusa"
    t.float "total_albaha_distribution"
    t.float "baljurashy"
    t.float "bany_kaber"
    t.float "alhbees"
    t.float "bany_saeed"
    t.float "bany_heda"
    t.float "algabar_alawla"
    t.float "algabar_alsufla"
    t.float "baljurashy_total_distribution"
    t.float "blue"
    t.float "jarab"
    t.float "alaunog"
    t.float "almshereef"
    t.float "alamer_faisal_Tank"
    t.float "aqiq_total_distribution"
    t.string "almnahel"
    t.float "almzree_mnahel"
    t.float "baljurashy_mnahel"
    t.float "bany_kabeer_mnahel"
    t.float "allehyan_mnahel"
    t.float "alsenaeeh_mnahel"
    t.float "almnahel_total"
    t.float "total_distribution"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_aqiqs_on_user_id"
  end

  create_table "aradah_tanks", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.float "aradah_plant_tank"
    t.float "naqal_plant1_tnak"
    t.float "mashoqah_plant2_tank"
    t.float "ras_manhal_plant3_tank"
    t.float "alqesma_plant4_tank"
    t.float "thraween_plant5_tank"
    t.float "bani_adwan_tank"
    t.float "mashoqa_tank"
    t.float "bedah_tank"
    t.float "al_musa_tank"
    t.float "marawah_tank"
    t.float "qaran_dabi_tank"
    t.float "alhalah_tank"
    t.float "balqazmar_tank"
    t.float "bani_hasan_tank"
    t.float "alqalab_tank"
    t.float "daws_tank"
    t.float "sayhan_tank"
    t.float "alkahelah_tank"
    t.float "balhakam_tank"
    t.float "aljwfaa_tank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_aradah_tanks_on_user_id"
  end

  create_table "aradahs", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date"
    t.string "product", default: "product"
    t.float "wells"
    t.float "from_thrawen_tank"
    t.float "product_total"
    t.string "distribution", default: "distribution"
    t.string "networks", default: "networks"
    t.float "qnet_alqsmh"
    t.float "qnet_althrawen"
    t.float "qnet_althrawen_alatawlah"
    t.float "qnet_bneedwan1"
    t.float "qnet_bneedwan2"
    t.float "qnet_bedah"
    t.float "qnet_mashoqah"
    t.float "mrawah"
    t.float "qnet_total"
    t.float "bnenet_blkhzmr"
    t.float "bnenet_bnehasan"
    t.float "bnenet_total"
    t.float "mnet_alhalah"
    t.float "mnet_alkhlb"
    t.float "mnet_dos"
    t.float "mnet_alkahla1"
    t.float "mnet_alkahla2"
    t.float "mnet_sehan"
    t.float "mnet_blhkm"
    t.float "mnet_aljawfaa"
    t.float "mnet_total"
    t.float "bnet_almosa"
    t.float "bnet_qrnthbe"
    t.float "bnet_total"
    t.float "network_total"
    t.string "almnahel", default: "almnahel"
    t.float "qshep_nkhal"
    t.float "qshep_alqsmh"
    t.float "qshep_althrawen"
    t.float "qshep_bneodwan"
    t.float "qshep_mashoqah"
    t.float "qshep_total"
    t.float "bneshep_blkhzmr"
    t.float "bneshep_bnehasan"
    t.float "bneshep_total"
    t.float "mshep_alhalah"
    t.float "mshep_dos"
    t.float "mshep_total"
    t.float "bshep_almosa"
    t.float "mnahel_total"
    t.float "distripution_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "from_altahliah_to_naqal"
    t.index ["user_id"], name: "index_aradahs_on_user_id"
  end

  create_table "dor_masters", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_dor_masters_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.bigint "assignee_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assignee_id"], name: "index_projects_on_assignee_id"
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "smallprojects", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date"
    t.string "smallproject", default: "smallproject"
    t.float "total_wo_thrad_btat"
    t.float "product_thrad"
    t.float "product_btat"
    t.float "product_total"
    t.string "detailed_production", default: "detailed_production"
    t.float "albaha"
    t.float "bljorashy"
    t.float "alqora"
    t.float "almandaq"
    t.float "alaqeq"
    t.float "almekhwah"
    t.float "qolwah"
    t.float "alhgrah"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_smallprojects_on_user_id"
  end

  create_table "tohamhalshamel_tanks", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.float "almaqwa_plant_tank"
    t.float "gamed_znad_tank1"
    t.float "gamed_znad_tank2"
    t.float "gamed_znad_tajmee3_tank3"
    t.float "nasbah_plant_tank"
    t.float "almswadah_tank"
    t.float "nasbah_tank"
    t.float "alahsabah_tank"
    t.float "nawan_tank"
    t.float "maqwah_tajme3_tank"
    t.float "maqwah_north_plant_tank"
    t.float "maqwah_north_tank"
    t.float "mamna_plant_tank"
    t.float "mamna_tank"
    t.float "nera_plant1_tank"
    t.float "nera_plant2_tank"
    t.float "nera3_tank"
    t.float "qelwah_plant_tank"
    t.float "qelwah_tajme3_Tank"
    t.float "dogah_plant_tank"
    t.float "dogah_tank"
    t.float "rmaydah_tank"
    t.float "hajrah_tank"
    t.float "bani_ata_plant_tank"
    t.float "bani_ata_tank"
    t.float "aljareen_tank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tohamhalshamel_tanks_on_user_id"
  end

  create_table "tohamhalshamels", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.date "date"
    t.string "product", default: "product"
    t.float "alahsabiawell_almekhwah"
    t.float "doqahwell_qlwah"
    t.float "doqatabdulhamedwell"
    t.float "elepwell_alhjrah"
    t.float "alrmedahwell"
    t.float "product_total"
    t.string "distribution", default: "distribution"
    t.string "networks", default: "networks"
    t.float "almekhwah"
    t.float "qlwah"
    t.float "doqatabdulhamed"
    t.float "alhjrah"
    t.float "networks_total"
    t.string "almnahel", default: "almnahel"
    t.float "ghamidalznad"
    t.float "nsbah"
    t.float "almswdah"
    t.float "nawan"
    t.float "shmalalmekhwah"
    t.float "nera"
    t.float "mmna"
    t.float "bneatta"
    t.float "algreen"
    t.float "alrmedah"
    t.float "almnahl_total"
    t.float "distribution_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tohamhalshamels_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.integer "mobile"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "project", default: [0], array: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "yabs", force: :cascade do |t|
    t.date "date"
    t.bigint "user_id", null: false
    t.float "yabs_produce"
    t.float "yabs_distribution"
    t.float "batat_distribution"
    t.float "yabs_tank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_yabs_on_user_id"
  end

  add_foreign_key "alashiab_alsoqia", "users"
  add_foreign_key "aljnabeen_tanks", "users"
  add_foreign_key "aljnabens", "users"
  add_foreign_key "aqiq_thrad_tanks", "users"
  add_foreign_key "aqiqs", "users"
  add_foreign_key "aradah_tanks", "users"
  add_foreign_key "aradahs", "users"
  add_foreign_key "dor_masters", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "projects", "users", column: "assignee_id"
  add_foreign_key "smallprojects", "users"
  add_foreign_key "tohamhalshamel_tanks", "users"
  add_foreign_key "tohamhalshamels", "users"
  add_foreign_key "yabs", "users"
end
