# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_27_155215) do

  create_table "hospital_ids", force: :cascade do |t|
  end

  create_table "members", force: :cascade do |t|
    t.string "him_name"
    t.string "him_id"
    t.string "hospital"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "hospital_code"
    t.boolean "admin"
  end

  create_table "persons", force: :cascade do |t|
    t.string "him_name"
    t.string "him_id"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "hospital"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "mw"
    t.string "birth"
    t.string "record_n"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "person_id"
    t.integer "hospital_id"
    t.string "register_year"
    t.text "linking_no"
    t.string "register_hp"
    t.string "clinical_dp"
    t.text "id_no"
    t.decimal "treat_startday"
    t.decimal "surg_date"
    t.string "surg_age"
    t.string "life_and_death"
    t.string "cause_of_death"
    t.string "recu"
    t.string "recu_type"
    t.decimal "recu_date"
    t.string "recu_registers"
    t.decimal "last_survdate"
    t.string "surv_date"
    t.string "surv_days"
    t.string "surv_month_year"
    t.string "outcome_age"
    t.string "disease"
    t.string "stomach"
    t.string "ft_grt_lesion"
    t.string "ft_grt_period"
    t.string "residual_gascan"
    t.string "non_eptumor"
    t.string "other_malitumor"
    t.string "erathera"
    t.string "chemo_pr"
    t.date "pr_treatday"
    t.string "chemo_pe"
    t.string "chemo_po"
    t.date "po_treatday"
    t.string "lmmuthera"
    t.date "lmmuthera_startday"
    t.string "radithera"
    t.date "radithera_startday"
    t.string "lotlesion1"
    t.string "lotlesion2"
    t.string "lotlesion3"
    t.string "lotlesion4"
    t.string "lotlesion_cir"
    t.string "max_tumordia"
    t.string "lym_dene"
    t.text "surg_reachingmethod"
    t.text "surg_type"
    t.string "cro_1"
    t.string "cro_2"
    t.string "cro_3"
    t.string "cro_4"
    t.text "recon"
    t.text "tissuetp_group"
    t.string "lym_invasion"
    t.string "veno_invasion"
    t.string "palo_depth"
    t.string "peri_cld"
    t.string "no_lymnode_meta"
    t.string "no_lymdene"
    t.string "pathology_n"
    t.string "gene_mascotype"
    t.string "tp0_subgroup"
    t.string "gene_depth"
    t.string "sm_subgroup"
    t.string "t4_organ1"
    t.string "t4_organ2"
    t.string "t4_organ3"
    t.string "gene_n"
    t.string "livermeta_h"
    t.string "perimeta_p"
    t.string "remote_meta"
    t.string "remote_metapart1"
    t.string "remote_metapart2"
    t.string "remote_metapart3"
    t.string "remote_metapart4"
    t.string "pro_stump"
    t.string "dis_stump"
    t.string "resi_tumour"
    t.string "t"
    t.string "n"
    t.string "m"
    t.string "stage"
  end

end
