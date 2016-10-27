class CarsController < ApplicationController
  
  def acheter_voiture_occasion
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
      title: "Saisissez cette " + @car.marque.to_s + " " +  @car.modele.to_s + @car.annee.to_s,
      description: @car.commentaire_general,
      image: @photos.second.picture_url,
      og: {title: "Saisissez cette " + @car.marque.to_s + " " +  @car.modele.to_s + @car.annee.to_s},
      og: {description: @car.commentaire_general},
    )
    # p "****" * 30
    # p @photos.second.picture_url
    # p "****" * 30
  end

end
