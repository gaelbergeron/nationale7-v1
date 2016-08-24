ActiveAdmin.register Car do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  
  permit_params :reference_interne,       
                :statut, 
                :commentaire_general,
                :marque,
                :modele,
                :annee,
                :motorisation,
                :finition,
                :energie,
                :transmission,
                :nombre_portes,
                :nombre_places,
                :kilometrage,
                :nombre_proprietaires,
                :premiere_mise_en_circulation,
                :numero_serie,
                :couleur_exterieure,
                :matiere_interieure,
                :couleur_interieure,
                :car_options,
                :puissance_din,
                :puissance_fiscale,
                :cylindree,
                :nombre_cylindres,
                :nombre_soupapes,
                :roues_motrices,
                :consommation_urbain,
                :consommation_mixte,
                :consommation_extra_urbain,
                :emission_co2,
                :note_conformite_administrative,
                :note_entretien,
                :note_securite,
                :note_mecanique,
                :note_carrosserie,
                :note_interieur,
                :certificat_immatriculation,
                :certificat_immatriculation_commentaire,
                :certificat_situation,
                :certificat_situation_commentaire,
                :facture_achat,
                :facture_achat_commentaire,
                :carnet_entretien,
                :carnet_entretien_commentaire,
                :notice_utilisation,
                :notice_utilisation_commentaire,
                :facture_entretien,
                :facture_entretien_commentaire,
                :double_cles,
                :double_cles_commentaire,
                :controle_technique,
                :controle_technique_commentaire,
                :echeance_controle_technique,
                :echeance_revision,
                :echeance_remplacement_distribution,
                :echeance_entretien_climatisation,
                :presence_airbag,
                :desactivation_airbag_passager,
                :desactivation_airbag_passager_commentaire,
                :presence_ceintures,
                :fonctionnement_ceintures,
                :optiques_feux_avants,
                :repetiteurs,
                :feux_arrieres,
                :fonctionnement_chauffage_ventilation,
                :fonctionnement_ordinateur_instruments,
                :presence_retroviseurs,
                :etat_retroviseurs,
                :fonctionnement_retroviseurs,
                :fonctionnement_essuie_glaces,
                :etat_balais,
                :frein_main,
                :efficacite_freinage,
                :freinage_en_ligne,
                :efficacite_suspension,
                :accelere_en_ligne,
                :roule_en_ligne,
                :etat_direction,
                :pneu_AV_largeur,
                :pneu_AV_hauteur,
                :pneu_AV_diametre,
                :pneu_AV_charge,
                :pneu_AR_largeur,
                :pneu_AR_hauteur,
                :pneu_AR_diametre,
                :pneu_AR_charge,
                :pneumatiques_conformes,
                :pneu_AVD_etat,
                :pneu_AVD_usure,
                :pneu_AVG_etat,
                :pneu_AVG_usure,
                :pneu_ARD_etat,
                :pneu_ARD_usure,
                :pneu_ARG_etat,
                :pneu_ARG_usure,
                :roue_secours_etat,
                :roue_secours_usure,
                :presence_outillage_bord,
                :presence_necessaire_anti_crevaison,
                :fonctionnement_sieges,
                :aspect_compartiment_moteur,
                :niveau_huile_moteur,
                :fuite_huile_moteur,
                :niveau_liquide_frein,
                :fuite_liquide_frein,
                :niveau_huile_DA,
                :fuite_huile_DA,
                :niveau_liquide_refroidissement,
                :fuite_liquide_refroidissement,
                :fluides_etrangers_dans_liquide_refroidissement,
                :fluides_etrangers_dans_huile_moteur,
                :demarrage_froid,
                :demarrage_chaud,
                :fonctionnement_demarreur,
                :souffle_bouchon_huile,
                :presence_fumee_echappement,
                :charge_alternateur,
                :fonctionnement_embrayage,
                :presence_jeu_levier_vitesse,
                :passage_vitesses,
                :accelerations_franches,
                :presence_bruit_roulement,
                :presence_bruit_trains_roulants,
                :presence_bruit_echappement,
                :fonctionnement_regulateur_vitesse,
                :fonctionnement_limiteur_vitesse,
                :fonctionnement_aide_stationnement,
                :etat_vitrage,
                :etat_capote,
                :difference_teinte_carrosserie,
                :ajustement_elements_carrosserie,
                :presence_dommages_traces_reparation,
                :presence_corrosion,
                :fonctionnement_fermeture_centralisee,
                :etat_planche_bord,
                :etat_garnitures,
                :etat_sieges,
                :etat_moquettes,
                :fonctionnement_eclairage_interieur,
                :fonctionnement_vitres_electriques,
                :fonctionnement_climatisation,
                :fonctionnement_autoradio_commandes,
                :fonctionnement_GPS,
                :prix_n7,
                :type_garantie ,
                :echeance_garantie

  index do
    id_column
    column :reference_interne
    column :statut
    column :commentaire_general
    column :marque
    column :modele
    column :annee
    column :motorisation
    column :finition
    column :energie
    column :transmission
    column :nombre_portes
    column :nombre_places
    column :kilometrage
    column :nombre_proprietaires
    column :premiere_mise_en_circulation
    column :numero_serie
    column :couleur_exterieure
    column :matiere_interieure
    column :couleur_interieure
    column :car_options
    column :puissance_din
    column :puissance_fiscale
    column :cylindree
    column :nombre_cylindres
    column :nombre_soupapes
    column :roues_motrices
    column :consommation_urbain
    column :consommation_mixte
    column :consommation_extra_urbain
    column :emission_co2
    column :note_conformite_administrative
    column :note_entretien
    column :note_securite
    column :note_mecanique
    column :note_carrosserie
    column :note_interieur
    column :certificat_immatriculation
    column :certificat_immatriculation_commentaire
    column :certificat_situation
    column :certificat_situation_commentaire
    column :facture_achat
    column :facture_achat_commentaire
    column :carnet_entretien
    column :carnet_entretien_commentaire
    column :notice_utilisation
    column :notice_utilisation_commentaire
    column :facture_entretien
    column :facture_entretien_commentaire
    column :double_cles
    column :double_cles_commentaire
    column :controle_technique
    column :controle_technique_commentaire
    column :echeance_controle_technique
    column :echeance_revision
    column :echeance_remplacement_distribution
    column :echeance_entretien_climatisation
    column :presence_airbag
    column :desactivation_airbag_passager
    column :desactivation_airbag_passager_commentaire
    column :presence_ceintures
    column :fonctionnement_ceintures
    column :optiques_feux_avants
    column :repetiteurs
    column :feux_arrieres
    column :fonctionnement_chauffage_ventilation
    column :fonctionnement_ordinateur_instruments
    column :presence_retroviseurs
    column :etat_retroviseurs
    column :fonctionnement_retroviseurs
    column :fonctionnement_essuie_glaces
    column :etat_balais
    column :frein_main
    column :efficacite_freinage
    column :freinage_en_ligne
    column :efficacite_suspension
    column :accelere_en_ligne
    column :roule_en_ligne
    column :etat_direction
    column :pneu_AV_largeur
    column :pneu_AV_hauteur
    column :pneu_AV_diametre
    column :pneu_AV_charge
    column :pneu_AR_largeur
    column :pneu_AR_hauteur
    column :pneu_AR_diametre
    column :pneu_AR_charge
    column :pneumatiques_conformes
    column :pneu_AVD_etat
    column :pneu_AVD_usure
    column :pneu_AVG_etat
    column :pneu_AVG_usure
    column :pneu_ARD_etat
    column :pneu_ARD_usure
    column :pneu_ARG_etat
    column :pneu_ARG_usure
    column :roue_secours_etat
    column :roue_secours_usure
    column :presence_outillage_bord
    column :presence_necessaire_anti_crevaison
    column :fonctionnement_sieges
    column :aspect_compartiment_moteur
    column :niveau_huile_moteur
    column :fuite_huile_moteur
    column :niveau_liquide_frein
    column :fuite_liquide_frein
    column :niveau_huile_DA
    column :fuite_huile_DA
    column :niveau_liquide_refroidissement
    column :fuite_liquide_refroidissement
    column :fluides_etrangers_dans_liquide_refroidissement
    column :fluides_etrangers_dans_huile_moteur
    column :demarrage_froid
    column :demarrage_chaud
    column :fonctionnement_demarreur
    column :souffle_bouchon_huile
    column :presence_fumee_echappement
    column :charge_alternateur
    column :fonctionnement_embrayage
    column :presence_jeu_levier_vitesse
    column :passage_vitesses
    column :accelerations_franches
    column :presence_bruit_roulement
    column :presence_bruit_trains_roulants
    column :presence_bruit_echappement
    column :fonctionnement_regulateur_vitesse
    column :fonctionnement_limiteur_vitesse
    column :fonctionnement_aide_stationnement
    column :etat_vitrage
    column :etat_capote
    column :difference_teinte_carrosserie
    column :ajustement_elements_carrosserie
    column :presence_dommages_traces_reparation
    column :presence_corrosion
    column :fonctionnement_fermeture_centralisee
    column :etat_planche_bord
    column :etat_garnitures
    column :etat_sieges
    column :etat_moquettes
    column :fonctionnement_eclairage_interieur
    column :fonctionnement_vitres_electriques
    column :fonctionnement_climatisation
    column :fonctionnement_autoradio_commandes
    column :fonctionnement_GPS
    column :prix_n7
    column :type_garantie 
    column :echeance_garantie
    column :created_at
    column :updated_at
    actions
  end

# form do |f|
#   f.inputs do
#     f.input :model, as: :select, collection: ['foo', 'bar', 'baz']
#   end
#   f.actions
# end

end
