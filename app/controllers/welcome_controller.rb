class WelcomeController < ApplicationController

  def index
    @cars = Car.last(3).reverse
    @profile_photos = Photo.where(car_id: @cars.map(&:id)).where(description: 'Profile')
  end

  def comment_ca_marche
  end

  def les_prix_nationale_7
  end

  def expertise_nationale_7
  end

  def a_propos_de_nationale_7
  end

  def foire_aux_questions
  end

  def conditions_generales_de_vente
  end

  def mentions_legales
  end

end

