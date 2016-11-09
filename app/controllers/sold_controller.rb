class SoldController < ApplicationController

	def index
    @filterrific = initialize_filterrific(
      Car.where(statut: 'Vendu'),
      params[:filterrific],
      :select_options => {
        sorted_by: Car.where(statut: 'Actif').options_for_sorted_by,
        with_marque: Car.where(statut: 'Actif').options_for_select_marque,
        with_energie: ['Diesel', 'Essence']
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

	def show
    @contact = Contact.new
    @car = Car.friendly.find(params[:id])
    @caroptions = CarOption.where(car_id: @car.id)
    @inspector = Inspector.where(id: @car.inspector_id).first
    @options = Option.where(id: @caroptions.map(&:option_id))
    @photos = Photo.where(car_id: @car.id).order(created_at: :asc)
    
    prepare_meta_tags(
      title: @car.marque.to_s + " " +  @car.modele.to_s + @car.annee.to_s + " vendue par Nationale 7 !",
      description: @car.commentaire_general,
      image: @photos.second.picture_url,
      reverse: true
    )

    set_meta_tags og: {
      title: @car.marque.to_s + " " +  @car.modele.to_s + @car.annee.to_s + " vendue par Nationale 7 !",
      description: @car.commentaire_general,
      image: @photos.second.picture_url
    }
	end

end
