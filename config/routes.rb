Rails.application.routes.draw do
  
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
  get 'cgv' => 'welcome#cgv'
  get 'mentionslegales' => 'welcome#mentionslegales'

end
