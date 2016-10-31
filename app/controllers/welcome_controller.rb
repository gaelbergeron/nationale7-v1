class WelcomeController < ApplicationController

  def index
    @cars = Car.where(statut: 'Actif').last(3).reverse
    @profile_photos = Photo.where(car_id: @cars.map(&:id)).where(description: 'Profile')
  end

  def comment_ca_marche
    prepare_meta_tags(
      title: "Tout savoir sur l'expérience Nationale 7 pour acheter et vendre.",
      description: "Découvrir l'expérience Nationale 7 pour vendre sa voiture au meilleur prix et acheter sa voiture d'occasion, inspectée et garantie, en toute simplicité.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Decouvrir+experience+pour+acheter+et+vendre+sa+voiture+occasion.png",
      reverse: true
    )

    set_meta_tags og: {
      title: "Tout savoir sur l'expérience Nationale 7 pour acheter et vendre.",
      description: "Découvrir l'expérience Nationale 7 pour vendre sa voiture au meilleur prix et acheter sa voiture d'occasion, inspectée et garantie, en toute simplicité.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Decouvrir+experience+pour+acheter+et+vendre+sa+voiture+occasion.png"
    }
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

