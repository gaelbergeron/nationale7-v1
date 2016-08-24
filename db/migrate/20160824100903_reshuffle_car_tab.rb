class ReshuffleCarTab < ActiveRecord::Migration
  def change
    add_column :cars, :reference_interne, :integer
    rename_column :cars, :status, :statut
    # rename_column :cars, :make, :marque
    rename_column :cars, :model, :modele
    rename_column :cars, :year, :annee
    rename_column :cars, :engine, :motorisation
    rename_column :cars, :version_trim, :finition
    rename_column :cars, :mileage, :kilometrage
    rename_column :cars, :fuel_type, :energie
    # remove_column :cars, :inspector, :references
    rename_column :cars, :number_of_doors, :nombre_portes
    rename_column :cars, :number_of_seats, :nombre_places
    add_column :cars, :nombre_proprietaires, :integer
    add_column :cars, :premiere_mise_en_circulation, :date
    rename_column :cars, :vin_number, :numero_serie
    rename_column :cars, :exterior_paint, :couleur_exterieure
    rename_column :cars, :interior_type, :matiere_interieure
    rename_column :cars, :interior_paint, :couleur_interieure
    rename_column :cars, :horsepower, :puissance_din
    rename_column :cars, :fiscal_horsepower, :puissance_fiscale
    rename_column :cars, :engine_size, :cylindree
    rename_column :cars, :number_of_cylinders, :nombre_cylindres
    rename_column :cars, :number_of_valves, :nombre_soupapes
    add_column :cars, :roues_motrices, :string
    add_column :cars, :consommation_urbain, :integer
    rename_column :cars, :combined_l_100km, :consommation_mixte
    add_column :cars, :consommation_extra_urbain, :integer
    rename_column :cars, :co2_emissions, :emission_co2
    rename_column :cars, :owner_comment, :commentaire_general
    rename_column :cars, :vroom_price, :prix_n7
    
    remove_column :cars, :inspector_comment, :text
    # remove_reference(:cars, :inspectors)
    remove_column :cars, :date_of_inspection, :datetime     
    remove_column :cars, :transaction_price, :integer
    remove_column :cars, :location_city, :string
    remove_column :cars, :location_department, :string  
    remove_column :cars, :body_type, :string   

    # -------- synthèse expertise --------
    add_column :cars, :note_conformite_administrative, :integer
    add_column :cars, :note_entretien, :integer
    add_column :cars, :note_securite, :integer
    add_column :cars, :note_mecanique, :integer
    add_column :cars, :note_carrosserie, :integer
    add_column :cars, :note_interieur, :integer

    # -------- historique et entretien --------
    add_column :cars, :certificat_immatriculation, :boolean
    add_column :cars, :certificat_immatriculation_commentaire, :string
    add_column :cars, :certificat_situation, :boolean
    add_column :cars, :certificat_situation_commentaire, :string
    add_column :cars, :facture_achat, :boolean
    add_column :cars, :facture_achat_commentaire, :string
    add_column :cars, :carnet_entretien, :boolean
    add_column :cars, :carnet_entretien_commentaire, :string
    add_column :cars, :notice_utilisation, :boolean
    add_column :cars, :notice_utilisation_commentaire, :string
    add_column :cars, :facture_entretien, :boolean
    add_column :cars, :facture_entretien_commentaire, :string
    add_column :cars, :double_cles, :boolean
    add_column :cars, :double_cles_commentaire, :string
    add_column :cars, :controle_technique, :boolean
    add_column :cars, :controle_technique_commentaire, :string
    add_column :cars, :echeance_controle_technique, :date
    add_column :cars, :echeance_revision, :date
    add_column :cars, :echeance_remplacement_distribution, :string
    add_column :cars, :echeance_entretien_climatisation, :date

    # -------- sécurité --------
    add_column :cars, :presence_airbag, :boolean
    add_column :cars, :desactivation_airbag_passager, :boolean
    add_column :cars, :desactivation_airbag_passager_commentaire, :string
    add_column :cars, :presence_ceintures, :boolean
    add_column :cars, :fonctionnement_ceintures, :string
    add_column :cars, :optiques_feux_avants, :string
    add_column :cars, :repetiteurs, :string
    add_column :cars, :feux_arrieres, :string
    add_column :cars, :fonctionnement_chauffage_ventilation, :boolean
    add_column :cars, :fonctionnement_ordinateur_instruments, :boolean
    add_column :cars, :presence_retroviseurs, :boolean
    add_column :cars, :etat_retroviseurs, :string
    add_column :cars, :fonctionnement_retroviseurs, :boolean
    add_column :cars, :fonctionnement_essuie_glaces, :boolean
    add_column :cars, :etat_balais, :string
    add_column :cars, :frein_main, :string
    add_column :cars, :efficacite_freinage, :string
    add_column :cars, :freinage_en_ligne, :boolean
    add_column :cars, :efficacite_suspension, :string
    add_column :cars, :accelere_en_ligne, :boolean
    add_column :cars, :roule_en_ligne, :boolean
    add_column :cars, :etat_direction, :string
    add_column :cars, :pneu_AV_largeur, :integer
    add_column :cars, :pneu_AV_hauteur, :integer
    add_column :cars, :pneu_AV_diametre, :integer
    add_column :cars, :pneu_AV_charge, :integer
    add_column :cars, :pneu_AR_largeur, :integer
    add_column :cars, :pneu_AR_hauteur, :integer
    add_column :cars, :pneu_AR_diametre, :integer
    add_column :cars, :pneu_AR_charge, :integer
    add_column :cars, :pneumatiques_conformes, :boolean
    add_column :cars, :pneu_AVD_etat, :string
    add_column :cars, :pneu_AVD_usure, :integer
    add_column :cars, :pneu_AVG_etat, :string
    add_column :cars, :pneu_AVG_usure, :integer
    add_column :cars, :pneu_ARD_etat, :string
    add_column :cars, :pneu_ARD_usure, :integer
    add_column :cars, :pneu_ARG_etat, :string
    add_column :cars, :pneu_ARG_usure, :integer
    add_column :cars, :roue_secours_etat, :string
    add_column :cars, :roue_secours_usure, :integer
    add_column :cars, :presence_outillage_bord, :string
    add_column :cars, :presence_necessaire_anti_crevaison, :string
    add_column :cars, :fonctionnement_sieges, :string

    # -------- mécanique --------
    add_column :cars, :aspect_compartiment_moteur, :string
    add_column :cars, :niveau_huile_moteur, :string
    add_column :cars, :fuite_huile_moteur, :boolean
    add_column :cars, :niveau_liquide_frein, :string
    add_column :cars, :fuite_liquide_frein, :boolean
    add_column :cars, :niveau_huile_DA, :string
    add_column :cars, :fuite_huile_DA, :boolean
    add_column :cars, :niveau_liquide_refroidissement, :string
    add_column :cars, :fuite_liquide_refroidissement, :boolean
    add_column :cars, :fluides_etrangers_dans_liquide_refroidissement, :boolean
    add_column :cars, :fluides_etrangers_dans_huile_moteur, :boolean
    add_column :cars, :demarrage_froid, :string
    add_column :cars, :demarrage_chaud, :string
    add_column :cars, :fonctionnement_demarreur, :boolean
    add_column :cars, :souffle_bouchon_huile, :string
    add_column :cars, :presence_fumee_echappement, :boolean
    add_column :cars, :charge_alternateur, :string
    add_column :cars, :fonctionnement_embrayage, :string
    add_column :cars, :presence_jeu_levier_vitesse, :string
    add_column :cars, :passage_vitesses, :string
    add_column :cars, :accelerations_franches, :string
    add_column :cars, :presence_bruit_roulement, :boolean
    add_column :cars, :presence_bruit_trains_roulants, :boolean
    add_column :cars, :presence_bruit_echappement, :boolean
    add_column :cars, :fonctionnement_regulateur_vitesse, :string
    add_column :cars, :fonctionnement_limiteur_vitesse, :string
    add_column :cars, :fonctionnement_aide_stationnement, :string

    # -------- carrosserie --------
    add_column :cars, :etat_vitrage, :string
    add_column :cars, :etat_capote, :string
    add_column :cars, :difference_teinte_carrosserie, :string
    add_column :cars, :ajustement_elements_carrosserie, :string
    add_column :cars, :presence_dommages_traces_reparation, :text
    add_column :cars, :presence_corrosion, :string
    
    # -------- intérieur --------
    add_column :cars, :fonctionnement_fermeture_centralisee, :boolean
    add_column :cars, :etat_planche_bord, :string
    add_column :cars, :etat_garnitures, :string
    add_column :cars, :etat_sieges, :string
    add_column :cars, :etat_moquettes, :string
    add_column :cars, :fonctionnement_eclairage_interieur, :boolean
    add_column :cars, :fonctionnement_vitres_electriques, :boolean
    add_column :cars, :fonctionnement_climatisation, :boolean
    add_column :cars, :fonctionnement_autoradio_commandes, :boolean
    add_column :cars, :fonctionnement_GPS, :string

    rename_column :cars, :manufacturer_warranty, :type_garantie
    add_column :cars, :echeance_garantie, :date 

  end
end