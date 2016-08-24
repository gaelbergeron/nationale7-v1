# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160824100903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "car_clients", force: :cascade do |t|
    t.integer  "car_id"
    t.integer  "client_id"
    t.string   "position"
    t.integer  "inspector_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "car_options", force: :cascade do |t|
    t.integer  "car_id"
    t.integer  "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "statut"
    t.string   "marque"
    t.string   "modele"
    t.integer  "annee"
    t.string   "motorisation"
    t.string   "finition"
    t.string   "energie"
    t.string   "transmission"
    t.integer  "nombre_portes"
    t.integer  "nombre_places"
    t.integer  "kilometrage"
    t.string   "numero_serie"
    t.string   "couleur_exterieure"
    t.string   "matiere_interieure"
    t.string   "couleur_interieure"
    t.string   "type_garantie"
    t.integer  "cylindree"
    t.integer  "puissance_din"
    t.integer  "puissance_fiscale"
    t.integer  "nombre_cylindres"
    t.integer  "nombre_soupapes"
    t.integer  "consommation_mixte"
    t.integer  "emission_co2"
    t.integer  "inspector_id"
    t.integer  "prix_n7"
    t.integer  "dealer_price"
    t.text     "commentaire_general"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.integer  "reference_interne"
    t.integer  "nombre_proprietaires"
    t.date     "premiere_mise_en_circulation"
    t.string   "roues_motrices"
    t.integer  "consommation_urbain"
    t.integer  "consommation_extra_urbain"
    t.integer  "note_conformite_administrative"
    t.integer  "note_entretien"
    t.integer  "note_securite"
    t.integer  "note_mecanique"
    t.integer  "note_carrosserie"
    t.integer  "note_interieur"
    t.boolean  "certificat_immatriculation"
    t.string   "certificat_immatriculation_commentaire"
    t.boolean  "certificat_situation"
    t.string   "certificat_situation_commentaire"
    t.boolean  "facture_achat"
    t.string   "facture_achat_commentaire"
    t.boolean  "carnet_entretien"
    t.string   "carnet_entretien_commentaire"
    t.boolean  "notice_utilisation"
    t.string   "notice_utilisation_commentaire"
    t.boolean  "facture_entretien"
    t.string   "facture_entretien_commentaire"
    t.boolean  "double_cles"
    t.string   "double_cles_commentaire"
    t.boolean  "controle_technique"
    t.string   "controle_technique_commentaire"
    t.date     "echeance_controle_technique"
    t.date     "echeance_revision"
    t.string   "echeance_remplacement_distribution"
    t.date     "echeance_entretien_climatisation"
    t.boolean  "presence_airbag"
    t.boolean  "desactivation_airbag_passager"
    t.string   "desactivation_airbag_passager_commentaire"
    t.boolean  "presence_ceintures"
    t.string   "fonctionnement_ceintures"
    t.string   "optiques_feux_avants"
    t.string   "repetiteurs"
    t.string   "feux_arrieres"
    t.boolean  "fonctionnement_chauffage_ventilation"
    t.boolean  "fonctionnement_ordinateur_instruments"
    t.boolean  "presence_retroviseurs"
    t.string   "etat_retroviseurs"
    t.boolean  "fonctionnement_retroviseurs"
    t.boolean  "fonctionnement_essuie_glaces"
    t.string   "etat_balais"
    t.string   "frein_main"
    t.string   "efficacite_freinage"
    t.boolean  "freinage_en_ligne"
    t.string   "efficacite_suspension"
    t.boolean  "accelere_en_ligne"
    t.boolean  "roule_en_ligne"
    t.string   "etat_direction"
    t.integer  "pneu_AV_largeur"
    t.integer  "pneu_AV_hauteur"
    t.integer  "pneu_AV_diametre"
    t.integer  "pneu_AV_charge"
    t.integer  "pneu_AR_largeur"
    t.integer  "pneu_AR_hauteur"
    t.integer  "pneu_AR_diametre"
    t.integer  "pneu_AR_charge"
    t.boolean  "pneumatiques_conformes"
    t.string   "pneu_AVD_etat"
    t.integer  "pneu_AVD_usure"
    t.string   "pneu_AVG_etat"
    t.integer  "pneu_AVG_usure"
    t.string   "pneu_ARD_etat"
    t.integer  "pneu_ARD_usure"
    t.string   "pneu_ARG_etat"
    t.integer  "pneu_ARG_usure"
    t.string   "roue_secours_etat"
    t.integer  "roue_secours_usure"
    t.string   "presence_outillage_bord"
    t.string   "presence_necessaire_anti_crevaison"
    t.string   "fonctionnement_sieges"
    t.string   "aspect_compartiment_moteur"
    t.string   "niveau_huile_moteur"
    t.boolean  "fuite_huile_moteur"
    t.string   "niveau_liquide_frein"
    t.boolean  "fuite_liquide_frein"
    t.string   "niveau_huile_DA"
    t.boolean  "fuite_huile_DA"
    t.string   "niveau_liquide_refroidissement"
    t.boolean  "fuite_liquide_refroidissement"
    t.boolean  "fluides_etrangers_dans_liquide_refroidissement"
    t.boolean  "fluides_etrangers_dans_huile_moteur"
    t.string   "demarrage_froid"
    t.string   "demarrage_chaud"
    t.boolean  "fonctionnement_demarreur"
    t.string   "souffle_bouchon_huile"
    t.boolean  "presence_fumee_echappement"
    t.string   "charge_alternateur"
    t.string   "fonctionnement_embrayage"
    t.string   "presence_jeu_levier_vitesse"
    t.string   "passage_vitesses"
    t.string   "accelerations_franches"
    t.boolean  "presence_bruit_roulement"
    t.boolean  "presence_bruit_trains_roulants"
    t.boolean  "presence_bruit_echappement"
    t.string   "fonctionnement_regulateur_vitesse"
    t.string   "fonctionnement_limiteur_vitesse"
    t.string   "fonctionnement_aide_stationnement"
    t.string   "etat_vitrage"
    t.string   "etat_capote"
    t.string   "difference_teinte_carrosserie"
    t.string   "ajustement_elements_carrosserie"
    t.text     "presence_dommages_traces_reparation"
    t.string   "presence_corrosion"
    t.boolean  "fonctionnement_fermeture_centralisee"
    t.string   "etat_planche_bord"
    t.string   "etat_garnitures"
    t.string   "etat_sieges"
    t.string   "etat_moquettes"
    t.boolean  "fonctionnement_eclairage_interieur"
    t.boolean  "fonctionnement_vitres_electriques"
    t.boolean  "fonctionnement_climatisation"
    t.boolean  "fonctionnement_autoradio_commandes"
    t.string   "fonctionnement_GPS"
    t.date     "echeance_garantie"
  end

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "address"
    t.string   "city"
    t.integer  "zip_code"
    t.datetime "birth_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "inspectors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_picture_url"
    t.string   "location_city"
    t.string   "location_department"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "options", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "description"
    t.string   "comment"
    t.string   "picture_url"
    t.string   "type"
    t.integer  "car_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
