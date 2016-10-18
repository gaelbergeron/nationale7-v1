Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  root 'welcome#index'
  #Cars controller
  get '/acheter-voiture-occasion', to: 'cars#acheter_voiture_occasion', as: 'acheter_voiture_occasion'
  
  get '/vendre-voiture-occasion', to: 'cars#vendre_voiture_occasion', as: 'vendre_voiture_occasion'

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

  resources 'cars', :path => "acheter_voiture_occasion"

  resources 'annonces'
  # get '/annonces', to: 'annonces#annonces', as: 'annonces'

  get '/sitemap.xml.gz', to: redirect("https://s3-eu-west-1.amazonaws.com/nationale7v1/sitemaps/sitemap.xml.gz")

end
