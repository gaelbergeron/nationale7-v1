Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  #Cars controller
  root 'welcome#index'
  get '/acheter-voiture-occasion-certifiee-garantie', to: 'cars#acheter_voiture_occasion_certifiee_garantie', as: 'acheter_voiture_occasion_certifiee_garantie'
  
  get '/vendre-voiture-occasion-meilleur-prix', to: 'cars#vendre_voiture_occasion_meilleur_prix', as: 'vendre_voiture_occasion_meilleur_prix'

  # get 'vendre' => 'cars#vendre'

  # Welcome controller
  get '/a-propos-de-nationale-7', to: 'welcome#a_propos_de_nationale_7', as: 'a_propos_de_nationale_7'
  get '/foire-aux-questions', to: 'welcome#foire_aux_questions', as: 'foire_aux_questions'
  get '/comment-ca-marche', to: 'welcome#comment_ca_marche', as: 'comment_ca_marche'
  # get 'commentcamarche' => 'welcome#commentcamarche'
  get '/les-prix-nationale-7', to: 'welcome#les_prix_nationale_7', as: 'les_prix_nationale_7'
  get '/expertise-nationale-7', to: 'welcome#expertise_nationale_7', as: 'expertise_nationale_7'

  get '/conditions-generales-de-vente', to: 'welcome#conditions_generales_de_vente', as: 'conditions_generales_de_vente'

  # get 'cgv' => 'welcome#cgv'
  # get 'mentionslegales' => 'welcome#mentionslegales'
  get '/mentions-legales', to: 'welcome#mentions_legales', as: 'mentions_legales'


  match '/contacts', to: 'contacts#new', via: 'get'
  resources :contacts
  match '/evaluations', to: 'evaluations#new', via: 'get'
  resources :evaluations

  resources 'cars', :path => "voitures"

end
