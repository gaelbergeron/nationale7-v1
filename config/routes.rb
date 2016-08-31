Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  #Cars controller
  root 'welcome#index'
  get 'acheter' => 'cars#acheter'
  get 'details' => 'cars#details'
  get 'vendre' => 'cars#vendre'

  # Welcome controller
  get 'apropos' => 'welcome#apropos'
  get 'faq' => 'welcome#faq'
  get 'commentcamarche' => 'welcome#commentcamarche'
  get 'prixn7' => 'welcome#prixn7'
  get 'expertisen7' => 'welcome#expertisen7'
  get 'cgv' => 'welcome#cgv'
  get 'mentionslegales' => 'welcome#mentionslegales'

  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]
end
