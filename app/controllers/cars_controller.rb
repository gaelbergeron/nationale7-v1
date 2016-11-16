class CarsController < ApplicationController
  
  def acheter_voiture_occasion
    
    prepare_meta_tags(
      title: "Acheter sa voiture d'occasion l'esprit léger",
      description: "Les voitures Nationale 7 sont inspectées 75 points, garanties 6 mois et au meilleur prix. N7 s'occupe gère aussi la paperasse et la sécurisation du paiement.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Acheter+voiture+occasion.jpg",
      reverse: true
    )

    set_meta_tags og: {
      title: "Acheter sa voiture d'occasion l'esprit léger grâce à Nationale 7.",
      description: "Les voitures Nationale 7 sont inspectées 75 points, garanties 6 mois et au meilleur prix. N7 s'occupe gère aussi la paperasse et la sécurisation du paiement.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Acheter+voiture+occasion.jpg"
    }

    @filterrific = initialize_filterrific(
      Car.where(statut: 'Actif'),
      params[:filterrific],
      :select_options => {
        sorted_by: Car.where(statut: 'Actif').options_for_sorted_by,
        with_marque: Car.where(statut: 'Actif').options_for_select_marque,
        with_energie: ['Diesel', 'Essence'], 
        with_prix_n7: [
          ['Moins de 5 000 €', 5000], 
          ['Moins de 10 000 €', 10000], 
          ['Moins de 15 000 €', 15000], 
          ['Moins de 20 000 €', 20000], 
          ['Moins de 25 000 €', 25000], 
          ['Moins de 30 000 €', 30000],  
          ['Moins de 40 000 €', 40000], 
          ['Moins de 50 000 €', 50000], 
        ]
      },
      :persistence_id => false,
    ) or return 
    @cars = @filterrific.find.page(params[:page])
    @profile_photos = Photo.where(car_id: @cars.map(&:id)).where(description: 'Profile')

    respond_to do |format|
      format.html
      format.js
    end

  end

  def vendre_voiture_occasion
    
    prepare_meta_tags(
      title: "Vendre sa voiture et économiser des milliers d'euros",
      description: "Vendez votre voiture avec Nationale 7 et économisez des milliers d'euros par rapport à un concessionnaire. Expertise, garantie, paiement et paperasse : on s'en occupe !",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Vendre+voiture+occasion.jpg",
      reverse: true
    )

    set_meta_tags og: {
      title: "Vendre sa voiture d'occasion et économiser des milliers d'euros grâce à Nationale 7.",
      description: "Vendez votre voiture avec Nationale 7 et économisez des milliers d'euros par rapport à un concessionnaire. Expertise, garantie, paiement et paperasse : on s'en occupe !",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Vendre+voiture+occasion.jpg"
    }

    @evaluation = Evaluation.new
  end

  def show
    @contact = Contact.new
    @car = Car.friendly.find(params[:id])
    @caroptions = CarOption.where(car_id: @car.id)
    @inspector = Inspector.where(id: @car.inspector_id).first
    @options = Option.where(id: @caroptions.map(&:option_id))
    @photos = Photo.where(car_id: @car.id).order(created_at: :asc)
    
    prepare_meta_tags(
      title: "Saisissez cette " + @car.marque.to_s + " " +  @car.modele.to_s + "de " + @car.annee.to_s,
      description: @car.commentaire_general,
      image: @photos.second.picture_url,
      reverse: true
    )

    set_meta_tags og: {
      title: "Saisissez cette " + @car.marque.to_s + " " +  @car.modele.to_s + " de " + @car.annee.to_s + " inspectée et garantie",
      description: @car.commentaire_general,
      image: @photos.second.picture_url
    }

  end



  def acheter_mini_occasion
    
    prepare_meta_tags(
      title: "Acheter sa Mini d'occasion l'esprit léger",
      description: "Les Mini Nationale 7 sont inspectées 75 points, garanties 6 mois et au meilleur prix. N7 s'occupe gère aussi la paperasse et la sécurisation du paiement.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Acheter+voiture+occasion.jpg",
      reverse: true
    )

    set_meta_tags og: {
      title: "Acheter sa Mini d'occasion l'esprit léger grâce à Nationale 7.",
      description: "Les Mini Nationale 7 sont inspectées 75 points, garanties 6 mois et au meilleur prix. N7 s'occupe gère aussi la paperasse et la sécurisation du paiement.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Acheter+voiture+occasion.jpg"
    }

    @filterrific = initialize_filterrific(
      Car.where(statut: 'Actif'),
      params[:filterrific],
      :select_options => {
        sorted_by: Car.where(statut: 'Actif').options_for_sorted_by,
        with_marque: Car.where(statut: 'Actif').options_for_select_marque,
        with_energie: ['Diesel', 'Essence'], 
        with_prix_n7: [
          ['Moins de 5 000 €', 5000], 
          ['Moins de 10 000 €', 10000], 
          ['Moins de 15 000 €', 15000], 
          ['Moins de 20 000 €', 20000], 
          ['Moins de 25 000 €', 25000], 
          ['Moins de 30 000 €', 30000],  
          ['Moins de 40 000 €', 40000], 
          ['Moins de 50 000 €', 50000], 
        ]
      },
      :persistence_id => false,
      default_filter_params: { with_marque: 'Mini'},
    ) or return 
    @cars = @filterrific.find.page(params[:page])
    @profile_photos = Photo.where(car_id: @cars.map(&:id)).where(description: 'Profile')

    respond_to do |format|
      # redirect_to action: :acheter_voiture_occasion
      format.html
      format.js
    end

  end

  def acheter_diesel_occasion
    
    prepare_meta_tags(
      title: "Acheter sa voiture diesel d'occasion l'esprit léger",
      description: "Les voitures Diesel Nationale 7 sont inspectées 75 points, garanties 6 mois et au meilleur prix. N7 s'occupe gère aussi la paperasse et la sécurisation du paiement.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Acheter+voiture+occasion.jpg",
      reverse: true
    )

    set_meta_tags og: {
      title: "Acheter sa voiture diesel d'occasion l'esprit léger",
      description: "Les voitures Diesel Nationale 7 sont inspectées 75 points, garanties 6 mois et au meilleur prix. N7 s'occupe gère aussi la paperasse et la sécurisation du paiement.",
      image: "https://s3-eu-west-1.amazonaws.com/nationale7v1/Website+assets/Nationale+7+-+Acheter+voiture+occasion.jpg"
    }

    @filterrific = initialize_filterrific(
      Car.where(statut: 'Actif'),
      params[:filterrific],
      :select_options => {
        sorted_by: Car.where(statut: 'Actif').options_for_sorted_by,
        with_marque: Car.where(statut: 'Actif').options_for_select_marque,
        with_energie: ['Diesel', 'Essence'], 
        with_prix_n7: [
          ['Moins de 5 000 €', 5000], 
          ['Moins de 10 000 €', 10000], 
          ['Moins de 15 000 €', 15000], 
          ['Moins de 20 000 €', 20000], 
          ['Moins de 25 000 €', 25000], 
          ['Moins de 30 000 €', 30000],  
          ['Moins de 40 000 €', 40000], 
          ['Moins de 50 000 €', 50000], 
        ]
      },
      :persistence_id => false,
      default_filter_params: { with_energie: 'Diesel'},
    ) or return 
    @cars = @filterrific.find.page(params[:page])
    @profile_photos = Photo.where(car_id: @cars.map(&:id)).where(description: 'Profile')

    respond_to do |format|
      format.html
      format.js
    end

  end


end
