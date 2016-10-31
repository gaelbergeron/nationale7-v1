class WelcomeController < ApplicationController

  def index
    @cars = Car.where(statut: 'Actif').last(3).reverse
    @profile_photos = Photo.where(car_id: @cars.map(&:id)).where(description: 'Profile')
  end

  def comment_ca_marche

    prepare_meta_tags(
      title: "Tout savoir pour acheter et vendre",
      description: "Découvrir l'expérience Nationale 7 pour vendre sa voiture au meilleur prix et acheter sa voiture d'occasion, inspectée et garantie, en toute simplicité.",
      reverse: true
    )

    set_meta_tags og: {
      title: "Tout savoir sur l'expérience Nationale 7 pour acheter et vendre.",
      description: "Découvrir l'expérience Nationale 7 pour vendre sa voiture au meilleur prix et acheter sa voiture d'occasion, inspectée et garantie, en toute simplicité."
    }

  end

  def les_prix_nationale_7
    
    prepare_meta_tags(
      title: "Les prix N7, quand vendeurs et acheteurs sont gagnants !",
      description: "Les vendeurs obtiennent 20%\ de plus. Quant aux acheteurs, ils paient 10%\ de moins qu'en concession. Voici comment ça marche chez Nationale 7 !",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Un+meilleur+prix+pour+vendeurs+et+acheteurs+.png",
      reverse: true
    )

    set_meta_tags og: {
      title: "Les prix Nationale 7 : quand vendeurs et acheteurs sont gagnants !",
      description: "Les vendeurs obtiennent 20%\ de plus. Quant aux acheteurs, ils paient 10%\ de moins qu'en concession. Voici comment ça marche chez Nationale 7 !",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Un+meilleur+prix+pour+vendeurs+et+acheteurs+.png"
    }

  end

  def expertise_nationale_7
    
    prepare_meta_tags(
      title: "Expertise 75 points, obligatoire pour nos voitures",
      description: "Une heure pour inspecter votre voiture dans ses moindres détails : carrosserie, intérieur, mécanique, chassis, historique, entretien, test routier.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+expertise+75+points.jpg",
      reverse: true
    )

    set_meta_tags og: {
      title: "Expertise Nationale 7, 75 points : obligatoire pour toutes nos voitures.",
      description: "Une heure pour inspecter votre voiture dans ses moindres détails : carrosserie, intérieur, mécanique, chassis, historique, entretien, test routier.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+expertise+75+points.jpg"
    }

  end

  def a_propos_de_nationale_7
    
    prepare_meta_tags(
      title: "Une équipe en pleine croissance",
      description: "L'occasion l'esprit léger : nous facilitons la transaction de voitures d'occasion entre particuliers, pour que tout le monde y gagne.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+a+propos.jpg",
      reverse: true
    )

    set_meta_tags og: {
      title: "Nationale 7 : une équipe en pleine croissance, des rêves de voitures plein la tête.",
      description: "L'occasion l'esprit léger : nous facilitons la transaction de voitures d'occasion entre particuliers, pour que tout le monde y gagne.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+a+propos.jpg"
    }

  end

  def foire_aux_questions
  end

  def conditions_generales_de_vente
  end

  def mentions_legales
  end

end

